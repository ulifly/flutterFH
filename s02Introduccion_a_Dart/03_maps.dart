
void main(){
  final Map <String, dynamic> heroe ={
  'name' :  "Ironman",
  'hp' : 1500,
  'isAlive' : true,
  'abilities' : <String> ["blast canon"],
  'sprites' : {
    01 : "ironman/main/01.jpg", 
    02 : "ironman/main/02.jpg"
    }

  }; 

  print( "Nombre: ${heroe['name']} " );

  //tarea imprimir los sprites por separado

  print(heroe['sprites'][01]);
  print(heroe['sprites'][02]);
}