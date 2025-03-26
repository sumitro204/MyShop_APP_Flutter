import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget{

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img":"candle.png","text":"Lights, Diyas \n & Candles"},
    {"img":"image 51.png","text":"Diwali \n Gifts"},
    {"img":"image 52.png","text":"Appliances \n & Gadgets"},
    {"img":"image 53.png","text":"Home \n & Living"},
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
      children: [
        SizedBox(height: 40,),
        Stack(
          children: [
            Container(
                height: 190, width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        UiHelper.CustomText(text: 'Blinkit in', color: Color(0XFFFFFFFF), fontweight: FontWeight.bold, fontsize: 12,fontfamily: 'bold'),
                      ],
                    ),Row(
                      children: [
                        SizedBox(width: 20,),
                        UiHelper.CustomText(text: '16 minutes', color: Color(0XFFFFFFFF), fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold"),
                      ],
                    ),Row(
                      children: [
                        SizedBox(width: 20,),
                        UiHelper.CustomText(text: 'HOME - ', color: Color(0XFFFFFFFF), fontweight: FontWeight.bold, fontsize: 12, fontfamily: 'bold'),
                        UiHelper.CustomText(text: 'Karnel Chakma, Rangamati, College Gate', color: Color(0XFFFFFFFF), fontweight: FontWeight.w400, fontsize: 12),
                      ],
                    ),

                  ],
                )
            ),
            Positioned(
              right: 20, bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(Icons.person,color: Colors.black, size: 20,),
              ),
            ),
            Positioned(
              bottom: 30,left: 20,
              child:  UiHelper.CustomTextField(controller: searchController,),

            )
          ],
        ),
        SizedBox(height: 1, width: double.infinity,),
        Container(
          height: 196, width: double.infinity, color: Color(0XFFEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 UiHelper.CustomImage(img: "fireworks.png"),
                 UiHelper.CustomImage(img: "fireworks2.png"),
                 UiHelper.CustomText(text: "Mega Diwali Sale", color: Color(0XFFFFFFFF), fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold"),
                 UiHelper.CustomImage(img: "fireworks2.png"),
                 UiHelper.CustomImage(img: "fireworks.png"),
               ],
              ),
              Container(
                height: 108,width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Color(0XFFEAD3D3),

                ),

              )
            ],
          ),

        )
      ],
    ),
    );
  }
}