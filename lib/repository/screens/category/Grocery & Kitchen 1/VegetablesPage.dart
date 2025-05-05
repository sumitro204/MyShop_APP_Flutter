import 'package:flutter/material.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Vegetables%20and%20Fruits/Fruits.dart';
import 'package:myshop/repository/screens/category/Categories%20Screen/Vegetables%20and%20Fruits/Vegetables.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class VegetablesPage extends StatelessWidget {
  const VegetablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Vegetables And fruits", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/fresh vegetables.png', height: 40,)
          ],
        ), backgroundColor: Color(0XFFd9b73f),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Vegetables()));
                  },
                child:
                Container(
                  height: 190, width: 200,decoration: BoxDecoration(
                   color: Color(0XFFe4dddc),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                    Column(
                      children: [
                        UiHelper.CustomImage(img: 'fresh vegetables.png',),
                        UiHelper.CustomText(text: 'Fresh Vegetables', color: Colors.black, fontweight: FontWeight.w500, fontsize: 16, fontfamily: 'bold')
                      ],
                    ),
                ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Fruits()));
              },
            child:
            Container(
              height: 190, width: 190,decoration: BoxDecoration(
               color: Color(0Xffd1d3f4),
              borderRadius: BorderRadius.circular(10),
            ),
              child:
              Column(
                children: [
                  UiHelper.CustomImage(img: 'fresh fruits.png',),
                  UiHelper.CustomText(text: 'Fresh fruits', color: Colors.black, fontweight: FontWeight.w500, fontsize: 16, fontfamily: 'bold')
                ],
              ),
            )
            ),
        ],
        ),
      ),
    );
  }
}