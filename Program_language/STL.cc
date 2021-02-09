#include <STL.h>

#include <iostream>
#include <map>
#include <string>
#include <stdio.h>

int main(){
    std::map<int, std::string> new_map{std::make_pair(15,"morty"),std::make_pair(23,"eleven"),std::make_pair(88,"Jason")};
    std::map<int,std::string>::iterator it = new_map.find(15);
    printf("iterator: %d",it->first);
    std::cout<<it->second;
}
