void main(){
  final numbers = [1,2,3,5,5,5,6,7,8,8,8,9,10];
  print('Lista original $numbers');
  print("longitud de la lista ${numbers.length}");
  print("primer elemento ${numbers.first}");
  print("ultimo elemento ${numbers.last}");
  final numerosInvertidos = numbers.reversed;
  print("Iterable $numerosInvertidos");
  print(numerosInvertidos.runtimeType);
  print('Lista de nuevo ${numerosInvertidos.toList()}');
  print("set de datos (datos unicos) ${numerosInvertidos.toSet()}");

  //se puede agregar funcionalidad logica a las listas con algunos metodos
  //en el siguiente ejemplo usaremos el metodo where

  final numerosMayoresA5 = numbers.where( (num) {
    return num>5;
  });
  print("mayores a 5 ${numerosMayoresA5.toSet()}");
}
