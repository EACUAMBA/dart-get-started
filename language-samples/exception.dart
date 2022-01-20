import 'dart:io';

main() {
  if (true == true) {
    //throw StateError("Error");
  }

  print("Parou a exec.");

  try {
    for (final letter in "Edilson Cuamba".split("")) {
      print(letter);
      if (letter == " ") {
        throw Exception("Encontramos espaço em branco.");
      }
    }
  } on IOException catch (e) {
    print(e);
  } finally {
    print("Finally");
  }
}
