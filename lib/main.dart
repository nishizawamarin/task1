import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'tfu',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
             children:  [
                 Stack(
                   children: [
                     Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('images/matumoto.jpg'),
                                fit: BoxFit.cover,
                              ),
                        ),
                      ),
                     const Positioned(
                      top: 20,
                       right: 20,
                       child: Row(
                         children: [Icon(Icons.share, color: Colors.white,),
                           SizedBox(width: 15,),
                           Icon(Icons.favorite_border, color: Colors.white,),
                             ],
                       ),
                     ),
                     const Positioned(
                       bottom: 60,
                         left: 20,
                         child:
                             Text('Matsumotojou',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w600,
                             ),
                             ),
                     ),
                     const Positioned(
                       bottom: 40,
                       left: 20,
                       child: Row(
                         children: [
                           Icon(Icons.location_pin, color: Colors.white, size: 15,),
                           SizedBox(width: 5,),
                           Text('Nagano',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 10,
                             fontWeight: FontWeight.w200,
                           ),
                           ),
                         ],
                       ),
                     ),
                     const Positioned(
                       bottom: 20,
                       left: 20,
                       child: Row(
                         children: [
                           Icon(Icons.star, color: Colors.white, size: 20,),
                           Icon(Icons.star, color: Colors.white, size: 20,),
                           Icon(Icons.star, color: Colors.white, size: 20,),
                           Icon(Icons.star, color: Colors.white, size: 20,),
                           Icon(Icons.star_border, color: Colors.white, size: 20,),
                           SizedBox(width: 5,),
                           Text('4.0',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 10,
                             fontWeight: FontWeight.w200
                           ),
                           ),
                         ],
                       ),
                     ),

                 ],
                 ),
               const SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   _Icon(Icons.wifi,'Wifi'),
                   _Icon(Icons.flatware,'キッチン'),
                   _Icon(Icons.beach_access,'ビーチ'),
                  _Icon(Icons.more_horiz,'その他'),
                 ],
                 ),
            const  SizedBox(height: 10,),
               const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children:  [
                     SizedBox(width: 20,),
                     Text('詳細',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ],
        ),
                 ],
               ),
               Expanded(
                   child: Container(
                     width: double.infinity,
                     margin: const EdgeInsets.all(5),
                     padding: const EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.black12,
                     ),
                     child: const Positioned(
                      child:  Text('松本城は、日本の長野県松本市に位置する国宝の城で、'
                         '日本屈指の天守閣を有する。築城は16世紀に遡り、'
                         '現在の本丸は17世紀初頭に再建されたもの。黒い外観が特徴で、'
                         '「黒い城」として親しまれる。城内は歴史博物館となっており、'
                         '武具や文化財が展示されている。本丸天守からはアルプス山脈が一望でき、'
                         '美しい庭園も楽しめる。',
                        style: TextStyle(
                          fontSize: 17,
                        ),),
                     ),
                   ),
               ),
               const SizedBox(height: 10),
               Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   SizedBox(
                     height: 50,
                   width: 200,
                   child: ElevatedButton(
                       onPressed: (){},
                       child:  const Text('ホテルを予約する'),
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30),
                       ),
                     ),
                     ),
                 ),
                   const SizedBox(height: 10),
                 ],
               ),
             ],
           ),
          ),
        );
  }
  @override
  Widget  _Icon(IconData icon, String text)
  {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
            color: Colors.black26,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w100,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}