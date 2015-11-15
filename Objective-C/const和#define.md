###const
1、识别哪些是常量，直接看const右边

例子：
```
int a = 30;
int const * const p1 = &a, p2 = 20;
```
1）、首先判断类型，有个技巧（把const去掉）就能判断类型，p1是一个指向整型变量的指针，p2是个整型

2）、然后判断哪些是常量，直接看const右边，先看右边的const，右边的const表示p1不可变，p2不可变；
再看左边的const，左边的const表示*p1不可变，p2不可变
