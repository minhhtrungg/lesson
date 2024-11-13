
class Animal {
  String name;
  int age;

  Animal({required this.name, required this.age});
}

void main() {
  Animal myAnimal = Animal(name: 'Lion', age: 5);
  print('Name: ${myAnimal.name}, Age: ${myAnimal.age}');
}
