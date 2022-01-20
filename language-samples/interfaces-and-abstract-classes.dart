class MockCleinteDao extends ClienteDao implements ClienteDaoI{
  var list = ["Andre", "Carlos", "Rodrigo"];
  @override
  getAll() {
    return list;
  }

  getByIndexI(int index) {
    // TODO: implement get
    return super.getByIndex(index, this.list);
  }
}

abstract class ClienteDaoI {
  getAll();
}

abstract class ClienteDao {
  getByIndex(int index, list){
      return list[index];
  }
}


void main(){
  var mdao = MockCleinteDao();
  print(mdao.getAll());; 
  print(mdao.getByIndexI(1));
}