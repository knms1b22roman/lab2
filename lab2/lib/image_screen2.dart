import 'package:flutter/material.dart';

class ImageScreen2 extends StatefulWidget {
  @override
  _ImageScreen3State createState() => _ImageScreen3State();
}

class _ImageScreen3State extends State<ImageScreen2> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://st3.depositphotos.com/3009117/19080/i/950/depositphotos_190804714-stock-photo-prague-czech-republic-2018-front.jpg",
    "https://st5.depositphotos.com/3317865/67488/i/950/depositphotos_674889880-stock-photo-mercedes-benz-gls-maybach.jpg",
    "https://st4.depositphotos.com/1671840/40889/i/950/depositphotos_408894622-stock-photo-brussels-jan-2019-mercedes-amg.jpg",
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
