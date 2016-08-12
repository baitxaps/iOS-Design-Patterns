# IteratorPattern

迭代器模式：
Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation(它提供一种方法访问一个容器对象中各个元素，而又不需暴露该对象的内部细节)
Iterator抽象迭代器：抽象迭代器负责定义访问和遍历元素的接口
ConcreteIterator具体迭代器：具体迭代器角色要实现迭代器接口，完成容器元素的遍历
Aggregate抽象容器：容器角色负责提供创建具体迭代器角色的接口，必然提供一个类似createIterator()这样的方法，在Java中一般是iterator()方法
Concrete Aggregate具体容器：具体容器实现容器接口定义的方法，创建出容纳迭代器的对象

迭代器现在应用得很广泛，已经成为了一个最基础工具，一些大师级人物甚至建议把迭代器从23个模式中删除，为什么呢？因为现在它太普通了，已经融入到各个语言和工具中了，如PHP,Perl也有它的存在，甚至是前台的页面技术AJAX也有它的出现，基本上，只要你不是在使用那些古董级(指版本号)的编程语言的话，都不用自己动手写迭代器
