///en este ejercicio vamos a repasar los constructores y constructores con nombre
///vamos a crear la clase Simpson y su constructor asi como un constructor con nombre para una respuesta json
///crearemos al menos 3 instancias con al menos 3 argumentos 

 void main(){

  final Map<String, dynamic> http = {
    'nombre' : 'Lisa',
    'edad' : '8',
  };
  final Map<String, dynamic> http2 = {
    'nombre' : 'Bart',
    'edad' : '10',
    'fraseCaracteristica' : 'ay caramba'
  };
  final Map <String, dynamic> http3 = {
    'nombre' : 'Homero',
    'edad' : '38',
    'fraseCaracteristica' : 'Dho'
  };
  final Map <String, dynamic> http4 = {
    'nombre' : 'Marge',
    'edad' : '34',
    'fraseCaracteristica' : 'hmmmp'
  };


  final marge =Simpson.fromWeb(http4);
  final lisa = Simpson.fromWeb(http);
  final homero = Simpson.fromWeb(http3);
  final bart = Simpson.fromWeb(http2);


  print(homero);
  print(marge);
  print(bart);
  print(lisa);


 }


class Simpson{
    String nombre;
    String edad;
    String fraseCaracteristica;

    Simpson({
      required this.nombre,
      this.edad = 'Sin dato de edad',
      this.fraseCaracteristica = 'Sin frase o cliche'

    });

    Simpson.fromWeb( Map <String, dynamic> http )
    : nombre = http['nombre'] ?? 'no se encontró el nombre',
      edad = http['edad'] ?? 'edad desconocida',
      fraseCaracteristica = http['fraseCaracteristica'] ?? 'Sin frase o cliche';
  
  @override
  String toString() {
    return 'nombre $nombre Simpson edad $edad años, su cliche es: "$fraseCaracteristica" ';
  }  
}
