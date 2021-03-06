# 2.10 集合和文件

## 1. 集合

> 确定的无序的一组数据就是集合。
>
> - 集合中的值不会重复(唯一)
> - 集合中的元素没有任何顺序
> - 集合中可以使用整数，浮点数，布尔值，复数，字符串，元组，冰冻集合

### 1.1  集合的内置函数

**add()**

```
向集合中添加一个元素
格式:集合.add(值)
返回值：None
注意：直接改变原有集合
```

```python
# s.add(7)
# print(s)
```

**pop()**

```
随机删除集合中的一个元素
格式：集合.pop()
返回值：删除的那个元素
注意：直接改变原有集合
```

```python
# s.pop()
# print(s)
```

**remove()**

```
删除集合中的某个元素
格式：集合.remove(值)
返回值：None
注意：直接改变原有集合
```

```python
# s.remove(7)
# print(s)
```

**discard()**

```
删除集合中的某个元素
格式：集合.dicard(值)
返回值：None
注意：直接改变原有集合
```

> remove移除非成员值会报错，discard移除非成员值，啥也不错！

```python
# s.discard(9)
# print(s)
```

**clear()**

```
清空集合
格式：集合.clear()
返回值：None
注意：直接改变原有集合
```

```python
# s.clear()
# print(s)
```

**copy()**

```
复制集合
格式：集合.copy()
返回值：复制的一份集合
```

```python
# s2 = s.copy()
# print(s2)
```

**difference()**

```
差集
格式:集合1.difference(集合2)
返回值：集合
操作：获取存在于集合1但是不存在与集合2中的数据的集合
```

```python
# result = x.difference(y)
# result1 = y.difference(x)
# print(result)
# print(result1)
```

**difference_update()**

```
差集 更新
格式:集合1.difference(集合2)
返回值：无 直接将结果赋值给集合1
操作：获取存在于集合1但是不存在与集合2中的数据的集合
```

```python
# x.difference_update(y)
# print(x)
```

**intersection()**

```
交集
格式：集合1.intersection(集合2)
返回值：集合
操作：获取即存在于集合1又存在于集合2中的数据组成的集合
```

```python
# result = x.intersection(y)
# print(result)
```

**intersection_update()**

```
交集更新
格式：集合1.intersection_update(集合2)
返回值：None  直接将结果赋值给集合1
操作：获取即存在于集合1又存在于集合2中的数据组成的集合
```

**union()**

```
并集
格式：集合1.union(集合2)
返回值：集合
操作：将集合1和集合2中所有数据新建一个集合（去重）
```

```python
# result = x.union(y)
# print(result)
```

**update()**

```
并集更新
格式：集合1.update(集合2)
返回值：无   直接将结果赋值给集合1
操作：将集合1和集合2中所有数据新建一个集合(去重)
```

**issuperset()**

```
检测一个集合是不是另外一个集合的超集
格式:集合1.issuperset(集合2)
返回值:布尔值
```

```python
# result = y.issuperset(z)
# print(result)
```

**issubset()**

```
检测一个集合是不是另外一个集合的字节
格式：集合1.issubset(集合2)
返回值：布尔值
```

```python
# result = z.issubset(y)
# print(result)
```

**isdisjoint()**

```
检测2个集合是否不相交
格式：集合1.isdisjoint(集合)
返回值：布尔值
```

**symmetric_difference()**

```
对称差集操作
格式：集合1.symmetric_difference（集合2）
返回值：集合
操作：将集合1和集合2不相交的部分取出组成的新的集合
```

```python
# result = x.symmetric_difference(y)
# result1 = y.symmetric_difference(x)
# print(result)
# print(result1)
```

**symmetric_difference_update()**

```
对称差集更新操作
格式：集合1.symmetric_difference（集合2）
返回值：None 直接将结果赋值给集合1
操作：将集合1和集合2不相交的部分取出组成的新的集合
```

### 1.3 冰冻集合

**创建空的冰冻集合**

```
变量 = frozenset()
```

**创建多个元素的集合**

```
变量 = frozenset(容器类数据)
```

```python
s = frozenset()
print(type(s))

s1 = frozenset([1,2,3,6,54])
print(s1)
```



## 2. 文件操作

### 2.1 open()语法

```
功能：打开或者创建一个文件
格式：open('文件路径','打开模式')
返回值：文件io对象
```

**语法** `file_object = open(path,method)`

- **path 文件的路径和名称  格式为字符串**

- **method 文件打开的权限  格式为字符串**

  - **w 写权限  如果没有这个文件  自动创建一个  如果有这个文件  那么将会覆盖掉之前的内容。**

    - ```python
      f = open("user.txt","w",encoding="utf-8")
      #write()  向对应的文件中写入文件
      f.write("早诊断、早隔离、早治疗")
      #close()  关闭文件
      f.close()
      ```

  - **a 追加写  如果没有这个文件  自动创建一个  如果有这个文件  那么就在文件末尾进行追加**

    - ```python
      f = open("user.txt","a",encoding="utf-8")
      f.write("钟南山说：“输入病例的感染性很强，一点都不能放松")
      # 写操作   是将要写入的内容先写到缓冲区
          # 当程序运行结束        自动写入
          # 当文件关闭            自动写入
          # 当缓冲区被写满        自动写入
          # flush()刷新缓冲区     立即写入
      f.flush()
      while True:
          pass
      ```

  - **r 读操作**

    - ```python
      f = open("user.txt","r",encoding="utf-8")
      # read() 读取全文
      # content = f.read()
      # print(content)
      
      #readline()  读一行
      contents = f.readline()
      print(contents)
      
      #readlines() 以行为单位读取全文
      result = f.readlines()
      print(result)
      f.close()
      ```

  - **wb 二进制写入**

    - ```python
      f = open("user.txt","wb")
      str1 = "大金链子小手表"
      # encode() 对数据进行指定格式的编码
      # f.write("大金链子小手表".encode("utf-8"))
      f.write(str1.encode("utf-8"))
      f.close()
      ```

  - **rb二进制读取**

    - ```python
      f = open("user.txt","rb")
      # decode() 对数据进行指定格式的解码
      content = f.read().decode("utf-8")
      print(content)
      ```

### 2.2 with open()语法

```python
with open("user.txt","a+") as f:
    #此处的文件对象f 是一个局部变量
    # tell() 告诉我们当前光标在什么位置
    content = f.read()
    print(f.tell())
    f.seek(10,0)
    print(f.tell())
    result = f.readline()
    #seek(offset,whence)  whence代表参考位置  offset代表字节数
        # whence = 0    以开头为参考位置
        # whence = 1    以当前为参考位置  (3.x取消了此项功能)
        # whence = 2    以结尾为参考位置  (3.x取消了此项功能)
    print(result)
```

---
## Copyright

![Logo](../../joint_logo.png)