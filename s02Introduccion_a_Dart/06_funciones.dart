void main(){

  print( saludarATodos() );
  print(saludo());
  print(sumarDosNumeros(10, 20));
  print(sumarDosNumeros2(7, 6));
  print(saludarPersona(nombre: 'Ulifly'));
  print(saludarPersona(mensaje: 'Bonjour', nombre: 'Zoquete 😂'));
}



String saludarATodos(){
  return "Bonjour pedazo de zoquetes 😜";
}

//también podemos hacer una función lambda

String saludo()=> "Hola simplemente";


int sumarDosNumeros( int a , int b) {  //podemos definir el tipo de datos que requieren los argumentos 
  return a + b;
}

//tarea convertir la función sumarDosNumeros a función flecha(lambda)

int sumarDosNumeros2(int a, int b) => a+b;

//podemos hacer opcional un argumento 

int sumarDosNumerosOpcional(int a, [int? b]) { //se pone entre corchetes para indicar que el valor es opcional y se pone el símbolo ? en el tipo para decirle a dart que es un entero opcional es decir que no reciba null
  b = b ?? 0; //la suma de a + b es potencialmente insegura podría no recibir un dato por lo cual sera null para eso hacemos una validación preguntamos con ?? si se recibió un valor si no pasamos un parámetro por defecto en este caso 0

  // b ??= 0    también se puede validar de esta forma

  return a + b; 
}

/// también podemos hacer la misma validación opcional como sigue:

int sumarDosNumerosOpcional2( int a, [int b=0] ){
  return a+b;
}

/// de la forma que hemos estado recibiendo los parámetros es de forma posicional, es decir el a es el primero por su posición y el b el segundo
/// podemos poner nombre a los parametros para decidir que se recibe

String saludarPersona({ required String? nombre, String? mensaje = 'hola' }){ //al envolver los parámetros entre llaves los vuelve opcionales en este caso a mensaje le asignamos un valor por defecto si no se recibe ningún parámetro, 
                                                                      //también con la palabra reservada required obligamos a pasar un parámetro a la variable nombre
  return '$mensaje, $nombre';
}