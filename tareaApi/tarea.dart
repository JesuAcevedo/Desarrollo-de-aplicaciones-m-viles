void main() {

  Person emp = Person(name:'Jesus', power:'Acevedo', isAlive:true);

  Person emp2 = Person.fromJson({
    'name' : 'YYY',
    'power' : 'ZZZ',
    'isAlive': false
  });

  print(emp);
  print(emp2);

  print(saludar());
  print(suma(10,20));
}


class Person {

  String name;
  String power;
  bool isAlive;

  Person({required this.name, required this.power, required this.isAlive});

  Person.fromJson(Map<String,dynamic> json)
      : name = json['name'] ?? 'No name',
        power = json['power'] ?? 'No Power',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Person(name: $name, power: $power, isAlive: $isAlive)';
  }
  
}
String saludar() {
  return 'Hola mundo';
}

int suma(int a, int b) {
  return a + b;
}

