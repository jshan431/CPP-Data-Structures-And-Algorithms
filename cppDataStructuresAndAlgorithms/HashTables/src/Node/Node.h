#include <string>

class Node
{
public:
    std::string key;
    int value;
    Node* next;
    Node(std::string, int value);
private:
};