#include <stdio.h>
#include <stdlib.h>

extern void prime(int *a, int n, int *b);

int main() {
    int n;
    int *a;
    int *b;

    // Read the size of the array
    scanf("%d", &n);

    // Allocate memory for the input and output arrays
    a = (int *)malloc(n * sizeof(int));
    b = (int *)malloc(n * sizeof(int));

    // Check if memory allocation was successful
    if (a == NULL || b == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    // Read the elements of the input array
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    // Call the prime function
    prime(a, n, b);

    // Print the elements of the output array
    for (int i = 0; i < n; i++) {
      if(b[i] == 0){
        break;
      }
        printf("%d ", b[i]);
    }

    printf("\n");

    // Free the allocated memory
    free(a);
    free(b);

    return 0;
}

