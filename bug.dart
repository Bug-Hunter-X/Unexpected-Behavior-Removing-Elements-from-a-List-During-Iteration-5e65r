```dart
class MyClass {
  final String name;
  MyClass(this.name);
}

void main() {
  var myList = <MyClass>[MyClass('a'), MyClass('b')];
  myList.removeWhere((element) => element.name == 'a');
  print(myList.length); //This will print 1, which is the expected behavior

  myList = <MyClass>[MyClass('a'), MyClass('b')];
  myList.removeWhere((element) {
    if (element.name == 'a') {
      return true;
    }
    return false; 
  });
  print(myList.length); // This will also print 1, which is the expected behavior

  myList = <MyClass>[MyClass('a'), MyClass('b')];
  for (var element in myList) {
    if (element.name == 'a') {
       myList.remove(element);
    }
  }
  print(myList.length); //This will print 2, which is unexpected
}
```