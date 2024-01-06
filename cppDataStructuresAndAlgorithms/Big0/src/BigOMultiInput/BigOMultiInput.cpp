#include "BigOMultiInput.h"

void printItemsONMIPlus(int n, int m) {
    for(int i = 0; i < n; i++){
        std::cout << i << std::endl;    
    }
    for(int j = 0; j < m; j++){
        std::cout << j << std::endl;    
    }
}

void printItemsONMITimes(int n, int m) {
    for(int i = 0; i < n; i++){
        for(int j = 0; j < m; j++){
            std::cout << i << " " << j << std::endl;
        }
    }
}