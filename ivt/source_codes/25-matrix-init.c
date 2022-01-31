/* Usual declaration */
int abc[2][4] = {
    {1, 2, 3, 4},
    {5, 6, 7, 8}
};
/* Valid declaration*/
int abc[2][2] = {1, 2, 3, 4, 5, 6, 7, 8};
/* Valid declaration*/
int abc[][2] = {1, 2, 3, 4, 5, 6, 7, 8};
/* Invalid declaration – you must specify second dimension*/
int abc[][] = {1, 2, 3, 4, 5, 6, 7, 8};
/* Invalid because of the same reason  mentioned above*/
int abc[2][] = {1, 2, 3, 4, 5, 6, 7, 8};
