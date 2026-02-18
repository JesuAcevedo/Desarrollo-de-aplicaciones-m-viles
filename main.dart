void main() {
  Person emp = Person(name: 'Jesús', power: 'Acevedo', isAlive: true);

  Person emp2 = Person.fromJson({
    'name': 'YYY',
    'power': 'ZZZ',
    'isAlive': false,
  });

  print(emp);
  print(emp2);

  
  emp.saludar();
  emp.cambiarPoder('Programador');

  
  print(emp.obtenerNombre());
  emp.revivir();

  print(emp);
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

  
  void saludar() {
    print('Hola, soy $name');
  }

 
  void cambiarPoder(String nuevoPoder) {
    power = nuevoPoder;
  }

  
  String obtenerNombre() => name;

 
  void revivir() => isAlive = true;

  @override
  String toString() {
    return 'Person(name: $name, power: $power, isAlive: $isAlive)';
  }
}
