#include <iostream>
#include <string>
//#include <vector>
#include <unordered_map>
#include <unordered_set>
//class Node;

class Graph
{
public:
    bool addVertex(std::string vertex);
    bool removeVertex(std::string vertex);
    bool addEdge(std::string vertex1, std::string vertex2);
    bool removeEdge(std::string vertex1, std::string vertex2);
    void printGraph();
private:
    std::unordered_map<std::string, std::unordered_set<std::string>> adjList;
};