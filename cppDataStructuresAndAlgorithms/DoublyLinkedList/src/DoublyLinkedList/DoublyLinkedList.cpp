#include "DoublyLinkedList.h"
#include "Node.h"

DoublyLinkedList::DoublyLinkedList(int value){
    Node* newNode = new Node(value);
    head = newNode;
    tail = newNode;
    length = 1;
}

DoublyLinkedList::~DoublyLinkedList(){
    Node* temp = head;
    while(head){
        head = head->next;
        delete temp;
        temp = head;
    }
}

void DoublyLinkedList::printList(){
    Node* temp = head;
    while(temp != nullptr){
        std::cout << temp->value << std::endl;
        temp = temp->next;
    }
}
void DoublyLinkedList::getHead()
{
    if (head == nullptr) {
        std::cout << "Head: nullptr" << std::endl;
    } else {
        std::cout << "Head: " << head->value << std::endl;
    }
}
void DoublyLinkedList::getTail(){
    if (tail == nullptr) {
        std::cout << "Tail: nullptr" << std::endl;
    } else { 
        std::cout << "Tail: " << tail->value << std::endl;
    }  
}
void DoublyLinkedList::getLength(){
    std::cout << "Length: " << length << std::endl;  
}

void DoublyLinkedList::append(int value){
    Node* newNode = new Node(value);
    if(!head && !tail){
        head = newNode;
        tail = newNode;
    } else {
        tail->next = newNode;
        newNode->prev = tail;
        tail = newNode;
    }
    length++;
}

void DoublyLinkedList::deleteLast(){
    if(length == 0){
        std::cout << "Deleting from empty linked list" << std::endl;
        return;
    }
    Node* temp = tail;
    if(length == 1){
        tail = nullptr;
        head = nullptr;
    } else {
        tail = tail->prev;
        tail->next = nullptr;
    }
    length--;
    delete temp;        
}

void DoublyLinkedList::prepend(int value){
    Node* newNode = new Node(value);
    if(length == 0){
        tail = newNode;
        head = newNode;
    } else {
        newNode->next = head;
        head->prev = newNode;
        head = newNode;
    }
    length++;
}

void DoublyLinkedList::deleteFirst(){
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
        head->prev = nullptr;
    }
    length--;
    delete temp;      
}

Node* DoublyLinkedList::get(int index){
    if(index < 0 || index >= length){
        std::cout << "Out of bounds" << std::endl;
        return nullptr;
    } 
    Node* temp;
    int counter;
    if(index >= length / 2){
        temp = head;
        counter = 0;
        while(counter < index){
            temp = temp->next;
            counter++;
        }
    } else {
        temp = tail;
        counter = length - 1;
        while(counter > index){
            temp = temp->prev;
            counter--;
        }
    }

    return temp;
}

bool DoublyLinkedList::set(int index, int value){
    Node* temp = get(index);
    //reduce code redundancy since we don't have to get for out of bound index here.
    if(temp){
        temp->value = value;
        return true;
    }
    return false;
}

bool DoublyLinkedList::insert(int index, int value){
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
    Node* before = get(index - 1);
    Node* after = before->next;
    newNode->prev = before;
    newNode->next = after;
    before->next = newNode;
    after->prev = newNode;

    length++;
    return true;
}

void DoublyLinkedList::deleteNode(int index){
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

    Node* temp = get(index);

    temp->next->prev = temp->prev;
    temp->prev->next = temp->next;
    
    delete temp;
    
    length--;
    return;
}

//void DoublyLinkedList::reverse(){
//    // Initialize current, previous and next pointers
//    Node* current = head;
//    Node *prev = NULL, *next = NULL;
//    tail = head;
//    while (current != NULL) {
//        // Store next
//        next = current->next;
//        // Reverse current node's pointer
//        current->next = prev;
//        // Move pointers one position ahead.
//        prev = current;
//        current = next;
//    }
//    head = prev;
//}