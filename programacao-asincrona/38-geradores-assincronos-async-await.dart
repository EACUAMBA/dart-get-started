void main(List<String> args) {
  print4(4);
}

//Para deixar um metodo async devemos após os parentesis de parametros definir um async isso vai fazer com o metodo não retorne mais um valor literal mas sim um wrapper Future<valor> com o valor. que vamos acessar somente quando esse metodo for executado.
Future<void> print4(var v) async {
  //await diz que a eexecução deve travar e esperar até que o resultado chege para poder continuar. Faz a execução ser sincrona.
  await Future.delayed(Duration(seconds: 5));
  print(v);
}
