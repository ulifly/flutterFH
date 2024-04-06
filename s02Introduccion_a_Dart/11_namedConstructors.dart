void main(){

  /// aquí vamos a simular una respuesta desde http de un json 
  
  final Map <String, dynamic> rawJson = {
    'nombre' : 'Tony Stark',
    'nombreHeroe' : 'Iron-man',
    'poder ' : 'super inteligencia',
    'isAlive' : true
  };
  
final ironman = Heroe.fromJson( rawJson );
print(ironman);
 
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

  ///podemos crear varios constructores en una clase para adecuarlo a los argumentos recibidos
  ///en este caso crearemos un constructor para trabajar con el simulador de la respuesta http que creamos anteriormente

  
  Heroe.fromJson( Map<String, dynamic> json)
    : nombre = json['nombre'] ?? 'no se encuentra el nombre', 
      nombreHeroe = json['nombreHeroe'] ?? 'no se encuentra el nombre',
      poder = json['poder'] ?? 'no se encuentra poder', 
      isAlive = json['isAlive'] ?? 'no se encuentra información de vida';


  @override
  String toString() {
    return '$nombreHeroe - $poder - nombre real $nombre estado... => ${ isAlive ? 'disponible':'deceso'}';
    }
}
