import 'package:flutter/material.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Biscuits%20and%20Breads/Biscuits.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Biscuits%20and%20Breads/Breads.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Biscuits%20and%20Breads/Chips.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class BiscuitsPage extends StatefulWidget {
  const BiscuitsPage({super.key});

  @override
  State<BiscuitsPage> createState() => _BiscuitsPageState();
}

class _BiscuitsPageState extends State<BiscuitsPage> {
  List<Map<String,dynamic>> items = [
    {'img':"Biscuits.png",'text':"Biscuits", 'route': Biscuits()},
    {'img':"ChipsImg.png",'text':"Chips", 'route': Chips()},
    {'img':"Breads.png",'text':"Breads", 'route': Breads()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Chips Biscuits Breads", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Biscuits.png', height: 50,)
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