#include <iostream>
#include "LinkedList.h"
using namespace std;

int main()
{
    LinkedList* myLinkedList = new LinkedList(4);
    
    myLinkedList->getHead();
    myLinkedList->getTail();
    myLinkedList->getLength();   
    cout << "\nLinked List:\n";
    myLinkedList->printList();
    myLinkedList->append(10);
    cout << "\nLinked List:\n";
    myLinkedList->printList();
    myLinkedList->deleteLast();
    cout << "\nLinked List:\n";
    myLinkedList->printList();
    myLinkedList->getLength();

    myLinkedList->deleteLast();
    cout << "\nLinked Lists:\n";
    myLinkedList->printList();
    myLinkedList->getLength();
    
    myLinkedList->prepend(17);
    cout << "\nLinked Lists:\n";
    myLinkedList->printList();
    myLinkedList->getLength();
    
    cout << "\nFinished" << endl;
    return 0;
}
