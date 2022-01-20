var age = 22;
var foods = ["Matapa", 'Arroz', "Feijoada", "Frango Assado", "Nhangana"];

void main() {
  if (age > 18) {
    print("Your are older, you can drink.");
  } else {
    print("You are too young, you connot drink.");
  }

  print("");

  for(final food in foods){
    print(food);
  }


  print("");

  for(int food_index = 0; food_index < foods.length; food_index++){
    print(foods[food_index]);
  }

print("");

  int food_index = 0;
  while(food_index < foods.length){
    print(foods[food_index]);
    food_index++;
  }

}
