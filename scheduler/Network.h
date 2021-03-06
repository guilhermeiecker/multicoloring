/*
** Network class modeling the entire network with nodes and links
** Author: Guilherme Iecker Ricardo
** Institute: Systems Engineering and Computer Science Program - COPPE/UFRJ
*/


#pragma once

#include <stdint.h>	// uint64_t
#include <iostream>	// cout
#include <vector>		// vector
#include <math.h>		// pow, log10

#include "Link.h"
#include "Node.h"

using namespace std;

typedef unsigned __int128 uint128_t;

class Network {
private:
	uint64_t num_nodes;
	double area_side, tpower, alpha, max_range, tpower_dBm;

	vector<Node> nodes;
	vector<Link> links;

public:
	const double bandwidth = 20e06;
	const double noise_mW = 1380e-23 * 290 * bandwidth;
	const double noise_dBm = 10 * log10(noise_mW);
	const double d0 = 1.0;
	const double l0_dB = 0.0;
	const double beta_dB = 25.0;
	const double beta_mW = pow(10, beta_dB / 10.0);

	Network(uint64_t _n = 100, double _a = 3000.0, double _p = 300.0, double _alpha = 4.0) : num_nodes(_n), area_side(_a), tpower(_p), alpha(_alpha) {
		tpower_dBm = 10 * log10(tpower);	
		max_range = d0*pow(10, (tpower_dBm - noise_dBm - beta_dB - l0_dB) / (10 * alpha));
		set_nodes();
		set_links();
	}

	vector<Node> get_nodes();
	vector<Link> get_links();

	void set_nodes();
	void set_links();

	Link* get_link(uint128_t);
	void print_links();
	void print_nodes();
	void printNetwork();

	uint64_t get_delta();
	double get_alpha();
	double get_tpower();
};

vector<Node> Network::get_nodes() { return nodes; }

vector<Link> Network::get_links() { return links; }

void Network::set_nodes() {
	Node* n;
	for (uint64_t i = 0; i < num_nodes; i++)
	{
		n = new Node(i, area_side);
		nodes.push_back(*n);
	}
}

void Network::set_links() {
	double pr, dist;
	uint64_t index = 0;
	int coin;
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i) {
		for (vector<Node>::iterator j = i + 1; j != nodes.end(); ++j) {
			dist = i->distance(*j);
			if (dist <= max_range) {
				pr = (dist > d0) ? pow(10.0, ((tpower_dBm - l0_dB - 10*alpha*log10(dist / d0))/10.0)) : pow(10.0, ((tpower_dBm - l0_dB) / 10.0));
				coin = random();
				switch (coin % 3) {
					case 0:	
						links.push_back(Link(&(*i), &(*j), index++, dist, pr));
						break;
					case 1:	
						links.push_back(Link(&(*j), &(*i), index++, dist, pr));
						break;
					case 2:
						links.push_back(Link(&(*i), &(*j), index++, dist, pr));
						links.push_back(Link(&(*j), &(*i), index++, dist, pr));
						break;
				}
			}
		}
	}
}

Link* Network::get_link(uint128_t idx) { return &(links[idx]); }

void Network::print_links() {
	for (vector<Link>::iterator i = links.begin(); i != links.end(); ++i) cout << (*i).get_sender()->get_id() << "\t" << (*i).get_recver()->get_id() << endl;
}

void Network::print_nodes() {
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i) cout << i->get_id() << endl;
}

double Network::get_alpha() { return alpha; }
double Network::get_tpower() { return tpower_dBm; }

void Network::printNetwork() {
	cout << nodes.size() << endl;
	cout << links.size() << endl;
	print_nodes();
	print_links();
}
