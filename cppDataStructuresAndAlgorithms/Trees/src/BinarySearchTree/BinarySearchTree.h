#include <iostream>

class Node;

class BinarySearchTree
{
public:
    BinarySearchTree();
    Node* root;
    bool insert(int value);
    bool contains(int value);
private:
};