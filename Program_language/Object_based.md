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
    	``````````
}



a_typical_class_structure::func1(){
    printf("func1 is not an inline function\n");
}


inline a_typical_class_structure::func3(){
    printf("func3 is declared outside but an inline function");
}




```





