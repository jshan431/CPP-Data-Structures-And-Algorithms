#include <iostream>

class Node;

class LinkedList 
{
public:
    LinkedList(int value);
    ~LinkedList();
    void printList();
    void getHead();
    void getTail();
    void getLength();
    void append(int value);
    void deleteLast();
    void prepend(int value);
    void deleteFirst();
    Node* get(int index);
    bool set(int index, int value);
    bool insert(int index, int value);
    void deleteNode(int index);
    void reverse();
private:
    Node* head;
    Node* tail;
    int length;
};