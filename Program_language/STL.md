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





#### Way to define sequential Containers 

``` C++
// empty container
list< string > slist;
// container with specific size
list<int> slist(size);
//container with specific size and defualt value
list<int> slist (size,defualt_value)
```

