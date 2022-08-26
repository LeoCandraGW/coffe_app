class CoffeMenu{
  String name;
  String price;
  String imageAsset;

  CoffeMenu({
    required this.name,
    required this.price,
    required this.imageAsset,
  });
}
var coffeMenuList = [
  CoffeMenu(
    name: 'Expresso',
    price: 'Rp 20.000',
    imageAsset: 'images/Expresso.jpg',
    ),
   CoffeMenu(
    name: 'Cafe Latte',
    price: 'Rp 25.000',
    imageAsset: 'images/Cafe_Latte.jpg',
   ),
   CoffeMenu(
    name: 'Capucino',
    price: 'Rp 30.000',
    imageAsset: 'images/Capucino.jpg',
   ),
   CoffeMenu(
    name: 'Caramel Latte',
    price: 'Rp 35.000',
    imageAsset: 'images/Caramel_Latte.jpg',
   ),
   CoffeMenu(
    name: 'Vanila Latte',
    price: 'Rp 40.000',
    imageAsset: 'images/Vanila_Latte.jpg',
   ),
];