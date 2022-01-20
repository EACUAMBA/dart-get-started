import 'classes.dart';

class ClientePro extends Cliente{
  int? comprasDoMes;
  int? get set => comprasDoMes;
  
  ClientePro(String nome, DateTime data,  this.comprasDoMes) : super(nome, data);

  void describe(){
    super.describe();
    print("$nome comprou cerca de $comprasDoMes produtos");
  }

}

void main(){
  var cpro = ClientePro("Edilson", DateTime(1999, 10, 27), 300);
  cpro.describe();
}