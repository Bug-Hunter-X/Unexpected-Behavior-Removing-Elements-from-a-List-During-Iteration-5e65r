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
  // Correct approach: Create a copy of the list to iterate over
  List<MyClass> myListCopy = List.from(myList);
  for (var element in myListCopy) {
    if (element.name == 'a') {
      myList.remove(element);
    }
  }
  print(myList.length); //This will print 1
}
```