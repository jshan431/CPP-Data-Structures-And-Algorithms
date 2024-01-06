#include "BinarySearchTree.h"
#include "Node.h"

BinarySearchTree::BinarySearchTree(){
    root = nullptr;
}

bool BinarySearchTree::insert(int value){
    Node* newNode = new Node(value);
    if(root == nullptr){
        root = newNode;
        return true;
    }
    Node* temp = root;
    while(true){
        if(newNode->value == temp->value){
            return false;
        }
        if(newNode->value < temp->value){
            if(temp->left == nullptr){
                temp->left = newNode;
                return true;
            }
            temp = temp->left;
        } else {
            if(temp->right == nullptr){
                temp->right = newNode;
                return true;
            }
            temp = temp->right;
        }
    }
}

bool BinarySearchTree::contains(int value){
//    Node* temp = root;
//    while(true){
//        if(temp->value == value){
//            return true;
//        }
//        if(temp->value > value){
//            if(temp->left == nullptr){
//                return false;
//            }
//            temp = temp->left;
//        } else {
//            if(temp->right == nullptr){
//                return false;
//            }
//            temp = temp->right;            
//        }
//    }
//    return false;
    Node* temp = root;
    while(temp){
        if(temp->value == value){
            return true;
        }
        if(temp->value > value){
            temp = temp->left;
        } else {
            temp = temp->right;            
        }
    }
    return false;
}