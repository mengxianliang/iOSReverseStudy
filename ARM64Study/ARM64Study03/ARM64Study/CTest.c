//
//  CTest.c
//  ARM64Study
//
//  Created by mxl on 2022/5/31.
//

#include "CTest.h"

void test1() {
    int a = 2;
    int b = 3;
}

void test2() {
    int a = 4;
    int b = 5;
    test1();
}
