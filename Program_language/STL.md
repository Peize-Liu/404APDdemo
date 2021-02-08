## STL

### Iterator

递归器;操作和指针相似

```c++
//renounce
container <type> ::iterator iter = /* an iterator provived by container */ ;
container <type> ::const_iterator iter =  /* an iterator provived by container */ 
    /* guarantee this iterator is read-only */
```

via generic iterator, we can use generic algorithm to realize funcitons.





### Way to define sequential Containers 

``` C++
// empty container
list< string > slist;
// container with specific size
list<int> slist(size);
//container with specific size and defualt value
list<int> slist (size,defualt_value);
//container defined by specific arry 
int arry_value[10] = {1,2,3,4,5,6,7,8,9};
list<int>slist(arry_value,arry_value+8);
//use a defined container to define a new one 
list<int>slist(slist_old); 
```



### Funciton provided by container

```c++
slist.pop_front(); // delect the front member of slist 
slist.pop_back();　// delect the last member of slist 
slist.push_back(); // join a new member from back
slist.push_front();//join a new member from head
slist.begin() // return the head member's address
slist.end() // return the last member's address
```



### Generic Algorithms 

```c++
algorithms(fisrt_position,last_position , specific value);
```





### Map

```c++
//renouce a map
map<int(key),string>
//insert new member to the map

//way to search the aim value
    
```







