#include "LinkedList.h"
#include "Node.h"

LinkedList::LinkedList(int value){
    Node* newNode = new Node(value);
    head = newNode;
    tail = newNode;
    length = 1;
}

LinkedList::~LinkedList(){
    Node* temp = head;
    while(head){
        head = head->next;
        delete temp;
        temp = head;
    }
}

void LinkedList::printList(){
    Node* temp = head;
    while(temp != nullptr){
        std::cout << temp->value << std::endl;
        temp = temp->next;
    }
}
void LinkedList::getHead()
{
    if (head == nullptr) {
        std::cout << "Head: nullptr" << std::endl;
    } else {
        std::cout << "Head: " << head->value << std::endl;
    }
}
void LinkedList::getTail(){
    if (tail == nullptr) {
        std::cout << "Tail: nullptr" << std::endl;
    } else { 
        std::cout << "Tail: " << tail->value << std::endl;
    }  
}
void LinkedList::getLength(){
    std::cout << "Length: " << length << std::endl;  
}

void LinkedList::append(int value){
    Node* newNode = new Node(value);
    if(!head && !tail){
        head = newNode;
        tail = newNode;
    } else {
        tail->next = newNode;
        tail = newNode;
    }
    length++;
}

void LinkedList::deleteLast(){
    if(length == 0){
        std::cout << "Deleting from empty linked list" << std::endl;
        return;
    } 
    Node* current = head;
    if(length == 1){
        tail = nullptr;
        head = nullptr;
    } else {
        Node* prev = head;
        while(current->next){
            prev = current;
            current = current->next;
        }
        tail = prev;
        tail->next = nullptr;
    }
    length--;
    delete current;        
}

void LinkedList::prepend(int value){
    Node* newNode = new Node(value);
    if(length == 0){
        tail = newNode;
        head = newNode;
    } else {
        newNode->next = head;
        head = newNode;
    }
    length++;
}

void LinkedList::deleteFirst(){
    if(length == 0){
        std::cout << "Deleting from empty linked list" << std::endl;
        return;
    } 
    Node* temp = head;
    if(length == 1){
        tail = nullptr;
        head = nullptr;
    } else {
        head = head->next;
    }
    length--;
    delete temp;      
}

Node* LinkedList::get(int index){
    if(index < 0 || index >= length){
        std::cout << "Out of bounds" << std::endl;
        return nullptr;
    } 
    Node* temp = head;
    int counter = 0;
    while(counter != index){
        temp = temp->next;
        counter++;
    }
    return temp;
}

bool LinkedList::set(int index, int value){
    Node* temp = get(index);
    if(temp){
        temp->value = value;
        return true;
    }
    return false;
}

bool LinkedList::insert(int index, int value){
    if(index < 0 || index > length){
        std::cout << "Out of bounds" << std::endl;
        return false;
    }
    if(index == 0) {
        prepend(value);
        return true;
    } 
    if(index == length){
        append(value);
        return true;
    }
    Node* newNode = new Node(value);
    Node* prev = nullptr;
    Node* temp = head;
    int counter = 0;
    while(counter != index){
        prev = temp;
        temp = temp->next;
        counter++;
    }
    prev->next = newNode;
    newNode->next = temp;
    length++;
    return true;
}

void LinkedList::deleteNode(int index){
    if(index < 0 || index >= length){
        std::cout << "Out of bounds" << std::endl;
        return;
    }
    if(index == 0) {
        return deleteFirst();
    } 
    if(index == length - 1){
        return deleteLast();
    }
    Node* prev = nullptr;
    Node* temp = head;
    int counter = 0;
    while(counter != index){
        prev = temp;
        temp = temp->next;
        counter++;
    }
    prev->next = temp->next;
    delete temp;
    length--;
    return;
}

void LinkedList::reverse(){
    // Initialize current, previous and next pointers
    Node* current = head;
    Node *prev = NULL, *next = NULL;
    tail = head;
    while (current != NULL) {
        // Store next
        next = current->next;
        // Reverse current node's pointer
        current->next = prev;
        // Move pointers one position ahead.
        prev = current;
        current = next;
    }
    head = prev;
}