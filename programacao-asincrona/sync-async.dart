void main() {
  //Na programação sincrona a execução é feita em ordem uma a uma, é como se estivessem em um loop.
  // for (int i = 0; i < 5; i++) {
  //   print("Imprimindo: " + i.toString());
  // }

  //Na progamação asincrona a execução é em paralelo e enão se determina quem será o proximo a executar, apenas esperamos que execute o mais rápido.
  //No dart usamo o Future para programar async, ele é equivalente as promisses do JavaScript

  //Executa depois de um tempo especifico.
  print("First time: " + DateTime.now().second.toString());
  Future delaydExecution5Seconds = Future.delayed(Duration(seconds: 5));
  delaydExecution5Seconds.then((value) => {
        print("Após 5 segundos"),
        print("In future time: " + DateTime.now().second.toString())
      });
  print("Last time: " + DateTime.now().second.toString());

  while (true) {
    print("Edilson");
  }
}
