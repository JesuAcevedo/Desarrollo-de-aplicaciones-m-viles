abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Caminar {
  void caminar() => print('estoy caminando');
}

mixin Nadar {
  void nadar() => print('estoy nadando');
}

mixin Volar {
  void volar() => print('estoy volando');
}

class Delfin extends Mamifero with Nadar {}
class Murcielago extends Mamifero with Caminar, Volar {}
class Gato extends Mamifero with Caminar {}
class Paloma extends Ave with Caminar, Volar {}
class Pato extends Ave with Caminar, Volar, Nadar {}
class Tiburon extends Pez with Nadar {}
class PezVolador extends Pez with Nadar, Volar {}