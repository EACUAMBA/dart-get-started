import 'dart:io';

const oneSecond = Duration(
  seconds: 5
);

Future<void> printWithDelay(String message) async{
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay_2(String message){
  return Future
  .delayed(Duration(
    seconds: 10
  ))
  .then((value) => {
    print(message),
  });
}

Future<void> createDescription(Iterable<String> objects) async{
  for(final object in objects){
    try{
      var file = File('$object.txt');

      if(await file.exists()){
        var modified = await file.lastModified();
        print('File for $object  already exits. it was modified on $modified');
        continue;
      }
      await file.create();
      await file.writeAsString("Start describing $object in this file.");
    }on IOException catch (e){
      print("Cannot create description for object: $e");
    }
  }
}

Stream<String> report(Iterable<String> nomes) async* {
  for(String n in nomes){
    await Future.delayed(oneSecond);
    yield '${n.toUpperCase()}  as $n';
  }
}

main(){
  printWithDelay("Edilson Alexandre Cuamba");
  printWithDelay_2("Edilson Alexandre Cuamba");
  createDescription(['object']);
  report(['Andre', 'Luis', 'Carlos']).forEach(print);
}