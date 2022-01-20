import 'package:date_format/date_format.dart';

class Cliente{
  String nome;
  DateTime? dataNascimento;
  DateTime? dataRegisto;
  int? anoActual =  DateTime.now().year;

  //Campo somente leitura
  int? get idade{
    int? anoNascimento = this.dataNascimento?.year.toInt();
    return anoActual! - anoNascimento!;
  }

  String formataData(DateTime data){
    return formatDate(data, [dd, ' de ', MM, ' de ', yyyy]);
  } 

  //Construtor
  Cliente(this.nome, this.dataNascimento){
      this.dataRegisto = DateTime.now();
  }

//Cosntrutor que chama outro construtor
  Cliente.unlaunched(String nome):this(nome, null);

void describe(){
  print("Cliente: $nome");

  if(dataNascimento == null){
    print("A sua data é nula.");
  }else{
    String dataNascimentoFormatada = this.formataData(this.dataNascimento!);
    print("A sua data de nascimento é $dataNascimentoFormatada.");
    print("Você tem $idade anos de idade.");
  }
}
}

void main(){
  var edilson = Cliente("Edilson", DateTime(1999, 10, 27));
  edilson.describe();
}