#include <iostream>

class Node;

class Stack
{
public:
    Stack(int value);
    void printStack();
    void getTop();
    void getHeight();
    void push(int value);
    int pop();
private:
    Node* top;
    int height;
};