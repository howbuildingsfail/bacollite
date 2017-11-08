

#ifndef RISO_H_
#define RISO_H_

/* We need these definitions in R_iso */
#define NUMELEMENTS 5
#define NUMLETTERS 26
#define NUMISOTOPES 5

void R_iso_seq(const char * pseq,  double *resultmass, double *resultprob, int *failed);

void R_iso_atom(int nC, int nH, int  nN, int  nO, int  nS, double *resultmass, double *resultprob, int *failed, int check=0);


void R_iso_atom_p(int * peptides, double *resultmass, double *resultprob, int *failed, int check=0);

void atomcount_from_peptide(const char * pseq, int * numatoms);


#endif /* RISO_H_ */
