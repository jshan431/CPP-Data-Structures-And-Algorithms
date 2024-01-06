#include <iostream>
#include "BinarySearchTree.h"
#include "Node.h"
using namespace std;

int main()
{
    BinarySearchTree* myBST = new BinarySearchTree();
    myBST->insert(57);
    myBST->insert(17);
    myBST->insert(87);
//    cout << "Root: " << myBST->root->value;
    cout << myBST->root->value << endl;
    cout << myBST->root->left->value << endl;
    cout << myBST->root->right->value << endl;
    cout << myBST->contains(57) << endl;
    cout << myBST->contains(17) << endl;
    cout << myBST->contains(87) << endl;
    cout << myBST->contains(99) << endl;
    return 0;
}
