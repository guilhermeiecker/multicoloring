#! /usr/bin/tclsh
# vim: autoindent shiftwidth=4 softtabstop=4 tabstop=8 :

set VAL_ASIDE   {10000 9000 8000 7000 6000 5000 4000 3000 2000 1000}
set VAL_NODES   {10 20 30 40 50 60 70 80 90 100}
set VAL_LINKS   {2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 /
		    22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 /
		    42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 /
		    62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 /
		    82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 /
		    102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 /
		    122 123 124 125 126 127 128}
set VAL_FSETS	{1 2 3 4 5 6 7}

set DIR /home/guilherme/multicoloring
set IC 95

switch [lindex $argv 0] {

    "GERAL-NODES" {
	foreach ASIDE $VAL_ASIDE {
	    foreach NODES $VAL_NODES {
		set FILENAME $DIR/data-cleaner/geral-nodes-data/$ASIDE-$NODES.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/geral-nodes-data/$ASIDE-$NODES.txt single-$ASIDE-$NODES.txt 15 $IC
			exec cat single-$ASIDE-$NODES.txt >> data/geral-nodes-$ASIDE.txt
			exec rm single-$ASIDE-$NODES.txt
		}
	    }
	}
    }

    "GERAL-LINKS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach LINKS $VAL_LINKS {
		set FILENAME $DIR/data-cleaner/geral-links-data/$ASIDE-$LINKS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/geral-links-data/$ASIDE-$LINKS.txt single-$ASIDE-$LINKS.txt 15 $IC
			exec cat single-$ASIDE-$LINKS.txt >> data/geral-links-$ASIDE.txt
			exec rm single-$ASIDE-$LINKS.txt
		}
	    }
	}
    }

    "GERAL-FSETS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach FSETS $VAL_FSETS {
		set FILENAME $DIR/data-cleaner/geral-fsets-data/$ASIDE-$FSETS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/geral-fsets-data/$ASIDE-$FSETS.txt single-$ASIDE-$FSETS.txt 15 $IC
			exec cat single-$ASIDE-$FSETS.txt >> data/geral-fsets-$ASIDE.txt
			exec rm single-$ASIDE-$FSETS.txt
		}
	    }
	}
    }

    "MULTI-NODES" {
	foreach ASIDE $VAL_ASIDE {
	    foreach NODES $VAL_NODES {
		set FILENAME $DIR/data-cleaner/multi-nodes-data/$ASIDE-$NODES.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/multi-nodes-data/$ASIDE-$NODES.txt single-$ASIDE-$NODES.txt 15 $IC
			exec cat single-$ASIDE-$NODES.txt >> data/multi-nodes-$ASIDE.txt
			exec rm single-$ASIDE-$NODES.txt
		}
	    }
	}
    }

    "MULTI-LINKS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach LINKS $VAL_LINKS {
		set FILENAME $DIR/data-cleaner/multi-links-data/$ASIDE-$LINKS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/multi-links-data/$ASIDE-$LINKS.txt single-$ASIDE-$LINKS.txt 15 $IC
			exec cat single-$ASIDE-$LINKS.txt >> data/multi-links-$ASIDE.txt
			exec rm single-$ASIDE-$LINKS.txt
		}
	    }
	}
    }

    "MULTI-FSETS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach FSETS $VAL_FSETS {
		set FILENAME $DIR/data-cleaner/multi-fsets-data/$ASIDE-$FSETS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/multi-fsets-data/$ASIDE-$FSETS.txt single-$ASIDE-$FSETS.txt 15 $IC
			exec cat single-$ASIDE-$FSETS.txt >> data/multi-fsets-$ASIDE.txt
			exec rm single-$ASIDE-$FSETS.txt
		}
	    }
	}
    }

    "FRACT-NODES" {
	foreach ASIDE $VAL_ASIDE {
	    foreach NODES $VAL_NODES {
		set FILENAME $DIR/data-cleaner/fract-nodes-data/$ASIDE-$NODES.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/fract-nodes-data/$ASIDE-$NODES.txt single-$ASIDE-$NODES.txt 15 $IC
			exec cat single-$ASIDE-$NODES.txt >> data/fract-nodes-$ASIDE.txt
			exec rm single-$ASIDE-$NODES.txt
		}
	    }
	}
    }

    "FRACT-LINKS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach LINKS $VAL_LINKS {
		set FILENAME $DIR/data-cleaner/fract-links-data/$ASIDE-$LINKS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/fract-links-data/$ASIDE-$LINKS.txt single-$ASIDE-$LINKS.txt 15 $IC
			exec cat single-$ASIDE-$LINKS.txt >> data/fract-links-$ASIDE.txt
			exec rm single-$ASIDE-$LINKS.txt
		}
	    }
	}
    }

    "FRACT-FSETS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach FSETS $VAL_FSETS {
		set FILENAME $DIR/data-cleaner/fract-fsets-data/$ASIDE-$FSETS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/fract-fsets-data/$ASIDE-$FSETS.txt single-$ASIDE-$FSETS.txt 15 $IC
			exec cat single-$ASIDE-$FSETS.txt >> data/fract-fsets-$ASIDE.txt
			exec rm single-$ASIDE-$FSETS.txt
		}
	    }
	}
    }

    "NOTFRACT-NODES" {
	foreach ASIDE $VAL_ASIDE {
	    foreach NODES $VAL_NODES {
		set FILENAME $DIR/data-cleaner/notfract-nodes-data/$ASIDE-$NODES.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notfract-nodes-data/$ASIDE-$NODES.txt single-$ASIDE-$NODES.txt 15 $IC
			exec cat single-$ASIDE-$NODES.txt >> data/notfract-nodes-$ASIDE.txt
			exec rm single-$ASIDE-$NODES.txt
		}
	    }
	}
    }

    "NOTFRACT-LINKS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach LINKS $VAL_LINKS {
		set FILENAME $DIR/data-cleaner/notfract-links-data/$ASIDE-$LINKS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notfract-links-data/$ASIDE-$LINKS.txt single-$ASIDE-$LINKS.txt 15 $IC
			exec cat single-$ASIDE-$LINKS.txt >> data/notfract-links-$ASIDE.txt
			exec rm single-$ASIDE-$LINKS.txt
		}
	    }
	}
    }

    "NOTFRACT-FSETS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach FSETS $VAL_FSETS {
		set FILENAME $DIR/data-cleaner/notfract-fsets-data/$ASIDE-$FSETS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notfract-fsets-data/$ASIDE-$FSETS.txt single-$ASIDE-$FSETS.txt 15 $IC
			exec cat single-$ASIDE-$FSETS.txt >> data/notfract-fsets-$ASIDE.txt
			exec rm single-$ASIDE-$FSETS.txt
		}
	    }
	}
    }

    "NOTMULTI-NODES" {
	foreach ASIDE $VAL_ASIDE {
	    foreach NODES $VAL_NODES {
		set FILENAME $DIR/data-cleaner/notmulti-nodes-data/$ASIDE-$NODES.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notmulti-nodes-data/$ASIDE-$NODES.txt single-$ASIDE-$NODES.txt 15 $IC
			exec cat single-$ASIDE-$NODES.txt >> data/notmulti-nodes-$ASIDE.txt
			exec rm single-$ASIDE-$NODES.txt
		}
	    }
	}
    }

    "NOTMULTI-LINKS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach LINKS $VAL_LINKS {
		set FILENAME $DIR/data-cleaner/notmulti-links-data/$ASIDE-$LINKS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notmulti-links-data/$ASIDE-$LINKS.txt single-$ASIDE-$LINKS.txt 15 $IC
			exec cat single-$ASIDE-$LINKS.txt >> data/notmulti-links-$ASIDE.txt
			exec rm single-$ASIDE-$LINKS.txt
		}
	    }
	}
    }

    "NOTMULTI-FSETS" {
	foreach ASIDE $VAL_ASIDE {
	    foreach FSETS $VAL_FSETS {
		set FILENAME $DIR/data-cleaner/notmulti-fsets-data/$ASIDE-$FSETS.txt
		if { [file exists $FILENAME] == 1} {
			exec ./ci.m $DIR/data-cleaner/notmulti-fsets-data/$ASIDE-$FSETS.txt single-$ASIDE-$FSETS.txt 15 $IC
			exec cat single-$ASIDE-$FSETS.txt >> data/notmulti-fsets-$ASIDE.txt
			exec rm single-$ASIDE-$FSETS.txt
		}
	    }
	}
    }
}
