#include <iostream>
using namespace std;

extern "C" int somefunction();
int main() {
    cout << "the" << somefunction() << endl;
    return 0;
}

