
class Database{
  static Database? _singleInstance;

   Database? _createDatabase() {
    _singleInstance ??= Database();
      return _singleInstance ;

  }
}
class Client{
Database? instance1 = Database()._createDatabase();
Database? instance2 = Database()._createDatabase();
void equal(){
  if(instance1 == instance2){
    print('only one instance is made of class (Singleton concept)');
  }else{
    print("you aren't apply the concept of singleton");
  }

}
}
void main(){
  Client client = Client();
  client.equal();
}