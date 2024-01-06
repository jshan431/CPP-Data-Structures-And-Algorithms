#include "Stack.h"
#include "Node.h"

Stack::Stack(int value){
    Node* newNode = new Node(value);
    top = newNode;
    height = 1;
}

void Stack::printStack(){
    Node* temp = top;
    while(temp != nullptr){
        std::cout << temp->value << std::endl;
        temp = temp->next;
    }
}
void Stack::getTop()
{
    if (top == nullptr) {
        std::cout << "Top: nullptr" << std::endl;
    } else {
        std::cout << "Top: " << top->value << std::endl;
    }
}
void Stack::getHeight(){
    std::cout << "Height: " << height << std::endl;  
}
void Stack::push(int value){
    Node* newNode = new Node(value);
    newNode->next = top;
    top = newNode;
    height++;
}
int Stack::pop(){
    if(height == 0){
        std::cout << "Attempting to pop from empty stack" << std::endl;  
        return INT_MIN;
    } else {
        Node* temp = top;
        int tempVal = temp->value;
        top = top->next;
        delete temp;
        height--;
        return tempVal;
    }

}