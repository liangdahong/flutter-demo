




// 泛型
T getData<T>(T str){
  return str;
}
void test() {
  String s = getData<String>("str");
  print(s);
}


class A<T> {
  T obj;
  T add(T n){
    return n;
  }
}

void test1() {
  A t = new A<String>();  
  t.add(100);

  int num = 10;
  t.add(num);
  
}
