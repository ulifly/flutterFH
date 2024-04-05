void main(){
  final spiderman = Heroe(
    nombreHeroe: 'Spiderman',
    nombre: 'Peter Parker',
    poder: 'poderes aracnidos',
    isAlive: true

  );

  final wolverine = Heroe(
    nombreHeroe: 'Wolverine',
    nombre: 'Logan',
    poder: 'Regeneracion',
    isAlive: false
  );



  print(spiderman);
  print(wolverine);
}

class Heroe {
  String nombre;
  String nombreHeroe;
  String poder;
  bool isAlive;

  Heroe ({
    this.nombre = 'desconocido',
    required this.nombreHeroe,
    this.poder = 'sin poder',
    required this.isAlive

  });

  @override
  String toString() {
    return '$nombreHeroe - $poder - nombre real $nombre estado ${ isAlive ? 'disponible':'deceso'}';
    }
}
