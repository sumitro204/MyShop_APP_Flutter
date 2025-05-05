import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Dairy/Chess.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Dairy/Egg.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Dairy/LiquidMilk.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Dairy/PowderMilk.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Dairy/Yougart.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class DairyPage extends StatefulWidget {
  const DairyPage({super.key});

  @override
  State<DairyPage> createState() => _DairyPageState();
}

class _DairyPageState extends State<DairyPage> {
  List<Map<String,dynamic>> items = [
    {'img':"chess.png",'text':"Chess", 'route': Chess()},
    {'img':"eggs.png",'text':"Egg", 'route': Egg()},
    {'img':"powder milk.png",'text':"Powder Milk", 'route': PowderMilk()},
    {'img':"liquid milk.png",'text':"Liquid Milk", 'route': LiquidMilk()},
    {'img':"yogurt.png",'text':"Yogurt", 'route': Yougart()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Dairy & Eggs", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Dairy Egg.png', height: 50,)
          ],
        ), backgroundColor: Colors.teal,
      ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: items.length,
              itemBuilder: (context, index){
                return Container(

                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, blurRadius: 5,spreadRadius: 2,
                          )
                        ]
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => items[index]['route']
                        ));
                      },
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomImage(img: items[index]['img'].toString()),
                          const SizedBox(height: 5,),
                          UiHelper.CustomText(text: items[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.w500, fontsize: 16, fontfamily: 'bold')
                        ],
                      ),
                    )
                );
              }
          ),
        )
    );
  }
}