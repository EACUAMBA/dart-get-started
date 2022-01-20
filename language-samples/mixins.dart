import 'inheritance.dart';

mixin Fragues{
  int comefree = 2;
  void temDesconto(){
    print('pode comer $comefree pratos');
  }
}

class Clientefragues extends ClientePro with Fragues{

  Clientefragues(String nome, DateTime data, int compras, int comefree):super(nome, data, compras){
    this.comefree = comefree;
  }
}

void main(){
  var fragues = Clientefragues("Edilson Cuamba", DateTime(199, 10, 27), 10, 200);
  fragues.describe();
  fragues.temDesconto();
}