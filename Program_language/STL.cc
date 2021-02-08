#include <STL.h>


#include <map>
#include <string>
#include <stdio.h>

int main(){
    std::map<int, std::string> new_map{std::make_pair(15,"morty"),std::make_pair(23,"eleven")};
    std::map<int,std::string>::iterator it = new_map.find("morty");
    printf("iterator: %d  second:%s",it->first,new_map[it->first]);
}
