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
	uint64_t num_nodes, delta;
	double area_side;
	double tpower;

	vector<Node> nodes;
	vector<Link> links;

public:
	const double bandwidth = 20e06;
	const double noise_mW = 1380e-23 * 290 * bandwidth;
	const double noise_dBm = 10 * log10(noise_mW);
	const double d0 = 1.0;
	const double l0_dB = 0.0;
	const double alpha = 4.0;
	const double beta_dB = 25.0;
	const double beta_mW = pow(10, beta_dB / 10.0);
	const double tpower_dBm = 10 * log10(tpower);
	const double max_range = d0*pow(10, (tpower_dBm - noise_dBm - beta_dB - l0_dB) / (10 * alpha));

	Network(uint64_t _n = 100, double _a = 3000.0, double _p = 300.0) : num_nodes(_n), area_side(_a), tpower(_p)
	{
		delta = 0;
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

	uint64_t get_delta();
};

#include "Network.h"

vector<Node> Network::get_nodes()
{
	return nodes;
}

vector<Link> Network::get_links()
{
	return links;
}

void Network::set_nodes()
{
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
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i) {
		for (vector<Node>::iterator j = i + 1; j != nodes.end(); ++j) {
			dist = i->distance(*j);
			if (dist <= max_range) {
				i->inc_degree();
				j->inc_degree();
				if (dist > d0) pr = pow(10.0, ((tpower_dBm - l0_dB - 10*alpha*log10(dist / d0))/10.0));
				else pr = pow(10.0, ((tpower_dBm - l0_dB) / 10.0));
				links.push_back(Link(&(*i), &(*j), index++, dist, pr));
			}
		}
	}
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i) {
		delta = (i->get_degree() > delta) ? i->get_degree() : delta;
		i->set_degree(0);
	}
}

Link* Network::get_link(uint128_t idx)
{
	return &(links[idx]);
}

void Network::print_links()
{
	cout << "Printing links..." << endl;
	for (vector<Link>::iterator i = links.begin(); i != links.end(); ++i)
		cout << "Link id=" << i->get_id() << " sender(id=" << (*i).get_sender()->get_id() << ", deg=" << (*i).get_sender()->get_degree() << ") receiver(id=" << (*i).get_recver()->get_id() << ", deg=" << (*i).get_recver()->get_degree() << ")" << endl;
}

void Network::print_nodes()
{
	cout << "Printing nodes..." << endl;
	for (vector<Node>::iterator i = nodes.begin(); i != nodes.end(); ++i)
                cout << "Node id=" << i->get_id() << " (" << i->get_x() << "," << i->get_y() << ")" << endl;
}

uint64_t Network::get_delta() { return delta; }
