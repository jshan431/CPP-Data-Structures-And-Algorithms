#include <iostream>
#include "BigON.h"
#include "BigON2.h"
#include "BigO1.h"
#include "BigOMultiInput.h"
using namespace std;

void printItemsON(int n);
void printItemsON2(int n);
int addItems(int n);
int printItemsONMIPlus(int n, int m);
int printItemsONMITimes(int n, int m);
class BigOMultiInput;

int main()
{
//    cout << "Default Template" << endl;
//    printItemsON(6);
//    printItemsON2(3);
//    cout << addItems(6) << endl;
    printItemsONMIPlus(5, 4);
    printItemsONMITimes(2, 2);
    return 0;
}

