






// abstract class DB {
//   remove();
// }

// abstract class DB1 {
//   add();
// }

// class Mysql implements DB,DB1 {
//   @override
//   add() {
//     // TODO: implement add
//     return null;
//   }

//   @override
//   remove() {
//     // TODO: implement remove
//     return null;
//   }
// }



// mixins 模拟多继承
// mixins 的类只可以继承于 Object 的类
// mixins 的类不可以有构造方法
// mixins 不是继承 也不是接口

class Base {
  remove(){}
}

class DB extends Object{
  remove(){}
}

class DB1 {
  add(){}
}


class Mysql with DB,DB1 {

}

class Mssql extends Base with DB,DB1 {

}

run(){
  Mysql s = Mysql();
  s.remove();
  s.add();
}