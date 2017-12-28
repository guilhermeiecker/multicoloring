import sys
from graph_tool.all import *
from matplotlib import *

f = open(sys.argv[1], "r")
a = int(sys.argv[2])
n = int(f.readline())
m = int(f.readline())

g = Graph(directed=True)
pos = g.new_vertex_property("vector<double>")

for node in range(n):
  line = f.readline()
  v = g.add_vertex()
  pos[v] = line.split()

for link in range(m):
  line = f.readline()
  u,v = line.split()
  g.add_edge(g.vertex(u), g.vertex(v))

f.close()

graph_draw(g, pos=pos, output_size=(a, a), 
  vertex_color=[1,1,1,0], vertex_size=20, vertex_text=g.vertex_index, vertex_font_size=10,
  edge_pen_width=4, edge_text=g.edge_index,
  bg_color=[1,1,1,1], output="graph.png")
