
var nome = 'Edilson Alexandre Cuamba';
var year = 1999;
var height = 1.68;
var parents = ['Alexandre', 'Leia'];
var other_info = {
  'hobby': ['Trader', 'Programmer'],
  'broker': 'HotForex'
};

void main(){
  print('Imprimindo dados de ' + nome);
  print('Altura:  ' + height.toString());
  print('Ano de nascimento: ' + year.toString());
  print('Meus pais: ' + parents.toString());
  print('Outras informações: ');
  other_info.keys.forEach((element) {
    print(element + ": " +  other_info[element].toString());
  });
}
