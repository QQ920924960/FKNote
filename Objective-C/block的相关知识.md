#####1、block内部能够一直引用被__block修饰的变量。

#####2、普通的局部变量（没有被__block修饰），block内部只会引用它初始的值，不能跟踪变量的改变。

#####3、block内部能够一直引用static修饰的变量（因为变量用static修饰之后，这个变量就不会死）

#####4、block本质上是一个指向结构体的指针

#####5、默认情况下，任何block都是在栈空间中，随时可能会被回收

#####6、对block做一次copy操作，block的内存就会放到堆里面


####用typedef定义block


  *定义
``` objc
typedef int (^blockType)(int, int);
```

  *实现
``` objc
blockType block1 = ^(int a, int b){
        return a+b;
};
```
