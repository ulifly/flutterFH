
void main(){
  final String heroe = "Ironman";
  final int hp = 1500;
  final bool isAlive = true;
  final List <String> abilities = ["blast canon"];
  final List <String> sprites = ["ironman/main/01.jpg", "ironman/main/02.jpg"];

  //Dynamic
  dynamic errorMessage = "Error 404";
  errorMessage = true;
  errorMessage =[];
  errorMessage = {};
  errorMessage = () => true;
  errorMessage = null;  
  
print("""
  $heroe
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
"""
);
}