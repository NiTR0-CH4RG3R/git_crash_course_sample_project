#include <cstdio>
#include "external_function.hpp"
#include "feature_01.hpp"

int main() {
    printf( "Hello, World!\n" );
    printf( "Did something changing!\n" );
    printf( "Added another line!\n" );

    external_function();
    external_function_2();

    feature_01();

    getchar();
    return 0;
}