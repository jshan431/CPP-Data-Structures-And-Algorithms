#include <iostream>
#include "Graph.h"
using namespace std;

int main()
{
    Graph* myGraph = new Graph();
    myGraph->addVertex("A");
    myGraph->addVertex("B");
    myGraph->addVertex("C");
    myGraph->addEdge("A", "B");
    myGraph->addEdge("A", "C");    
    myGraph->addEdge("B", "C"); 
    myGraph->removeEdge("A", "B"); 
    myGraph->printGraph();
    
}
