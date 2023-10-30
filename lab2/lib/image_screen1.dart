import 'package:flutter/material.dart';

class ImageScreen1 extends StatefulWidget {
  @override
  _ImageScreen3State createState() => _ImageScreen3State();
}

class _ImageScreen3State extends State<ImageScreen1> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://st5.depositphotos.com/2760050/67087/i/950/depositphotos_670871808-stock-photo-new-york-city-usa-july.jpg",
    "https://st2.depositphotos.com/46250132/44447/i/950/depositphotos_444471596-stock-photo-kherson-ukraine-september-2020-brand.jpg",
    "https://st4.depositphotos.com/1671840/24801/i/950/depositphotos_248010212-stock-photo-bmw-m8-gran-coupe-sports.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audi"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 600, // Фіксована ширина зображення
              height: 500, // Фіксована висота зображення
              child: Image.network(imageUrls[currentIndex]),
            ),
            SizedBox(height: 10), // Відступ між зображенням і кнопками
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      if (currentIndex > 0) {
                        currentIndex--;
                      } else {
                        currentIndex = imageUrls.length - 1;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      if (currentIndex < imageUrls.length - 1) {
                        currentIndex++;
                      } else {
                        currentIndex = 0;
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(
                height:
                    10), // Додатковий відступ між кнопками і кнопкою "На головну"
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text("На головну"),
            ),
          ],
        ),
      ),
    );
  }
}
