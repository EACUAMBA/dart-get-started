import 'package:date_format/date_format.dart';

void main(){
  print(formatDate(DateTime(1999, 10, 27), [dd, ' de ', MM, ' de ', yyyy]));
}