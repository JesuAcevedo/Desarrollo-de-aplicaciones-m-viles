void main() {
  Person emp = new Person(name: 'Jesús', power: 'Acevedo', isAlive: true);

  Person emp2 = Person.fromJson({
    'name': 'YYY',
    'power': 'ZZZ',
    'isAlive': false,
  });
  print(emp);
  //print(emp.nombre);
  //print(emp.edad);
}

class Person {
  String name;
  String power;
  bool isAlive;

  Person({required this.name, required this.power, required this.isAlive});

  Person.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No Power',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Person(name: $name, power: $power, isAlive: $isAlive)';
  }
}
