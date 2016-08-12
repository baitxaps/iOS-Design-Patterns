////
////  block.m
////  Block
////
////  Created by hairong chen on 16/2/19.
////  Copyright © 2016年 hairong chen. All rights reserved.
////
//
//#import "block.h"
//
//int  test(int a){
//    printf("test= %d\n",a);
//    return 0;
//}
//
//@implementation block
//#pragma mark - Block测试1
//- (void)testBlk2{
//    
//    blk_t blk = ^int (int a){
//        return a +1;
//    };
//    
//    
//    //1.
//    int (*funcptr)(blk_t blk,int rate ) = func;
//    // printf("%p,%p\n",func,&func);
//    printf("%d\n",funcptr(blk,10));
//    
//    //2.
//    int rate =  [self methodUsingBlock:blk/*f()*/ rate:10];
//    rate =  [self methodUsingBlock:f() rate:10];
//    rate =  [self methodUsingBlock:^int(int a){
//        return a +1;
//    } rate:10];
//    printf("%d\n",rate);
//    
//    //3.
//#if __has_feature(objc_arc)
//    
//    blk_t sb = stackblk(1);
//    NSLog(@"%d",sb(10));
//    NSLog(@"%d", stackblk(1)(10));
//    
//    //非ARC中，编译器没有进行copy到堆中，block栈中已废弃，所以crash,
//    {
//        id obj = [self getBlockArray];
//        void(^blks)(void) = [obj objectAtIndex:0];
//        blks();//crash,
//    }
//    
//#else
//    
//    blk_t *blkptr = &blk;
//    printf("%d\n",(*blkptr)(10));
//    
//#endif
//    
//    //4.
//    void * p = (void*)test;
//    ((int(*)(int))p)(10);
//    
//    //5.
//    typedef void(^mblk_t) (id obj);
//    mblk_t mblk;
//    {
//        id array = [NSMutableArray new];
//        mblk = [^(id obj){
//            [array addObject:obj];
//            NSLog(@"array.count = %ld",((NSMutableArray*)array).count);
//        }copy];
//    }
//    mblk([NSObject new]);
//    mblk([NSObject new]);
//    mblk([NSObject new]);
//    
//    //6.
//    mblk_t wblk;
//    {
//        id array = [NSMutableArray new];
//        id __weak array1 = array;
//        wblk = [^(id obj){
//            [array1 addObject:obj];
//            NSLog(@"array1.count = %ld",((NSMutableArray*)array1).count);
//        }copy];
//    }
//    wblk([NSObject new]);
//    wblk([NSObject new]);
//    wblk([NSObject new]);
//    
//    //7.
//    mblk_t bblk;
//    {
//        id array = [NSMutableArray new];
//        __block id __weak array2 = array;
//        bblk = [^(id obj){
//            [array2 addObject:obj];
//            NSLog(@"array2.count = %ld",((NSMutableArray*)array2).count);
//        }copy];
//    }
//    bblk([NSObject new]);
//    bblk([NSObject new]);
//    bblk([NSObject new]);
//    
//    //8.
//    mblk_t unsaveBlk;
//    {
//        id array = [NSMutableArray new];
//        id __unsafe_unretained array3 = array;
//        //id __autoreleasing array4 = array;
//        unsaveBlk = [^(id obj){
//            [array3 addObject:obj];
//            NSLog(@"array3.count = %ld",((NSMutableArray*)array3).count);
//        }copy];
//    }
//    //    unsaveBlk([NSObject new]);
//    //    unsaveBlk([NSObject new]);
//    //    unsaveBlk([NSObject new]);
//    
//}
//
//#pragma mark - testBlk2
//二、Block：带有自动变量(局部变量)的匿名函数(不带有名称的函数)
//- (void)testBlk1{
//    
//    //1.Block语法
//    //^ 返回值类型 参数列表  表达式
//    
//    ^(int event ){
//        return event;//省略返回值，有return语句就使用返回值的类型
//        //printf("buttonId:%d event:%d\n",event,event );
//    };
//    
//    ^void(int event){
//        printf("buttonId:%d event:%d\n",event,event );
//    };
//    
//    ///////////////////////
//    ^void(void){
//        printf("void");
//    };
//    
//    //等价于
//    ^{
//        printf("void");
//    };
//    
//    //2.Block类型变量
//    //声明变量,是将声明的函数指针类型变量＊ 变为 ^:int (^blk)(int);
//    int (^blk)(int) =^int(int event){
//        return 0;
//    };
//    int (^blk1)(int) =blk; ;
//    
//    blk1(10);
//    
//    //函数参数中使用Block类型变量
//    /*
//     void f(int (^blk)(int)){
//     //...
//     }
//     
//     
//     //函数返回值中指定Block类型，可将Block作为函数返回值
//     typedef int (^blk_t)(int);
//     void func(int (^blk)(int));//等价于：void func(blk_t blk){}
//     
//     blk_t f(){
//     return ^(int count){return count +1;};
//     };
//     */
//    
//    blk_t blkptr = blk;
//    printf("%d\n",blkptr(10));
//    
//    //获取自动型变量值
//    {
//        int val = 10;
//        void (^blk)(void) = ^{
//            printf("%d\n",val);//执行结果不是改写后的值，而是瞬间值
//        };
//        val = 1;
//        blk();
//        printf("%d\n",val);
//    }
//    
//    //__block修饰符
//    {
//        __block int val = 0;//给自动变量加__block修饰符，实现在Block内赋值
//        void (^blk)(int v) = ^(int v){
//            val = v;
//        };
//        
//        blk(10);
//        printf("%d\n",val);
//    }
//    
//    //截获的自动变量
//    //截获Objective-C对象
//    {
//        id array = [[NSMutableArray alloc]init];
//        void (^blk)(void) = ^{
//            id obj = [[NSMutableArray alloc]init];;
//            // array = NSMutableArray.new;
//            [array addObject:obj];//用array = NSMutableArray.new，截获的自动变量array的操作会产生编译错误，但使用截获的值去不会有任何问题
//            
//        };
//        blk();
//    }
//    
//    //使用C数组时小心使用其指针
//    {
//        //const char text[] = "hello";
//        const char *text = "hello";
//        void (^blk)(void) = ^{
//        //const char text[] = "hello";只是使用Ｃ字符字面量数组，而没有向截获的自动变量赋值，
//        // 编译不过,因为截获的自动变量的方法并没有实现对Ｃ语言数组的截获,可使用指针解决问题:const char *text = "hello";
//            printf("%c\n",text[2]);
//        };
//        blk();
//    }
//}
//
//blk_t f(){
//    return ^(int count){return count +1;};
//};
//
//
//int func(blk_t blk,int rate){
//    return blk(rate);
//}
//
////- (int)methodUsingBlock:(blk_t)blk rate:(int)rate;
//- (int)methodUsingBlock:(int(^)(int a))blk rate:(int)rate{
//    return blk(rate);
//}
//
//#if __has_feature(objc_arc)
//blk_t stackblk(int rate){
//    return  ^(int count){return rate *count;} ;
//}
//#endif
//
//- (id)getBlockArray{
//    int val = 10;
//    return @[^{NSLog(@"blk0:%d",val);},^{NSLog(@"blk1:%d",val);}];
//}
//
//
//#pragma mark - OC的类与对象的实质
////一、OC的类与对象的实质
//typedef struct objc_class Class;
//
//typedef struct objc_object{
//    Class isa;
//} *id;
//
//struct objc_class{
//    // struct objc_class isa;
//    Class isa;
//};
//
//
//
//@interface Test:NSObject{
//    int val;
//}
//@end
//
//基于objc_object结构，该类的对象的结构体如下：
//struct {
//    Class isa;
//    int val;
//};
//Test类的实例变量val被直接声明为对象的结构体成员，OC中由类生成对象，即像该构体这样“生成由该类生成的对象的结构体实例".
//生成的各个对象，即由该类生成的对象和各个结构体实例，通过成员变量isa保持该类的结构实例指针
//
//
//
///*
// 在OC中，如NSObject的class_t结构体实例及NSMutableArray的class_t结构体等，均生成并保持各个类的class_t
// 的结构体，该实例持有声明的成员变量，方法的名称/实现(函数指针)、属性以及父类的指针，并被OC运行时库所使用
// */
//struct class_t{
//    struct class_t *isa;
//    struct class_t *superclass;
//    // Cache cache;
//    IMP *vtable;
//    uintptr_t data_NEVER_USE;
//};
//
//
//#pragma mark - 1.Block的实质
//三、Block的实质
///*
// clang（LLVM编译器)具有转换为我们可读源代码的功能，通过:-rewrite -objc 选项就能将含有Block语法的
// 源代码变换为C++的源代码，说是C++,其实也公是使用了struct结构，其本质是C语言源代码
// clang -rewrite-objc 源代码文件名
// */
//
////1.Block的实质
//- (void)essenceBlock{
//    
//    {
//        void (^blk)(void) = ^{
//            printf("block\n");
//        };
//        blk();
//    }
//    
//}
//
//struct __block_imp1{
//    void *isa;
//    int Flags;
//    int Reserved;
//    void *FuncPtr;
//};
//
//#if __cplusplus
//extern "C" {
//#endif
//    struct __main_block_imp1_0{
//        struct __block_imp1 imp1;
//        struct __main_block_desc_0 *Desc;
//        
//        __main_block_imp1_0(void *fp,struct __main_block_desc_0 *desc,int flags=0){
//            imp1.isa        = &_NSConcreteStackBlock;
//            imp1.Flags      = flags;
//            imp1.FuncPtr    = fp;  //fp:函数指针__main_block_func_0
//            Desc            = desc;//desc：静态全局初始化的__main_block_desc_0结构体实例指针
//        }
//        //......
//        /*
//         __main_block_imp1_0 结构体相当于基于objc_object结构体的OC类对象的结构体.另外，对其中的成员变量isa进行初始化：
//         imp1.isa  = &_NSConcreteStackBlock;
//         即_NSConcreteStackBlock相当于class_t结构实例，在将Block作为OC的对象处理时，关于该类的信息放置于_NSConcreteStackBlock中。
//         */
//    };
//    
//#if __cplusplus
//}
//#endif
//
//static void __main_block_func_0(struct __main_block_imp1_0 *__cself){
//    printf("Block\n");
//}
//
//static struct __main_block_desc_0{
//    unsigned long reserved;
//    unsigned long Block_size;
//}__main_block_desc_0_DATA ={
//    0,
//    sizeof(struct __main_block_imp1_0)
//};
//
//
//
//int Main(){
//    //1.void (^blk)(void) = ^{printf("block\n");};
//    //栈上生成的__main_block_imp1_0 结构体实例的指针，赋值给__main_block_imp1_0 结构体指针类型的变量blk，
//    
//     struct __main_block_imp1_0 tmp = \
//     __main_block_imp1_0(__main_block_func_0,&__main_block_desc_0_DATA,0);
//     struct __main_block_imp1_0 *blk = &tmp;
//     
//     //void (*blk)(void) = (void (*)(void))&__main_block_imp1_0((void *)__main_block_func_0,&__main_block_desc_0_DATA);
//    
//    
//    //2.blk();
//    
//     (*blk->impl.FuncPtr)(blk);//函数指针调用函数
//     //((void(*)(struct __block_imp1 *))((struct __block_imp1 *)blk)->FuncPtr)((struct __block_imp1 *)blk);
//    
//    return 0;
//}
//
//#pragma mark -
//#pragma mark -2.获取自动变量
////2.获取自动变量
//
//#import <stdio.h>
//int main(int argc, const char *argv[])
//{
//    int val = 10;
//    void (^blk)(void) = ^{
//        printf("val = %d",val);
//    };
//    blk();
//    return 0;
//}
//进行clang:
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    int val;//自动变量追加到__main_block_impl_0中了,Block语法表达式中没有使用的自动变量不会被追加，截取只针对Block中使用的自动变量
//    
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int _val, int flags=0) : val(_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
////Block匿名函数(^blk)(void) = ^{printf("val = %d",val);};转换为：
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    int val = __cself->val; // bound by copy
//    
//    printf("val = %d",val);
//}
///*
//总的来说，截获的自动变量值 意味着在执行Block语法时，Block语法表达式所使用的自动变量值被保存到Block的结构体实例（Block自身）中
//前面说不能用Ｃ数组型的自动变量，截获的自动变量时，将值传递给结构体的构造函数进行保存。
//预测代码如下：
//*/
//void fc(char a[10]){
//    char b[10] = a;//不能编译，Ｃ规范不允许这种赋值
//    printf("%d",b[0]);
//}
//
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//
//int main(int argc, const char *argv[])
//{
//    int val = 10;
//    //初始化结构体实例时，根据传递给构造函数的参数对由自动变量追加的成员变量进行初始化
//    void (*blk)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, val));
//    ((void (*)(__block_impl *))((__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
//    return 0;
//}
//
//
//#pragma mark -
//#pragma mark - 3.__block说明符
//3.__block说明符
///*
// 因为在实现上不能改写被截获自动变量的值，所以当编译器在编译过程中检出被截获自动变量赋值的操作时，便产生编译错误
// 不过这样就无法在Block中保存值了，极为不便
// */
///*
// 解决方法一：Ｃ中有一个变量允许Block改写值
// 静态变量
// 静态全局变量
// 全局变量
// */
//int global_val = 1;//全局变量
//- (void)staticBlock{
//    static int static_gloval_val = 2;//静态全局变量
//    {
//        static int static_val = 3;//静态变量
//        void (^blk)(void) = ^{
//            global_val          *=1;
//            static_gloval_val   *=2;
//            static_val          *=3;
//        };
//        blk();
//    }
//}
//
//
//clang -rewrite-objc ***:
//
//int global_val = 1;
//struct __staticBlock_block_impl_0 {
//    struct __block_impl impl;
//    struct __staticBlock_block_desc_0* Desc;
//    int *static_gloval_val;
//    int *static_val;
//    __staticBlock_block_impl_0(void *fp, struct __staticBlock_block_desc_0 *desc, int *_static_gloval_val, int *_static_val, int flags=0) : static_gloval_val(_static_gloval_val), static_val(_static_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __staticBlock_block_func_0(struct __staticBlock_block_impl_0 *__cself) {
//    int *static_gloval_val = __cself->static_gloval_val; // bound by copy
//    int *static_val = __cself->static_val; // bound by copy
//    
//    global_val *=1;
//    (*static_gloval_val) *=2;
//    (*static_val) *=3;
//}
//
//static struct __staticBlock_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __staticBlock_block_desc_0_DATA = { 0, sizeof(struct __staticBlock_block_impl_0)};
//
//void staticBlock(){
//    static int static_gloval_val = 2;
//    {
//        static int static_val = 3;
//        void (*blk)(void) = ((void (*)())&__staticBlock_block_impl_0((void *)__staticBlock_block_func_0, &__staticBlock_block_desc_0_DATA, &static_gloval_val, &static_val));
//        ((void (*)(__block_impl *))((__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
//    }
//}
//
//该源代码使用了Block改写了静态变量static_val,静态全局变量static_global_val,全局变量gloval_val
//对全局变量gloval_val的访问与转换前完全相同，而static_val静态变量，static_global_val静态全局变量
//指针对其进行访问，将static_val、static_global_val的指针传递给__staticBlock_block_impl_0结构体的
//构造函数并保存。这是超出作用域使用变量的最简单方法
//
//解决方法二：__block说明符(__block存储域类说明符)
//
//C中有以下存储域类说明符:
//typedef
//extern
//static:表示作为静态变量存储在数据区中
//auto:表示作为自动变量存储在栈中
//register
//
//__block说明符类似于static,auto和register说明符，他们用于指定将变量值设置到哪个存储域中。
//
//
////把下面clang
//int blockNo(){
//    __block int val = 3;
//    void (^blk)(void) = ^{
//        val = 6;
//    };
//    blk();
//    
//    return 0;
//}
//
////转换后源码如下
//struct __Block_byref_val_0 {
//    void *__isa;
//    __Block_byref_val_0 *__forwarding;
//    int __flags;
//    int __size;
//    int val;
//};
//
//
//struct __blockNo_block_impl_0 {
//    struct __block_impl impl;
//    struct __blockNo_block_desc_0* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __blockNo_block_impl_0(void *fp,
//                           struct __blockNo_block_desc_0 *desc,
//                           __Block_byref_val_0 *_val,
//                           int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
//Block的 __blockNo_block_impl_0 结构体实例持有指向__block变量的__Block_byref_val_0结构体实例的指针
//__Block_byref_val_0结构体实例的成员变量__forwarding持有指向该实例自身的指针，通过成员变量_forwarding
//访问成员变量val（成员变量val是该实例自身持有和变量，它相当于原自动变量）
//
//static void __blockNo_block_func_0(struct __blockNo_block_impl_0 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//    
//    (val->__forwarding->val) = 6;
//}
//
//static void __blockNo_block_copy_0(struct __blockNo_block_impl_0*dst,
//                                   struct __blockNo_block_impl_0*src) {//ByVal值传递;ByRef地址传递
//    _Block_object_assign((void*)&dst->val, (void*)src->val, 8);//8:BLOCK_FIELD_IS_BYREF
//}
//
//static void __blockNo_block_dispose_0(struct __blockNo_block_impl_0*src) {
//    _Block_object_dispose((void*)src->val, 8);//8:BLOCK_FIELD_IS_BYREF
//}
//
//static struct __blockNo_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __blockNo_block_impl_0*, struct __blockNo_block_impl_0*);
//    void (*dispose)(struct __blockNo_block_impl_0*);
//    
//} __blockNo_block_desc_0_DATA = {
//    0,
//    sizeof(struct __blockNo_block_impl_0),
//    __blockNo_block_copy_0,
//    __blockNo_block_dispose_0
//};
//
//int blockNo(){
//    __attribute__((__blocks__(byref))) __Block_byref_val_0 val = {
//        (void*)0,
//        (__Block_byref_val_0 *)&val,
//        0,
//        sizeof(__Block_byref_val_0),
//        3
//    };
//    
///*
// 1.__block变量同Block一样变成__Block_byref_val_0结构体类型的自动变量，即栈上生成的__Block_byref_val_0
// 结构体实例。该变量初始化为3,且这个值也出现在现在结构体实例的初始化中，这意味着该结构体持有相当于原自动变量的成员
// 变量
// 2.另外,__block变量的__Block_byref_val_0结构体并不在Block用__main_block_impl_0结构体中，这样做是为了在多个Block中使用__block变量：
// */
//
//
//__block int val = 6;
//void (^blk0)(void) = ^{val = 0;};
//void (^blk1)(void) = ^{val = 1;};
//Block类型变量blk0 、blk1访问__block变量val：
//
//__block_byref_val0 val = {0,&val,0,sizeof(__Block_byref_val_0),10};
//blk0 = &__main_block_imp1_0(
//                            __main_block_func_0,&__main_block_desc_0_DATA,&val,0x22222222);
//);
//
//blk1 = &__main_block_imp1_1(
//                            __main_block_func_0,&__main_block_desc_0_DATA,&val,0x22222222);
//);
///*
// 两个Block都使用了__block_byref_val0结构体实例val的指针，这样就可以从多个Block中使用同一个__block变量
// 当然，反过来从一个Block中使用多个_block变量也是可以的，只要增加Block的结构成员变量与构造函数的参数，便可对
// 应使用多个__block变量
// */
//
// void (*blk)(void) = ((void (*)())&__blockNo_block_impl_0(
// (void *)__blockNo_block_func_0,
// &__blockNo_block_desc_0_DATA,
// (__Block_byref_val_0 *)&val,
// 570425344));
// 
// ((void (*)(__block_impl *))((__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
// 
// return 0;
// 
// }
//
//    
//#pragma mark -
//#pragma mark - 4.Block存储域
////4.Block存储域
//1> 由前在说明可知，Block转换为Block的结构体类型的自动变量，__block变量转换为__block变量的结构
//    体类型的自动变量，所谓结构类型的类型的自动变量，即栈上生成的该结构体的实例
//    
//名称                实质
//Block             栈上Block的结构体的实例
//__block变量        栈上__block变量的结构体的实例
//    
//Block也是OC对象，将Block当作OC对象来看时，该Block的类为
//_NSConcreteStackBlock:类对象Block设置在栈上
//_NSConcreteGlobalBlock:类对象设置在程序的数据区域(.data区)中
//_NSConcreteMallocBlock:类对象设置在由malloc函数分配在内存块(堆)中
//    
//    
//2>Block类
//       类                     设置对象的存储域
//    _NSConcreteStackBlock         栈
//    _NSConcreteGlobalBlock        数据区域(.data区)
//    _NSConcreteMallocBlock        堆
//    
//3>impl.isa = & _NSConcreteGlobalBlock;
//该Block的类为_NSConcreteGlobalBlock类，此Block即该Block用结构体实例设置在程序的数据区域中
//因为在使用全局变量的地方不能使用自动变量，所以不存在对自动变量进行截获，由此Block用结构体实例的内容
//不依赖于执行时的状态，所以整个程序中只需一个实例。因此将Block用的结构体实例设置在与全局变量相同的数据区域中即可
//    
//在函数内而不在记述广域变量的地方使用Block语法时，只要Block不截获自动变量，就可以将Block用结构体实例设置在程序的数据区域：
//typedef int(^blk_b)(int);
//
//for(int rate =0;rate <10,++reate){//不截获自动变量
//    blk_t blk = ^(int count){return count;}
//}
//
//for(int rate =0;rate <10,++reate){//截获自动变量
//    blk_t blk = ^(int count){return reate *count;}
//}
//
//Block为NSConcreteGlobalBlock类对象:
//记述全局变量的地方有Block语法时
//Block语法的表达式不使用应截获的自动变量时
//除此之外的Block语法生成的Block为_NSConcreteStackBlock类对象，且设置在栈上。
//
//4>Block超出变量作用域可存在的原因
//__block变量用结构体成员变量__forwarding存丰的原因
//
//
//配置在全局变量上的Block,从变量作用域外也可以通过指针安全使用，但设置在栈上的Block，如果其所属
//的变量作用域结束，该Block就被废弃，由于__block变量也配置在栈上，同样地，如果其所属和变量作用域
//结束，则该__block变量也会被废弃
//
//Block提供了将Block和__block变量从栈上复制到堆上的方法来解决这个问题。将配置在栈上的Block复制到堆上，
//这样即使Block语法记述和变量作用哉结束，堆上的Block还可以继续存在
//
//
//复制到堆上的Block将_NSConcreteMallocBlock类对象写入Block用结构实例的成员变量isa
//impl.isa = &_NSConcreteMallocBlock;
//
//有时在__block变量配置在堆上的状态下，也可以访问栈上的_block变量，在此情形下，只要栈上的结构实例成员变量__forwarding
//指向堆上的结构实例，那么不管是栈上的_block变量还是从堆上的__block变量都能够正确访问
//
//typedef int (^blk_t)(int);
//blk_t func(int rate){
//    return  ^(int count){return count*rate;} ;
//}
//int main(int argc,char *agrv[]){
//    
//    printf("%d",func(2)(3));
//    return 0;
//}
//
////上面代码生成block.cpp：clang -rewrite-objc -fobjc-arc block.m
//typedef int (*blk_t)(int);
//
//struct __func_block_impl_0 {
//    struct __block_impl impl;
//    struct __func_block_desc_0* Desc;
//    int rate;
//    __func_block_impl_0(void *fp, struct __func_block_desc_0 *desc, int _rate, int flags=0) : rate(_rate) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static int __func_block_func_0(struct __func_block_impl_0 *__cself, int count) {
//    int rate = __cself->rate; // bound by copy
//    return count*rate;
//}
//
//static struct __func_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __func_block_desc_0_DATA = { 0, sizeof(struct __func_block_impl_0)};
//
//
//ARC下不是对Block进行Block_copy(),将堆上的Block作为OC对象并注册到autoreleasepool中，然后再返回对象，
//而是实例化block结构体,将自动变量rate追加到__main_block_impl_0中,把__func_block_func_0、
//__func_block_desc_0_DATA的指针传递给__func_block_impl_0结构体的构造函数并保存(这是超出作用域使用变量的方法)。
//
//blk_t func(int rate){
//    return ((int (*)(int))&__func_block_impl_0((void *)__func_block_func_0, &__func_block_desc_0_DATA, rate)) ;
//}
//
//
//int main(int argc,char *agrv[]){
//    printf("%d",((int (*)(__block_impl *, int))((__block_impl *)func(2))->FuncPtr)((__block_impl *)func(2), 3));
//    return 0;
//}
//
//5>需要手生成代码，将Block从栈上复制到堆上
//.  向方法或函数的参数中传递Block时，但是在方法或函数中适当地复制了传递过来的参数，就不必在调用该方法或函数前手动复制了如：
//Cocoa框架的方法且方法名上含有usingBlock等时:NSArray类的enumerateObjectsUsingBlock实例方法
//Grand Central Dispatch的API（）:dispatch_async函数
//但NSArray类的initWithObjects实例方法上传递Block时需要手动复制 eg:
//
//-   (id)getBlockArray{
//    int val = 10;
//    return @[^{NSLog(@"blk0:%d",val);},^{NSLog(@"blk1:%d",val);}];
//}
//id obj = [self getBlockArray];
//blk_t blk= (blk_t)[obj objectAtIndex:0];
//blk(10)
//
//6>Block的副本
//    Block的类                 副本源的配置存储域       复制效果
//    _NSCondreteStackBLock       栈                   从栈复制到堆
//    _NSConcreteGlobalBlock      程序的数据区域         什么也不做
//    _NSConcreteMallocBlock      堆                   引用计数增加
//
//7> ARC中不能显示的release,多次调用copy方法进行复制完全没有问题：
//blk = [[blk copy]copy]]copy]copy];
//{
//    //将配置在栈上的Block,赋值给变量blk中
//    //将配置在堆上的Block赋值给变量tmp中，变量tmp持有强引用Block
//    blk_t tmp  = [blk copy];
//    
//    //将变量tmp的Block赋值为变量blk,变量blk持有强引用Block.
//    //因为原先赋值的Block配置在栈上，所以不受此赋值的影响，此时Block的持有者为blk,tmp;
//    blk = tmp;
//    
//}//由于变量作用域结束，所以变量tmp被废弃，其强引用失效并释放所有的Block. Block被变量blk持有，没有被废弃
//
//
//{
//    //配置在堆上的Block被赋值给变量blk，blk持有强制引用的Block
//    //将配置在堆上的Block赋值给变量tmp中，变量tmp持有强引用Block
//    blk_t tmp  = [blk copy];
//    
//    
//    //由于向变量blk进行了赋值，所以现在的Block的强引用失效，Block被释放
//    //由于Block被变量tmp所持有，所以没有被废弃。
//    //变量blk中赋值了变量tmp的Block,变量blk持有强引用的Block,此时Block的持有者为blk,tmp;
//    blk = tmp;
//}//由于变量作用域结束，所以变量tmp被废弃，其强引用失效并释放所有的Block. 由于变量blk还处于持有状态，Block没有被废弃
//
////下面过程重复...
//{
//    blk_t tmp  = [blk copy];
//    blk = tmp;
//}
//{
//    blk_t tmp  = [blk copy];
//    blk = tmp;
//}
//
//    
//    
//#pragma mark -
//#pragma mark - 5.__block变量存储域
////5.__block变量存储域
// 
//上面对Block进行了说明，下面对__block变量进行处理：
//Block从栈复制到堆时对__block变量产生的影响
//__block变量的配置存储域       Block从栈复制到堆时的影响
//    栈                          从栈复制到堆并被Block持有
//    堆                          被Block持有
// 
//1> 在一个Block中使用__block变量，则当该Block从栈复制到堆时，使用的所有__block变量也必定配置在栈上。
// 这些__block变量也全部被从栈复制到堆，此时，Block持有__block变量。
//2> 在多个Block中使用__block变量时，因为最先会将所有的Block配置在栈上，所以__block变量也会配置在栈上。
//在任何一个Block从栈复制到堆时，__block变量也会一并从栈复制到堆并被该Block所持有，当剩下的Block从栈复制到堆时，被复制的Block持有__block变量，并增加__block变量的引用计数
//3>如果配置在堆上的Block被废弃，那么它所使用的__block变量也就被释放
// 
//4>不管__block变量配置在栈上还是在堆上，都能够正确地访问该变量（同一个__block变量）（通过Block的复制，__block变量也从栈复制到堆，此时可同时访问栈上的__block变量和堆上__block变量）
//    
//eg:
//    __block int val = 0;
//    void(^blk)(void) = [^{++val;}copy];
//    ++val;
//    blk();
//    NSLog(@"%d",val);
//    
//    在变换Block语法的函数中，该变量val为复制到堆上的__block变量结构体实例，而使用的与Block无关的变量
//    val,为复制前栈上的__block变量结构体实例，但是栈上的__block变量用结构体实例在__block变量从栈复制
//    到堆上时，会将成员变量__forwarding的值替换为复制目标上的__block变量结构体实例的地址。
//    
//    
//#pragma mark - 6.截获对象
////6.截获对象
//
///*
// 在testBlk2方法中，测试5中，变量作用域结束的同时，变量array被废弃，其强引用失效，因此赋值给变量array
// 的NSMutableArray类的对象必定被释放并废弃
// */
//
//
//在OC中，C结构体不能附有__strong修饰符的变量。因为编译器不知道应何时进行Ｃ结构体的初始化和废弃操作
//不能很好的管理内存，但是OC的运行时库能够准确把握Block从栈复制到堆以及堆上的Block被废弃的时机，因此
//Block用结构体中即使含有__strong或__weak修饰符的变量，也可以恰当地进行初始化和废弃。为此需要使用用在
//__main_block_desc_0结构体中增加的成员变量copy和dispose，以及作为指针赋值给该成员变量的__main_block_copy_0
//函数和__main_block_dispose_0函数
//
//typedef void(*mblk_t) (id obj);
// struct __main_block_impl_0 {
//     struct __block_impl impl;
//     struct __main_block_desc_0* Desc;
//     id array;
//     __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, id _array, int flags=0) : array(_array) {
//         impl.isa = &_NSConcreteStackBlock;
//         impl.Flags = flags;
//         impl.FuncPtr = fp;
//         Desc = desc;
//     }
// };
// 
// static void __main_block_func_0(struct __main_block_impl_0 *__cself, id obj) {
//     id array = __cself->array; // bound by copy
//     
//     ((void (*)(id, SEL, ObjectType))(void *)objc_msgSend)((id)array, sel_registerName("addObject:"), (id)obj);
//     NSLog((NSString *)&__NSConstantStringImpl__var_folders_dh_kj1s8t2n65gfd3d70z_f20540000gn_T_block_767aca_mi_0,((NSUInteger (*)(id, SEL))(void *)objc_msgSend)((id)((NSMutableArray *)array), sel_registerName("count")));
// }
///*
//1>由于在源代码的Block用结构体中，含有附有__strong修饰符的对象类型变量array,所以需要恰当管理赋值给变
// 量array的对象。因此__main_block_copy_0()使用_Block_object_assign（）将对象类型对象赋值给Block
// 用结构体成员变量array中并持有该对象
// _Block_object_assign()调用相当于retain实例方法的函数，将对象赋值在对象类型的结构体成员变量中
// _Block_object_dispose()释放赋值在Block用结构体成员变量array中的对象，相当于release实例方法的函数
// 
// __main_block_copy_0()和__main_block_dispose_0()调用时机：
// __main_block_copy_0() :栈上的Block复制到堆时
//__main_block_dispose_0: 堆上的Block被废弃时
//    
//2>栈上的Block复制到堆的情况：
//.调用Block的copy实例方法
//.Block作为函数返回值返回时
//.将Block赋值给附有__strong修饰id类型的类或Block类型成员变量时(编译器自动地将对象的Block作为参数并调用_Block_copy())
//.在方法名中含有usingBlock的Cocoa框架方法或Grand Central Dispatch的API中传递Block时(在方法或函数内部对外传递过来的Block调用Bloc的copy实例方法或者_Block_copy())
//
//在上面这些情况下栈上的Block被复制到堆上，其实可归结为_Block_copy()被调用时Block从栈复制到堆
//在释放复制到堆上的Block后，谁都不持有Block而使其被废弃时调用dispose(),这相当于对象的dealloc实例方法
//有了这种构造，通过使用附有__strong修饰符的自动变量，Block中截获的对象就能够超出其变量作用域而存在
//*/
//static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {_Block_object_assign((void*)&dst->array, (void*)src->array,3 );}//3 BLOCK_FIELD_IS_OBJECT
//
//static void __main_block_dispose_0(struct __main_block_impl_0*src) {
//    _Block_object_dispose((void*)src->array, 3);
//}//BLOCK_FIELD_IS_OBJECT
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
//    void (*dispose)(struct __main_block_impl_0*);
//} __main_block_desc_0_DATA = {
//    0,
//    sizeof(struct __main_block_impl_0),
//    __main_block_copy_0,
//    __main_block_dispose_0
//};
//
//int main(int agrc,const char *aggv[]){
//    mblk_t mblk;
//  {
//      id array = ((NSMutableArray *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSMutableArray"), sel_registerName("new"));
//      mblk =(mblk_t)((id (*)(id, SEL))(void *)objc_msgSend)((id)((void (*)(id))&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, array, 570425344)), sel_registerName("copy"));
//  }
//  
//  ((void (*)(__block_impl *, id))((__block_impl *)mblk)->FuncPtr)((__block_impl *)mblk, ((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"), sel_registerName("new")));
//  ((void (*)(__block_impl *, id))((__block_impl *)mblk)->FuncPtr)((__block_impl *)mblk, ((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"), sel_registerName("new")));
//  ((void (*)(__block_impl *, id))((__block_impl *)mblk)->FuncPtr)((__block_impl *)mblk, ((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"), sel_registerName("new")));
////去掉转换
////(*blk->imp1.FuncPtr)(blk,[[NSObject new]);
//  return 0;
// /*
// 3>截获对象和使用_block变量里的不同
// 对象             BLOCK_FIELD_IS_OBJECT
// _block变量       BLOCK_FIELD_IS_BYREF
// 
// 通过BLOCK_FIELD_IS_OBJECT和BLOCK_FIELD_IS_BYREF参数，区分__main_block_copy_0()(copy函数)
// 和__main_block_dispose_0()(dispose函数)的对象类型还是__block变量
// 
// 但是与copy函数持有截获的对象，dispose函数释放截放的对象相同，copy函数持有使用的__block变量，dispose函数
// 函数释放使用的__block变量。
// 由此，Block中使用赋值全附有__strong修饰符的自动变量的对象和复制到堆上的__block变量由于被堆上的Block所持有
// 因而可超出其变量作用域而存在
//*/
//   }
//    
//#pragma mark - 7.__block变量和对象
////7.__block变量和对象
///*
// int main(int agrc,const char *aggv[]){
// 
// __block id obj = [[NSObject alloc]init];
// return 0;
// }
// */
////clang -rewrite-objc  -framework Foundation  block.m 转换如下：
//struct __Block_byref_obj_0 {
//    void *__isa;
//    __Block_byref_obj_0 *__forwarding;
//    int __flags;
//    int __size;
//    void (*__Block_byref_id_object_copy)(void*, void*);
//    void (*__Block_byref_id_object_dispose)(void*);
//    id obj;
//};
//
//
//1.这里出现了_Block_object_assign() 和_Block_object_dispose(),在Block中使用附有__strong
//修饰符的id类型或对象类型自动变量的情况下，当Block从栈复制到堆时，使用_Block_object_assign()
//持有Block截获的对象，当堆上的Block被废弃时，使用_Block_object_dispose(),释放Block截获的对象
//2.由此可知，即使对象赋值复制到堆上的附有__strong修饰符的对象类型__block变量中，只要__block
//变量在堆上继续存在，那么该对象就会继续处于被持有的状态，这与Block中使用赋值给附有__strong修饰符的
//对象类型自动变量的对象相同
//
//static void __Block_byref_id_object_copy_131(void *dst, void *src) {
//    _Block_object_assign((char*)dst + 40, *(void * *) ((char*)src + 40), 131);
//}
//static void __Block_byref_id_object_dispose_131(void *src) {
//    _Block_object_dispose(*(void * *) ((char*)src + 40), 131);
//}
//
//
//int main(int agrc,const char *aggv[]){
//    
//    __attribute__((__blocks__(byref))) __Block_byref_obj_0 obj = {
//        (void*)0,(__Block_byref_obj_0 *)&obj, 33554432, sizeof(__Block_byref_obj_0), __Block_byref_id_object_copy_131, __Block_byref_id_object_dispose_131,
//        ((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"), sel_registerName("alloc")), sel_registerName("init"))};
//    return 0;
//}
//
//3>Block测试1中 第6点
//输出全为0,这是由于__strong修饰符的变量array在该变量作用结束的同时被释放、废弃、nil被赋值在附
//有__weak修饰符的变量array1中
//
//4>Block测试1中 第7点
//输出也全为0，这是因为即使附加了__block说明符，附有__strong修饰符的变量array也会在该变量作用
//域结束的同时被释放废弃，nil被赋值在附有__weak修饰符的变量array2中
//
//5>lock测试1中 第8点
//赋值给附__unsafe_unretained修饰符变量的对象在通过该变量使用时，如果没有确保其确实存在，
//那么应用程序就会崩溃.__unsafe_unretained修饰符的变量只不过与指针相同，所以不管是在Block中使用还是附加到__block
//变量中，也不会像__strong修饰符或__weak修饰符那样进行处理，因此在使用附有__unsafe_unretained修饰符
//的变量时，注意不要通过悬垂指针访问已被废弃的对象
//
//ARC有效时，通过将象赋值给附加了__autoreleasing修饰的变量来替代调用autorelease方法,因为并没有设定上__autoreleasing修饰符与Block同进使用的方法，所以没有必要使用__autoreleasing修饰符,另外，
//它与__block说明符同时使用会产生编译错误：__block id __autoreleasing obj = NSObject.new;
//
//
//
//@end
//    
//#pragma mark - 8.__block变量和对象
////8.__block变量和对象
///*
// 如果在Block中使用附有__strong修饰符的对象类型自动变量，那么当Block从栈复制到堆时，该对象为Block
// 所持有，这样容易引起循环引用
// 
// */
//@implementation TObj
//-(instancetype)init{
//    self = [super init];
//    //1.
//    id __weak tmp = self;
//    tblk_ = ^{NSLog(@"self = %@",tmp);};
//    //tblk_ = ^{NSLog(@"self = %@",self);};
//    
//    //1.1.
//    id __unsafe_unretained utmp = self;
//    tblk_ = ^{NSLog(@"self = %@",utmp);};
//    
//    //2.
//    id __weak obj = obj_;
//    oblk_ = ^{NSLog(@"self = %@",obj);};
//    //oblk_ = ^{NSLog(@"self = %@",obj_);};
//    
//    //3.
//    __block id btmp = self;
//    bblk_ = ^{
//        NSLog(@"self = %@",btmp);
//        btmp = nil;
//    };
//    
//    return self;
//}
//
//- (void)execBlock{
//    bblk_();
//}
//
//- (void)dealloc{
//    NSLog(@"dealloc");
//}
//
//- (void)objcycleTest{
//    //1.//2.
//    id obj = [TObj new];
//    
//    //3.
//    [obj execBlock];
//    NSLog(@"%@",obj);
//}
//
//1.TObj类对象的Block类型成员变量tblk_持有赋值为Block的强引用：TObj类对像持有Block。
//init实例方法中执行Block语法使用附有__strong修饰符的id类型变量self,并且由于Block语法赋值在了
//成员变旦tblk_中，因此通过Block语法生成在栈上的Block此时由栈复制到堆，并持有所有使用的self.
//self持有Block，Block持有self,这正是循环引用。
//
//解决方法：
//声明附有__weak修饰符的变量，并将self赋值使用:
//id __weak tmp = self;
//tblk_ = ^{NSLog(@"self = %@",tmp);};
//
//由于Block存在时，持有该Block的TObj类对象赋值在变时tmp中的self必定存在，因此不需要判断变量tmp
//的值是否为nil;
//
//在iOS4，Snow Leopard的应用程序中，必须使用__unsafe_unretained修饰符代替__weak修饰符，在上面
//也可使用__unsafe_unretained修饰符，且不必担心悬垂指针：
//id __unsafe_unretained utmp = self;
//tblk_ = ^{NSLog(@"self = %@",utmp);};
//
//2.Block内没有使用self也同样截获了self,引起循环引用：
//oblk_ = ^{NSLog(@"self = %@",obj_);};
//obj_实际上截获了self,对编译器来说，obj_只不过是对象用结构体的成员变量:
//oblk_ = ^{NSLog(@"self = %@",self->obj_);};
//解决方法：
//声明附有__weak修饰符的变量，并将obj_赋值使用:
//id __weak tmp = self;
//tblk_ = ^{NSLog(@"self = %@",tmp);};
//
//也可用__unsafe_unretained修饰符代替__weak修饰符
//
//
//3.在为避免循环引用而使用__weak修饰符时，虽说可以确认使用附有__weak修饰符的变量是是否为nil,但
//更有必要使之生成以使用赋值给附有__weak修饰变量的对象
//还可用__block变量来避免循环引用
//    __block id btmp = self;
//    bblk_ = ^{
//        NSLog(@"self = %@",btmp);
//        btmp = nil;
//    };
//在上面3.中没有引起循环引用，但是如果不调用execBlock实例方法，即不执行赋值给成员变量bblk_的Block
//便会循环引用并引起内存泄漏，在生成并持有TObj类对象的状态下会引起以下循环引用：
//.TObj类对象持有Block
//.Block持有__block变量
//.__block变量持有TObj类对象
//
//通过执行execBlock实例方法，Block被实行，nil被赋值在__block变量btmp中，因此__block变量btmp对
//TObj类对象强引用失效。
//
//4.使用__block变量的优缺点
// 优点：
//.通过__block变量可控制对象的持有期间
//.在不能使用__weak修饰符的环境中不使用__unsafe_unretained修饰符即可（不必担心悬垂指针）
//.在执行Block时可动态地决定是否将nil或其他对象赋值在__block变量中
//缺点：
//.为避免循环必须执行Block
//    
//    
//    
//#pragma mark - 9.copy/release
////9.copy/release
//
//1>ARC无效时，要手动将Block从栈复制到堆，另外，由于ARC无效，要释放复制的Block，这时用copy实例
//方法来复制，用release实例方法来释放
//void (^blk_on_heap)(void) = [blk_on_stack copy];
//[blk_on_stack release];
//
//只要Block有一次复制并配置在堆上，就可通过retain实例方法持有，对于配置在栈上的Block调用retain实例
//方法则不起作任何作用，因此推荐用copy实例方法来持有Block
//[blk_on_heap retain];
//
//2>Blocks是Ｃ的扩展，所以在Ｃ中也可以使用Block语法，此时用Block_copy()/Block_release()代替
//copy/release实例方法，使用方法以及引用计数的思考方式与OC中的 copy/release实例方法相同。
//
//void (^blk_on_heap)(void) = Block_copy(blk_on_stack);
//Block_release(blk_on_stack);
//
//Block_copy()：之前出现过的_Block_copy函数，OC运行是库所使用的为Ｃ而准备的函数，释放堆上的Block时
//也同样调用OC运行库的Block_release函数。
//
//3>ARC无效时，__block说明符被用业避免Block中循环引用。
//这是由于当Block从栈复制到堆时，若Block使用的变量为附有__block说明符的id类型或对象类型的自动变量，
//不被被retain；若Block使用的变量为没有__block说明符的id类型或对象类型的自动变量，则被retain。
//在ARC有效时能够同__unsafe_unretained修饰符一样来使用。
//
//4>下面代码不管是ARC还是非ARC,都会引起循环引用：
//typedef void (^myblk_t)(void);
//@interface MyTest:NSObject{
//    myblk_t tblk_,
//}
//@end
//
//@implementation MyTest
//-(instancetype)init{
//    self = [super init];
//    tblk_ = ^{NSLog(@"self = %@",self);};
//    return self;
//}
//- (void)dealloc{
//    NSLog(@"dealloc");
//}
//
//int main(){
//    id o = [MyTest new];
//    NSLog("%@",o);
//    return 0;
//}
//@end
//
//
//这时可用__block变量来避免该问题
//-(instancetype)init{
//    self = [super init];
//    __block id tmp = self;
//    tblk_ = ^{NSLog(@"self = %@",tmp);};
//    return self;
//}
//5>由于ARC有效和无效时__block说明符的用途有很大区别，因此在编写源代码时，必须知道源代码在ARC有效情况
//下还是在无效情况下编译。
//
//
//@end
//    
//    
//    
//    
