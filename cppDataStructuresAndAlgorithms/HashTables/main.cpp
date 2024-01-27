#include <iostream>
#include "HashTable.h"

using namespace std;

int main()
{
    HashTable* myHashTable = new HashTable();
    
    myHashTable->set("nails", 100);
    myHashTable->set("tile", 50);
    myHashTable->set("lumber", 80);
    
    myHashTable->set("bolts", 200);
    myHashTable->set("screws", 140);
    
    cout << "Lumber: " << myHashTable->get("lumber") << endl;
    cout << "Bolts: " << myHashTable->get("bolts") << endl;

//    myHashTable->printTable();
    vector<string> myKeys = myHashTable->keys();
    for(auto key : myKeys){
        cout << key << " " << endl;
    }
}
