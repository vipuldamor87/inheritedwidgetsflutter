
abstract class Database{
  String Name();
  String Phone();
}

class Data implements Database{

  @override
  String Name(){
    String DisplayName = "Developer Vipul";
    return DisplayName;
  }

  @override
  String Phone(){
    String phone = "+918200743777";
    return phone;
  }
}