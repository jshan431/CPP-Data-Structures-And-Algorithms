#include <iostream>

class Node;

class Queue
{
public:
    Queue(int value);
    void printQueue();
    void getFirst();
    void getLast();
    void getLength();
    void enqueue(int value);
    int dequeue();
private:
    Node* first;
    Node* last;
    int length;
};