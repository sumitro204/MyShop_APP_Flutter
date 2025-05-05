import 'package:flutter/material.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Oil%20Ghee%20Spices/Ghee.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Oil%20Ghee%20Spices/Oil.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Oil%20Ghee%20Spices/Spices.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class OilGheePage extends StatelessWidget {
  const OilGheePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> items = [
      {'img':"oil.png",'text':"Oil", 'route': Oil()},
      {'img':"ghee.png",'text':"Ghee", 'route': Ghee()},
      {'img':"spices.png",'text':"Spices", 'route': Spices()},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Oil, Ghee and Spices", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/oil.png', height: 50,)
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