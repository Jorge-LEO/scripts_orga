#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{
	int n, m;
    float f, f1;

    scanf("%d %d %f %f", &n, &m, &f, &f1);
    printf("%d %d\n%.1f %.1f", n+m, n-m, f+f1, f-f1);
    
    return 0;
}
