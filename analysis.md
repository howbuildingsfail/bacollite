


#Deducing alignments

The following steps are taken:

1. Assign all modal hydroxylations with seqences in HCS & GPM as hits
1. Remove weak matches for the hits in the last step
1. If no alternatives exist, asign all gpm matches which are present in the human colllagen sequence as hits
1. Assign non-modal hydroxylations as hits if practicable
1. Remove weak matches for the hits in the last step



##Step 1: mcs/gcs alignments.

These are the 'bread and butter' alignments, and have two conditions for acceptance

- must appear in both mcs and gcs at the same level of deamidation and hydroxylation
- the level of hydroxylation must be the most probable

We might also consider the frequency of occurence in gpm - for now, we are leaving that


##Step 2: 

The next phase is to consider the non-modal hydroxylation alignments. Strategy for each is:

1. get the distribution of hydroxylation probabilities for this sequence
2. See what energies are present for each of these
3. If the energies tally with the distributions (order only, not relative values)



##Remaining steps:

### GPM-only seqences

1509 - 

- assign alignments within certain lag values to "orphan" seuquences from gpm? 

### Bad Hyd Distrib

1509 - T only - 




#Issues:

Went through the hand-classified data for sample C1 - did each step in turn, tried
to work out where the issues were. 

##issue1 - strange hydroxylation ratios. 

###example

sequence `GLHGEFGLPGPAGPR` has the following for mcs: 

```
716 GLHGEFGLPGPAGPR    0     0 1461.753 0.032736
717 GLHGEFGLPGPAGPR    1     0 1477.753 0.259136
718 GLHGEFGLPGPAGPR    2     0 1493.753 0.456776
719 GLHGEFGLPGPAGPR    3     0 1509.753 0.228096
720 GLHGEFGLPGPAGPR    4     0 1525.753 0.023256
```
and for gpm: 

```
                seq nhyd nglut    mass1 prob col
537 GLHGEFGLPGPAGPR    1     0 1477.753    1   2
538 GLHGEFGLPGPAGPR    2     0 1493.753    1   2
```

The analysis of sample C1 showed matchs at 1477.753 and 1493.753 respectively.
Although these are the two most common hyd'y levels, the intensity in C1 is *reversed*.
mcs also aligns with 3 hydroxylations - so levels 3 & 1 are *higher* than level 2. 

What could be the cause of this??
One possibility is that hydroxylation of particular sites is *NOT independently distributed*.
This would result in a multimodal distribution, rather than the binomial thing that we're currently 
using. 


#TODO

A list of suggestions ....

##Improving the *deduce_peaks* figure

- bottom row as final analysis with 'hits' 'rejects' 'unclassified' rows. 
- Have an ion-count match score
- Print a text file with the hits, rejects and unclassifieds so we can go through the figs

















