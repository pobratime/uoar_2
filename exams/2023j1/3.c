#include <stdio.h>
#include <stdlib.h>

extern int power(int n, int m);
extern int find_power(int n, int k, int *ms, int nm);

int main() {
    int n, m;

    // Reading n and m for the power function
    printf("Enter n and m for power function:\n");
    if (scanf("%d %d", &n, &m) != 2) {
        fprintf(stderr, "Invalid input for n and m\n");
        return 1;
    }
    printf("n = %d, m = %d\n", n, m);

    // Calling power function and displaying result
    printf("Result of power(%d, %d): %d\n", n, m, power(n, m));

    // Reading new values of n and k for the find_power function
    int k, nm;
    printf("Enter new n and k for find_power function:\n");
    if (scanf("%d %d", &n, &k) != 2) {
        fprintf(stderr, "Invalid input for n and k\n");
        return 1;
    }
    printf("Enter number of elements in ms:\n");
    if (scanf("%d", &nm) != 1) {
        fprintf(stderr, "Invalid input for nm\n");
        return 1;
    }

    // Allocating memory for ms array
    int *ms = (int *)malloc(nm * sizeof(int));
    if (!ms) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    // Reading elements into ms array
    printf("Enter elements of ms:\n");
    for (int i = 0; i < nm; i++) {
        if (scanf("%d", &ms[i]) != 1) {
            fprintf(stderr, "Invalid input for ms[%d]\n", i);
            free(ms);
            return 1;
        }
    }

    // Debugging prints to verify inputs
    printf("n = %d, k = %d, nm = %d\n", n, k, nm);
    for (int i = 0; i < nm; i++) {
        printf("ms[%d] = %d\n", i, ms[i]);
    }

    // Calling find_power function and displaying result
    printf("Result of find_power(%d, %d, ms, %d): %d\n", n, k, nm, find_power(n, k, ms, nm));

    // Freeing allocated memory
    free(ms);
    return 0;
}

