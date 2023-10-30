import 'package:flutter/material.dart';
import 'image_screen1.dart';
import 'image_screen2.dart';
import 'image_screen3.dart';

class ImageViewerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Переглядач картинок"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Переглядач автомобілів", style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCarButton(
                    context,
                    "BMW",
                    "https://st3.depositphotos.com/1012627/13762/i/600/depositphotos_137626966-stock-photo-bmw-sign-on-white.jpg",
                    ImageScreen1(),
                  ),
                  buildCarButton(
                    context,
                    "Mercedes",
                    "https://st2.depositphotos.com/1102480/7110/i/600/depositphotos_71103767-stock-photo-mercedes-benz-logo-printed-on.jpg",
                    ImageScreen2(),
                  ),
                  buildCarButton(
                    context,
                    "Audi",
                    "https://st2.depositphotos.com/1718940/8790/i/600/depositphotos_87900538-stock-photo-audi-automobile-dealership-logo.jpg",
                    ImageScreen3(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCarButton(
      BuildContext context, String text, String imageUrl, Widget imageScreen) {
    return Container(
      width: 320,
      height: 320,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(imageUrl, width: 280, height: 280),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => imageScreen),
            ),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
