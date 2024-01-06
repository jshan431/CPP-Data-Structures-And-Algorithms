#include <iostream>

using namespace std;

class Cookie {
private:
    string color;
public:
    Cookie(string color) {
        this->color = color;
    }
    string getColor() {
        return color;
    }
    void setColor(string color){
        this->color = color;
    }
};

int main()
{
    // Not using a pointer
//    int num1 = 11;
//    int num2 = num1;
//    num1 = 22;
//    
//    cout << "num1 = " << num1 << endl;
//    cout << "num2 = " << num2 << endl;
    // Using a pointer
    int* num1 = new int(11);
    int* num2 = num1;       // num2 points to same integer in memory that num1 is pointing to
    
    cout << "num1 = " << num1 << endl;
    cout << "num2 = " << num2 << endl;
    
    // changing num1 here also changes num2 because they point to same address in memory.
    *num1 = 13;
    cout << "num2 = " << *num2 << endl;
    
    Cookie* cookieOne = new Cookie("green");
    Cookie* cookieTwo = new Cookie("blue");
    
    cookieOne->setColor("yellow");
    
    cout << "C1: " << cookieOne->getColor() << endl;
    cout << "C2: " << cookieTwo->getColor() << endl;
    
    return 0;
}
