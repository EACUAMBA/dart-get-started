int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var fibonaci_parameter = 10;
var fibonacci_result = fibonacci(fibonaci_parameter);

var foods = ["Matapa", 'Arroz', "Feijoada", "Frango Assado", "Nhangana"];

void main(){
  print("The fibonacci result for " + fibonaci_parameter.toString() + " is " + fibonacci_result.toString());
  foods.where((element) => element.endsWith("apa")).forEach(print);
}