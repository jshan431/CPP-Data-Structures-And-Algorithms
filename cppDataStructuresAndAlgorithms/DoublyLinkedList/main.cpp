#include <iostream>
#include "DoublyLinkedList.h"

using namespace std;

int main()
{
    DoublyLinkedList* myDoublyLinkedList = new DoublyLinkedList(7);
    myDoublyLinkedList->append(17);
    myDoublyLinkedList->printList();
    std::cout << "\n" << std::endl;
    myDoublyLinkedList->prepend(17);
    myDoublyLinkedList->prepend(27);
    myDoublyLinkedList->printList();
    return 0;
}
