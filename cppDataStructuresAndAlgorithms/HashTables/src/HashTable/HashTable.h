#include <iostream>
#include <string>
#include <vector>
class Node;

class HashTable
{
public:
    void printTable();
    void set(std::string key, int value);
    int get(std::string key);
    std::vector<std::string> keys();
private:
    static const int SIZE = 7;
    Node* dataMap[SIZE];
    int hash(std::string key);
};