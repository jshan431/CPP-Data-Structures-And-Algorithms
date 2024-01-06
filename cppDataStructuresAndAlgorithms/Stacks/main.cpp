#include <iostream>
#include "Stack.h"
using namespace std;

int main()
{
    Stack *myStack = new Stack(15);
    myStack->printStack();
    myStack->push(35);
    myStack->printStack();
    cout << myStack->pop() << endl;
    return 0;
}
