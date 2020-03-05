int func0(int c, [bool cc]) {
  return 1;
}

int func1(int c, {bool a}) {
  return 1;
}

func2() {
  print("object");
}

func3(fun) {
  fun();
}

main() {
  func0(1, true);
  func1(100, a: true);

  List list = ["a"];
  list.forEach((v) {
    print("$v");
  });
  list.forEach((v) => print("$v"));

// 闭包
  var fun = () {
    var a = 100;
    return () {
      a++;
      print(a);
    };
  };
  var b = fun();
  b();
  b();
  b();
}

class Person {
  String name;
  int age;

  get mes {
    return 10;
  }

  set messs(v) {}

  Person(this.name, {this.age});

  //  :this.age=10 在这个方法调之前初始化
  Person.now() : this.age = 10 {
    this.name = "jack";
    this.age = 10;
  }

  Person.yellow(this.name) {
    this.name = "jack";
    this.age = 10;
  }

  Person.now11(String name, [int age = 10]) {
    this.name = name;
    this.age = age;

    var p = Person("name");
    p
      ..age = 10
      ..name = "";
  }
}

a() {
  Person.now();
  Person("name");
  Person("name", age: 10);
  Person.yellow("name");
}

// 抽象类
// 抽象类不可以直接使用 只可以继承出来使用
abstract class Animal {
  // 抽象方法
  void eat();
  void run() {
    print("run ...");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("dog eat ...");
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("cat eat ...");
  }
}
// 多态


// 接口
abstract class DB {
  String url;
  add();
  remove();
  save();
}

class Mysql implements DB {
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  remove() {
    // TODO: implement remove
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String url;
}

class Mssql implements DB {
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  remove() {
    // TODO: implement remove
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String url;
}




aaaa(){
}

