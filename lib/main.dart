import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: ekranGenisligi,
                child: Image.asset("images/yemekresim.jpeg")),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi("Begen", ekranGenisligi / 25),
                      onPressed: () {
                        print("Begenildi");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ekranGenisligi/90,
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi/8,
                    child: TextButton(
                      child: Yazi("Yorum Yap", ekranGenisligi / 25),
                      onPressed: () {
                        print("Yorum Yapildi");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kofte - Patates",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi/20
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Yazi("Izgara uzerinde pisirime uygun", ekranGenisligi/30),
                      const Text("24 Mart", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ekranYuksekligi/70),
                  child: Yazi("Orta yağlı kıymanızı bir kabın içine aldıktan sonra 1 adet yumurta, rendelenmiş 1 adet soğanı kaba ekleyin. Ardından bayat ekmek içi, kimyon, tuz ve karabiberi de ekleyerek iyice yoğurun. Köftenizi yoğurduktan sonra kabın ağzını streç filmle kapatın ve en az 30 dakika kadar buzdolabında dinlenmeye bırakın. \nKöftenizi buzdolabından aldıktan sonra ellerinizi ıslatın ve şekil vermeye başlayın. Ceviz büyüklüğünde parçalar kopararak yassı biçimde şekil verin. Son olarak tavanıza biraz yağ ilave edin ve ısıtın. Tavanız kızmaya başladığında köftelerinizi arkalı önlü pişirerek afiyetle tüketebilirsiniz.\n", ekranGenisligi/30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyutu;
  Yazi(this.icerik, this.yaziBoyutu, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(
        fontSize: yaziBoyutu,
        color: Colors.white,
      ),
    );
  }
}
