#include <cstdio>

extern void external_function();

int main() {
    printf( "Hello, World!\n" );
    printf( "Did something changing!\n" );
    printf( "Added another line!\n" );

    external_function();

    getchar();
    return 0;
}