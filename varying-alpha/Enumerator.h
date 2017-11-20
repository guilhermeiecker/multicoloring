/*
** Enumerator class implementing an algorithm that enumerates all feasible sets of links
** Author: Guilherme Iecker Ricardo
** Institute: Systems Engineering and Computer Science Program - COPPE/UFRJ
*/

#pragma once

#include <iostream>	// cout, endl
#include <stdint.h>	// uint64_t
#include <vector>	// vector

#include "Node.h"
#include "Link.h"
#include "Network.h"

#include "gurobi_c++.h"

#define MAX 2331756040 // a=8000,n=117,r=390,m=40

typedef unsigned __int128 uint128_t;

using namespace std;

uint64_t log2(uint128_t);
uint128_t pow2(uint64_t);

class Enumerator {
private:
	uint64_t n, m, f;
	vector<Link*> cset;
	Network* network;
	GRBModel* model;
	GRBLinExpr* constraints;

	void add_link(uint64_t);
	double calculate_interference(Node*, Node*);
	bool is_feasible();
	bool primary_test();
	bool secondary_test();
	double calculate_sinr(Link*);
	void del_link(uint64_t);
	void find_fset(uint128_t);

public:
	Enumerator(Network*, GRBModel*, GRBLinExpr*);
	void find_fset_entry();
	uint64_t get_fset();
};

Enumerator::Enumerator(Network* _network, GRBModel* _model, GRBLinExpr* _constraints):
	network(_network), model(_model), constraints(_constraints) {
	n = network->get_nodes().size();
	m = network->get_links().size();
	f = 0;
}

void Enumerator::find_fset_entry() {
	uint128_t base;
	for (uint64_t i = 0; i < m; i++) {
		base = pow2(i);
		find_fset(base);
	}
}

void Enumerator::find_fset(uint128_t x) {
	uint64_t limit = log2(x);
	add_link(limit);
	if (is_feasible()) {
		f++;
		GRBVar tmp = model->addVar(0.0, 1.0, 1.0, GRB_CONTINUOUS);
		for (vector<Link*>::iterator i = cset.begin(); i != cset.end(); ++i) constraints[(*i)->get_id()] += tmp;
		for (uint64_t i = 0; i < limit; i++) find_fset(x + pow2(i));
	}
	del_link(limit);
}

void Enumerator::add_link(uint64_t index) {
	if (!cset.empty()) {
		double interfAB, interfBA;
		for (vector<Link*>::iterator i = cset.begin(); i != cset.end(); ++i)
		{
			interfAB = calculate_interference((*i)->get_sender(), network->get_link(index)->get_recver());
			interfBA = calculate_interference(network->get_link(index)->get_sender(), (*i)->get_recver());

			network->get_link(index)->add_interf(interfAB);
			(*i)->add_interf(interfBA);
		}
	}
	network->get_link(index)->get_sender()->inc_degree();
	network->get_link(index)->get_recver()->inc_degree();
	cset.push_back(network->get_link(index));
}

double Enumerator::calculate_interference(Node* a, Node* b) {
	double dist = a->distance(*b);
	if (dist > network->d0)
		return pow(10.0, ((network->get_tpower() - network->l0_dB - 10 * network->get_alpha()*log10(dist / network->d0)) / 10.0));
	else
    		return pow(10.0, network->get_tpower() - network->l0_dB / 10.0);
}

bool Enumerator::is_feasible() {
	if(cset.size() < 2)
		return true;
	if(cset.size() > n/2)
		return false;
	if(primary_test()&&secondary_test())
		return true;
	return false;
}

bool Enumerator::primary_test() {
	for (vector<Link*>::iterator i = cset.begin(); i != cset.end(); ++i)
	{
		if(((*i)->get_sender()->get_degree() > 1)||((*i)->get_recver()->get_degree() > 1))
    			return false;
	}
	return true;
}

bool Enumerator::secondary_test() {
	double sinr;
	for(vector<Link*>::iterator i = cset.begin(); i != cset.end(); ++i)
	{
		sinr = calculate_sinr(*i);
		if(sinr < network->beta_mW)
			return false;
	}
	return true;
}

double Enumerator::calculate_sinr(Link* l) {
    return l->get_rpower() / (network->noise_mW + l->clc_interf());
}

void Enumerator::del_link(uint64_t index) {
	cset.pop_back();
	network->get_link(index)->get_sender()->dec_degree();
	network->get_link(index)->get_recver()->dec_degree();
	network->get_link(index)->clr_interf();
	for (vector<Link*>::iterator i = cset.begin(); i != cset.end(); ++i)
		    (*i)->del_interf();
}

uint64_t Enumerator::get_fset() { return f; }

uint64_t log2(uint128_t x) {
        uint64_t count = 0;
        while((x & 1) == 0) {
                x = x >> 1;
                count++;
        }
        return count;
}

uint128_t pow2(uint64_t x) {
        uint128_t res = 1;
        res = res << x;
        return res;
}
