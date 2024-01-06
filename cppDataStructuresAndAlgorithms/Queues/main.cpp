#include <iostream>
#include "Queue.h"
using namespace std;

int main()
{
    Queue* myQueue = new Queue(31);
    myQueue->enqueue(2);
    myQueue->dequeue();
    myQueue->printQueue();
    return 0;
}
