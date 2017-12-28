./main.exe $1 $2 $3 $4 >> graph_file
python vis.py graph_file $5
rm graph_file
eog graph.png
