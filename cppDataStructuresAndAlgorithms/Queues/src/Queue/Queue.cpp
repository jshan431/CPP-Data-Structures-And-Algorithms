#include "Queue.h"
#include "Node.h"

Queue::Queue(int value){
    Node* newNode = new Node(value);
    first = newNode;
    last = newNode;
    length = 1;
}

void Queue::printQueue(){
    Node* temp = first;
    while(temp != nullptr){
        std::cout << temp->value << std::endl;
        temp = temp->next;
    }
}
void Queue::getFirst()
{
    if (first == nullptr) {
        std::cout << "First: nullptr" << std::endl;
    } else {
        std::cout << "First: " << first->value << std::endl;
    }
}
void Queue::getLast()
{
    if (last == nullptr) {
        std::cout << "Last: nullptr" << std::endl;
    } else {
        std::cout << "Last: " << last->value << std::endl;
    }
}
void Queue::getLength(){
    std::cout << "Length: " << length << std::endl;  
}
void Queue::enqueue(int value){
    Node* newNode = new Node(value);
    if(length == 0){
        first = newNode;
        last = newNode;
    } else {
        last->next = newNode;
        last = newNode;
    }
    length++;
}

int Queue::dequeue(){
    if(length == 0){
        std::cout << "Attempting to pop from empty stack" << std::endl;  
        return INT_MIN;
    } else {
        Node* temp = first;
        int tempVal = temp->value;
        if(length == 1){
            first = nullptr;
            last = nullptr;
        } else {
            first = first->next;
        }
        delete temp;
        length--;
        return tempVal; 
    }
}