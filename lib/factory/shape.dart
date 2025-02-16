abstract class Shape{
  void revealMe() ;
}
class Rectangle extends Shape{
  @override
  void revealMe() {
    print('You choose to print rectangle');
  }

}
class Circle extends Shape{
  @override
  void revealMe() {
    print('You choose to print circle');
  }

}
class Square extends Shape{
  @override
  void revealMe() {
    print('You choose to print square');
  }

}
class ShapeFactory{
  Shape? getShape(String shapeType){
    switch (shapeType.toLowerCase()){
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        print('Invalid Shape');
        return null;
    }
  }
}
class Client{
  ShapeFactory shapeFactory = ShapeFactory() ;
   detectShape(String shapeType) {
    Shape? shape = shapeFactory.getShape(shapeType);
    if(shape!=null){
      shape.revealMe();
    }
  }
}

void main(){
  Client client = Client();
  client.detectShape('circle');
  print('======================');
  client.detectShape('Rectangle');
  print('======================');
  client.detectShape('Square');

}