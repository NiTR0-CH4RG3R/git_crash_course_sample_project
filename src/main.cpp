#include <cstdio>

extern void external_function();
extern void external_function_2();

int main() {
    printf( "Hello, World!\n" );
    printf( "Did something changing!\n" );
    printf( "Added another line!\n" );

    external_function();
    external_function_2();
    getchar();
    return 0;
}