void Show(data) {
  for (var i in data) {
    return i;
  }
}

void num1() => print("1");
void num2() => print("2");
void num3() => print("3");

void main() {
  var lst = [num1(), num2(), num3()];
  Show(lst);
}
