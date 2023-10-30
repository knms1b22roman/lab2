import 'package:flutter/material.dart';

class ImageScreen3 extends StatefulWidget {
  @override
  _ImageScreen3State createState() => _ImageScreen3State();
}

class _ImageScreen3State extends State<ImageScreen3> {
  int currentIndex = 0;
  List<String> imageUrls = [
    "https://st3.depositphotos.com/6013912/35830/i/450/depositphotos_358307642-stock-photo-almaty-kazakhstan-march-2020-audi.jpg",
    "https://st.depositphotos.com/2218430/2546/i/600/depositphotos_25466771-stock-photo-audi-rs6.jpg",
    "https://st2.depositphotos.com/1671840/45675/i/600/depositphotos_456753936-stock-photo-geneva-switzerland-march-2019-audi.jpg",
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
