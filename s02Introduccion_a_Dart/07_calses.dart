/*
Una clase en Dart es una plantilla o molde que se utiliza para crear objetos. 
Una clase contiene propiedades y métodos que definen las características 
y el comportamiento de los objetos que se crean a partir de ella. En Dart, 
todas las clases se derivan de la clase base llamada "Object". 
Las clases en Dart se utilizan para implementar la programación orientada a objetos 
y permiten la reutilización de código a través de la herencia y las mezclas.
*/

void main() {
  final wolverine = new Hero('Logan', 'Regeneracion');
  print(wolverine);
  print(wolverine.nombre);
  print(wolverine.poder);

  final pickachu = Pokemon(poder: 'impactrueno', nombre: 'pickachu');
  print(pickachu);
  print(pickachu.nombre);
  print(pickachu.poder);
}

class Hero {   // esta es la clase llamada Hero 
  String nombre;
  String poder;

  // Hero( String pNombre, String pPoder ) //este es el constructor
  //   : nombre = pNombre,
  //     poder = pPoder;
/// tambien podemos hacer el constructor de la siguiente forma
   Hero(this.nombre, this.poder);
}

  /*
  En Dart, un constructor es un método especial que se utiliza para inicializar un objeto 
  cuando se crea en el programa. Todos las clases tienen un constructor predeterminado 
  que es creado por el compilador cuando se llama a la clase, 
  pero también se puede definir un constructor propio.

Los constructores en Dart tienen el mismo nombre que el nombre de la clase y no tienen 
un tipo de retorno. Pueden tener parámetros para recibir valores que se utilizarán 
para inicializar las propiedades del objeto.

Aquí hay algunos puntos clave sobre los constructores en Dart:

    Los constructores se utilizan para inicializar objetos cuando se crean.
    Tienen el mismo nombre que la clase y no tienen un tipo de retorno.
    Pueden tener parámetros para recibir valores que se utilizarán para inicializar las propiedades del objeto.
    Si una clase no define ningún constructor, se crea automáticamente un constructor predeterminado sin argumentos.
    Se pueden definir múltiples constructores en una clase, incluso con el mismo nombre, utilizando constructores con nombre.
    Los constructores también se pueden utilizar para crear objetos constantes si todas las propiedades de la clase son finales.

  */

  /*
  el ejemplo anterior es si usamos el constructor de forma posicional pero podemos hacerlo
  con argumentos por nombre
   */

  class Pokemon {
    String nombre;
    String poder;

    Pokemon ({ 
      required this.nombre,
      required this.poder
    });

    @override
    String toString() {
    return '$nombre - $poder'; 
    }

  }

  //podemos sobrescribir metodos heredados y como buena practica debemos informar con @override
  //en el ejemplo de arriba sobrescribimos el metodo to_String para que nos devueva los datos de 
  //la instancia