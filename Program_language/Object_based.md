## Object-based programming
``` c++ 
class a_typical_class_structure{
    public:
    	//constructor 
    	a_typical_classe_structure(int para){
            constructor_function ......
        }
    	//constructor can be overloaded
		a_typical_classe_structure(std::vector<int> para){
            constructor_function ......
        }
		//constructor are not required to return anything
		//member inialization list
    	
    	//destructor
		~a_typical_class_structure(){
        	delete type data_member1_;
```````````
        }
    	//destructor is not necessary. when entity life cycle is done, it resources would 		be retrive by system or C++　


​		
```c++
	//if declare and define a member funciton in public, it would be defined as and 		inline function by compiler.
	//example:
 	void func1(){};
	void func2(){
        printf ("func2 is an inline function\n");
    }
	void func3(){};
private:
	type data_member1_;
	type data_member2_;
	type data_member3_;
	type data_member4_;
```
}



a_typical_class_structure::func1(){
    printf("func1 is not an inline function\n");
}

inline a_typical_class_structure::func3(){
    printf("func3 is declared outside but an inline function");
}




```c++
// a standard member function defination
bool classname::func4(){
  ```````````
}
```



##### Class Constructors and Class Destructor

``` c++
class A_Full_Class{
  public:
  	A_Full_Class(int a = 10, int b =12 , int c =25){
   		printf("start to construct a class");
      a_ = a;
      b_ = b;
      c_ = c; //
    }
  	A_Full_Class(int a, int b, int c){
      printf("start to construct a class");
    	a_ = a;
      b_ = b;
      c_ = c;
    }
  //constructors can be overloaded;
  //in constructor function , programer should check usr's parameters 
  
  ~A_Full_Class(){}
  protected:
  //
  
  private:
  int a_;
  int b_;
  int c_;
};

A_Full_Class::A_Full_Class(const structure &input):_a(input.a),_b(input.b),_c(input.c){//member initialization list
​````````````
}
```

可以使用一个实体赋值另外一个实体，但是这样的赋值会产生问题，如果是被复制实体有一个指针指向一个堆，如果在另一个是实体中，将这个堆释放，或者另一个实体调用 destructor ， 另一个实体的成员将会不再可用。 尽量使用本地成员的heap进行成员申明。



##### const delaration





##### this

'' this ''  pointer is directed to caller

when member function has to turn caller pointer; use this to return.





##### static class member 

static class menber, global only one value; ? 

// do some exercise to figure out how to use class