/*
** Network class modeling the entire network with nodes and links
** Author: Guilherme Iecker Ricardo
** Institute: Systems Engineering and Computer Science Program - COPPE/UFRJ
*/


#pragma once

#include <stdint.h>	// uint64_t
#include <iostream>	// cout
#include <fstream>	//ifstream
#include <vector>		// vector
#include <math.h>		// pow, log10
#include <string>

#include "Link.h"
#include "Node.h"

using namespace std;

typedef unsigned __int128 uint128_t;

class Network {
private:
	// network parameters
	uint64_t n;
	double aside, tpower_mW, alpha, beta_dB;

	// internal variables - TODO: could also become parameters in future
	double bandwidth, d0, l0_dB;

	// calculated variables
	uint64_t m;
	double beta_mW, max_range, tpower_dBm, noise_mW, noise_dBm;

	// basic data strutures
	vector<Node> nodes;
	vector<Link> links;

public:
	// constructors
	Network(uint64_t, double, double, double, double);
	Network(string);

	// network parameters getters
	uint64_t get_n();
	double get_aside();
	double get_tpower_mW();
	double get_alpha();
	double get_beta_dB();

	// internal variables getters
	double get_bandwidth();
	double get_d0();
	double get_l0_dB();

	// calculated variables getters
	double get_beta_mW();
	double get_max_range();
	double get_tpower_dBm();
	double get_noise_mW();
	double get_noise_dBm();
	uint64_t get_m();
	
	// basic data structures getters
	vector<Node> get_nodes();
	vector<Link> get_links();

	// network parameters setters
	void set_n(uint64_t);
	void set_aside(double);
	void set_tpower_mW(double);
	void set_alpha(double);
	void set_beta_dB(double);

	// internal variables setters
	void set_bandwidth(double);
	void set_d0(double);
	void set_l0_dB(double);

	// calculated variables setters
	void set_beta_mW();
	void set_max_range();
	void set_tpower_dBm();
	void set_noise_mW();
	void set_noise_dBm();
	void set_m(uint64_t);

	// basic structures setters - default and randomly generated
	void set_nodes(vector<Node>);
	void set_links(vector<Link>);
	void set_nodes();
	void set_links();

	// utility methods
	Link* get_link(uint128_t);

	// visualization methods
	void print_links();
	void print_nodes();
	void printNetwork();
};

Network::Network(uint64_t _n = 100, double _a = 3000.0, double _p = 300.0, double _alpha = 4.0, double _beta = 25.0) : 
	n(_n), aside(_a), tpower_mW(_p), alpha(_alpha), beta_dB(_beta) {
		// setting internal variables with default values
		set_bandwidth(20e06);
		set_d0(1.0);
		set_l0_dB(0.0);

		// setting calculated variables - must follow this order
		set_noise_mW();
		set_noise_dBm();
		set_tpower_dBm();
		set_beta_mW();
		set_max_range();

		// setting basic data structure
		set_nodes();
		set_links();
}

Network::Network(string _f) {
	uint64_t coin, u, v;
	double dist, pr;

	// setting internal variables with default values
	set_bandwidth(20e06);
	set_d0(1.0);
	set_l0_dB(0.0);

	// setting calculated variables - must follow this order
	set_noise_mW();
	set_noise_dBm();
	set_tpower_dBm();
	set_beta_mW();
	set_max_range();

	ifstream file(_f);

	file >> n;
	file >> m;

	set_nodes();
	for(uint64_t i = 0; i < m; i++) {
		file >> u >> v;
		dist = nodes[u].distance(nodes[v]);
		pr = (dist > d0) ? pow(10.0, ((tpower_dBm - l0_dB - 10*alpha*log10(dist / d0))/10.0)) : pow(10.0, ((tpower_dBm - l0_dB) / 10.0));
		coin = random();
		if (coin % 2) links.push_back(Link(&nodes[u], &nodes[v], i, dist, pr));
		else          links.push_back(Link(&nodes[v], &nodes[u], i, dist, pr));
	}
	
}


// network parameters getters
uint64_t Network::get_n() {
	return n;
}

double Network::get_aside() {
	return aside;
}

double Network::get_tpower_mW() {
	return tpower_mW;
}

double Network::get_alpha() { 
	return alpha;
}

double Network::get_beta_dB() {
	return beta_dB;
}

// internal variables getters
double Network::get_bandwidth() {
	return bandwidth;
}

double Network::get_d0() {
	return d0;
}

double Network::get_l0_dB() {
	return l0_dB;
}

// calculated variables getters
double Network::get_beta_mW() {
	return beta_mW;
}

double Network::get_max_range() {
	return max_range;
}

double Network::get_tpower_dBm() {
	return tpower_dBm;
}

double Network::get_noise_mW() {
	return noise_mW;
}

double Network::get_noise_dBm() {
	return noise_dBm;
}

uint64_t Network::get_m() {
	return m;
}

// basic data structures getters
vector<Node> Network::get_nodes() {
	return nodes;
}

vector<Link> Network::get_links() {
	return links;
}

// network parameters setters
void Network::set_n(uint64_t _n) {
	n = _n;
}

void Network::set_aside(double _aside) {
	aside = _aside;
}

void Network::set_tpower_mW(double _tpower_mW) {
	tpower_mW = _tpower_mW;
}

void Network::set_alpha(double _alpha) {
	alpha = _alpha;
}

void Network::set_beta_dB(double _beta_dB) {
	beta_dB = _beta_dB;
}

// internal variables setters
void Network::set_bandwidth(double _bandwidth) {
	bandwidth = _bandwidth;
}

void Network::set_d0(double _d0) {
	d0 = _d0;
}

void Network::set_l0_dB(double _l0_dB) {
	l0_dB = _l0_dB;
}

// calculated variables setters
void Network::set_beta_mW() {
	beta_mW = pow(10, beta_dB / 10.0);	
}

void Network::set_max_range() {
	max_range = d0*pow(10, (tpower_dBm - noise_dBm - beta_dB - l0_dB) / (10 * alpha));
}

void Network::set_tpower_dBm() {
	tpower_dBm = 10 * log10(tpower_mW);
}

void Network::set_noise_mW() {
	noise_mW = 1380e-23 * 290 * bandwidth;
}

void Network::set_noise_dBm() {
	noise_dBm = 10 * log10(noise_mW);
}
void Network::set_m(uint64_t _m) {
	m = _m;
}

// basic structures setters - default and randomly generated
void Network::set_nodes(vector<Node> _nodes) {
	nodes = _nodes;
}

void Network::set_links(vector<Link> _links) {
	links = _links;
}

void Network::set_nodes() {
	Node* node;
	for (uint64_t i = 0; i < n; i++)
	{
		node = new Node(i, aside);
		nodes.push_back(*node);
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


// utility methods
Link* Network::get_link(uint128_t idx) { 
	return &(links[idx]); 
}

// visualization methods

void Network::print_links() {
	for (vector<Link>::iterator i = links.begin(); i != links.end(); ++i) cout << (*i).get_sender()->get_id() << "\t" << (*i).get_recver()->get_id() << endl;
}

void Network::print_nodes() {
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i) cout << i->get_id() << endl;
}

void Network::printNetwork() {
	cout << n << endl;
	cout << m << endl;
	print_nodes();
	print_links();
}


