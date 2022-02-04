void main(List<String> args) {
  print(stringToInt('d').toString());
}

int stringToInt(String text) {
  int value = 0;
  try {
    value = int.parse(text);
  } catch (e) {
    throw new Exception("O valor \"$text\" que passaste não é válido.");
  }
  return value;
}
