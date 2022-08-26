import 'package:coffe_app/home_screen.dart';
import 'package:coffe_app/menu_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  final CoffeMenu menu;
  const OrderScreen({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrains) {
        return OrderDetail(menu: menu);
      },
    );
  }
}

class OrderDetail extends StatelessWidget {
  final CoffeMenu menu;
  const OrderDetail({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(menu.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF42855B),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                menu.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: <Widget>[
                  const Icon(Icons.monetization_on),
                  const SizedBox(height: 8.0),
                  Text(menu.price),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF42855B),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                child: Text(
                  'Order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text('Terimakasih Order Anda Sedang Diproses'),
                      );
                    }
                  );
                },
              ),
              margin: const EdgeInsets.only(top: 50.0, bottom: 50.0),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.star : Icons.star_border,
        color: Color(0xFFD2D79F),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
