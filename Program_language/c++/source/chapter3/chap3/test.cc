#include <iostream>
#include <unistd.h>
class still_here {
    public:
        int*still_p(){return &(still_here::a);};
        still_here(){};
        ~still_here(){};
        int c = 5;
    private:
        int a =10;    
};


int* call_back();
int main(){
    still_here *test = new still_here;
    int *c = test->still_p();
    delete test;
    std::cout << *c << std::endl;
  //  int *p_cb = call_back();
   // sleep(5);
  //  std::cout<<*p_cb<<std::endl;
    return 0; 

}


int* call_back(){
    int a =10;
    int *p =&a; 
    return p;
}


