import 'package:flutter/material.dart';
import 'package:coffe_app/menu_list.dart';
import 'package:coffe_app/order_screen.dart';

class MenuScreen extends StatelessWidget{
  const MenuScreen ({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
          child: Text('Daafn Coffe'),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return MenuListList();
          // if (constraints.maxWidth <= 600) {
          //   return tourismPlaceListt();
          // } else if(constraints.maxWidth <1200){
          //   return TourismPlaceGrid(gridCount:4);
          // } else{
          //   return TourismPlaceGrid(gridCount:6);
          // }
        },
      ),
    );
  }

}

class MenuListList extends StatelessWidget{
  const MenuListList({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
      itemBuilder: (context, index){
        final CoffeMenu menu = coffeMenuList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return OrderScreen(menu: menu,);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(menu.imageAsset),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          menu.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(menu.price),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: coffeMenuList.length,
    );
  }
}