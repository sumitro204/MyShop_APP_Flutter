import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class CartScreen extends StatefulWidget{

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // const CartScreen({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 40,),
         Stack(
           children: [
             Container(
                 height: 190, width: double.infinity,
                 color: Color(0XFFF7CB45),
                 child: Column(
                   children: [
                     SizedBox(height: 30,),
                     Row(
                       children: [
                         SizedBox(width: 20,),
                         UiHelper.CustomText(text: 'Blinkit in', color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 12,fontfamily: 'bold'),
                       ],
                     ),Row(
                       children: [
                         SizedBox(width: 20,),
                         UiHelper.CustomText(text: '16 minutes', color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold"),
                       ],
                     ),Row(
                       children: [
                         SizedBox(width: 20,),
                         UiHelper.CustomText(text: 'HOME - ', color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 12, fontfamily: 'bold'),
                         UiHelper.CustomText(text: 'Karnel Chakma, Rangamati, College Gate', color: Color(0XFF000000), fontweight: FontWeight.w400, fontsize: 12),
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
          SizedBox(height: 20,),
          UiHelper.CustomImage(img: "shoping.png"),
          SizedBox(height: 20,),
          UiHelper.CustomText(text: "Reordering will be easy", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 16,fontfamily: 'bold'),
          UiHelper.CustomText(text: "Items you order will show up here so you can buy ", color: Color(0XFF000000), fontweight: FontWeight.w500, fontsize: 12,),
          UiHelper.CustomText(text: "them again easily.", color: Color(0XFF000000), fontweight: FontWeight.w500, fontsize: 12,),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20,),
              UiHelper.CustomText(text: 'Bestsellers', color: Color(0XFF000000), fontweight: FontWeight.w600, fontsize: 18, fontfamily: 'bold'),
            ],
          ),
          SizedBox(height: 20,),
          Row(

            children: [
              SizedBox(width: 20,),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image 45.png"),
                          Padding(padding: EdgeInsets.only(top: 95,left: 65),
                          child: UiHelper.CustomButton((){}),
                          ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  UiHelper.CustomText(text: "Milk", color: Color(0XFF000000), fontweight: FontWeight.w400, fontsize: 12, fontfamily: "bold"),
                  Row(
                    children: [UiHelper.CustomImage(img: 'image 47.png',),
                      UiHelper.CustomText(text: "27", color: Color(0XFF000000), fontweight: FontWeight.w700, fontsize: 15, fontfamily: "bold"),],
                  )
                ],
              ),
              Row(

                children: [
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Stack(
                        children: [
                          UiHelper.CustomImage(img: "image 44.png"),
                          Padding(padding: EdgeInsets.only(top: 95,left: 65),
                            child: UiHelper.CustomButton((){}),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      UiHelper.CustomText(text: "Potato", color: Color(0XFF000000), fontweight: FontWeight.w400, fontsize: 12, fontfamily: "bold"),
                      Row(
                        children: [UiHelper.CustomImage(img: 'image 47.png',),
                          UiHelper.CustomText(text: "37", color: Color(0XFF000000), fontweight: FontWeight.w700, fontsize: 15, fontfamily: "bold"),],
                      )
                    ],
                  ),

                  Row(

                    children: [
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Stack(
                            children: [
                              UiHelper.CustomImage(img: "image 46.png"),
                              Padding(padding: EdgeInsets.only(top: 95,left: 65),
                                child: UiHelper.CustomButton((){}),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          UiHelper.CustomText(text: "Tomato", color: Color(0XFF000000), fontweight: FontWeight.w400, fontsize: 12, fontfamily: "bold"),
                          Row(
                            children: [UiHelper.CustomImage(img: 'image 47.png',),
                              UiHelper.CustomText(text: "40", color: Color(0XFF000000), fontweight: FontWeight.w700, fontsize: 15, fontfamily: "bold"),],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}