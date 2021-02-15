#include <iostream>

#include <stdlib.h>

class Static_Test{
    public:
        Static_Test(int a, int input){
            non_a_ = a;
            static_a_ = input;
        }
        Static_Test(int a){
            non_a_ = a;
        }
        ~Static_Test(){
         //   delete non_a_;
         //   delete static_a_;
        }
        void Output_value(){
            printf("t%d static_a = %d\n", non_a_ , static_a_);
        }
    private:
        int non_a_;
        static int static_a_;
};



int main () {
    std::cout<< "hello world"<<std::endl;
    Static_Test t1(1,5),t2(2);
    t1.Output_value();
    t2.Output_value();
    Static_Test t3(3,10);
    t1.Output_value();
    t2.Output_value();
    t3.Output_value();
    return 0;
}//???