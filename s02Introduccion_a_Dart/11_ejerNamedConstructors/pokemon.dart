///en este ejercicio vamos a repasar los constructores y constructores con nombre
///vamos a crear la clase Pokemon y su constructor asi como un constructor con nombre para una respuesta json
///crearemos diferentes tipos de datos en los argumentos y formatearemos la salida con saltos de linea

void main () {

  final Map <String, dynamic> pokeweb551 = {
    'nombre' : 'Sandile',
    'numeropoke' : 551 ,
    'habilidades' : [
        'intimidate',
        'moxie',
        'anger-point'
      ],
    'hp' : 50,
    'ataque' : 72,
    'defensa' : 35,
    'velocidad' : 65,
  };
    final Map <String, dynamic> pokeweb627 = {
    'nombre' : 'rufflet',
    'numeropoke' : 627 ,
    'habilidades' : [
        'keen-eye',
        'sheer-force',
        'hustle'
      ],
    'hp' : 70,
    'ataque' : 83,
    'defensa' : 50,
    'velocidad' : 60,
  };

final sandile = Pokemon.fromJson(pokeweb551);
final rufflet = Pokemon.fromJson(pokeweb627);

print(sandile);
print(rufflet);

}

class Pokemon{
  String nombre;
  int numeropoke;
  List habilidades;
  int hp;
  int ataque;
  int defensa;
  int velocidad;

  Pokemon({
    required this.nombre,
    required this.numeropoke,
    required this.habilidades,
    required this.hp,
    required this.ataque,
    required this.defensa,
    this.velocidad = 0
  });

  Pokemon.fromJson(Map <String, dynamic> fromWeb)

    : nombre = fromWeb['nombre'] ?? 'no se encuentra nombre',
      numeropoke = fromWeb['numeropoke'] ?? 0 ,
      habilidades = fromWeb['habilidades'] ?? {},
      hp = fromWeb['hp'] ?? 0,
      ataque = fromWeb['ataque'] ?? 0,
      defensa = fromWeb['defensa'] ?? 0,
      velocidad = fromWeb['velocidad'] ?? 0;
@override
String toString() {
  
    return 'no:$numeropoke ---$nombre--- \nHabilidades: $habilidades \n=> Hp: $hp \n=> ataque: $ataque \n=> defensa: $defensa \n=> velocidad: $velocidad \n' ;
  }

}