import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class CategoryScreen extends StatefulWidget{

  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // const CategoryScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [

      {"img":"fruits.png","text":"Vegetables & \n  Fruits"},
      {"img":"ata.png","text":"Atta, Dal &  \n Rice"},
      {"img":"oil.png","text":"Oil, Ghee & \n Masala"},
      {"img":"juice.png","text":"Dairy, Bread & \n Milk"},
      {"img":"biscuit.png","text":"Biscuits & \n Bakery"}
  ];
  var secondgrocery = [
      {"img":"dry fruits.png","text":"Dry Fruits & \n Cereals"},
      {"img":"blender.png","text":"Kitchen & \n Appliances"},
      {"img":"coffee.png","text":"Tea & \nCoffees"},
      {"img":"ice creams.png","text":"Ice Creams & \n much more"},
      {"img":"noodles.png","text":"Noodles & \n Packet Food"},
  ];
  var snacks = [
    {"img":"chips.png","text":"Chips & \n Namkeens"},
    {"img":"sweet.png","text":"Sweets & \n Chocalates"},
    {"img":"drinks.png","text":"Drinks & \n Juices"},
    {"img":"sauce.png","text":"Sauces & \n Spreads"},
    {"img":"bread.png","text":"Breads"},
  ];
  var household = [
    {"img":"surfexcel.png","text":"Detergents"},
    {"img":"perfume.png","text":"Perfumes"},
    {"img":"shopa.png","text":"Furniture"},
    {"img":"soap.png","text":"Soap"},
    {"img":"shampo.png","text":"Shampo"},
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
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 20,),
            UiHelper.CustomText(text: 'Grocery & Kitchen', color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14,fontfamily: "bold"),
          ],
        ),
        SizedBox(height: 10,),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 78,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(

                    children: [
                      Container(
                        height: 80, width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB),
                        ),
                        child: UiHelper.CustomImage(img: grocerykitchen[index]["img"].toString()),
                      ),
                      SizedBox(height: 5,),
                      UiHelper.CustomText(text: grocerykitchen[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.normal, fontsize: 10)
                    ],
                  ),
                );

              }, itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 78,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(

                    children: [
                      Container(
                        height: 80, width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB),
                        ),
                        child: UiHelper.CustomImage(img: secondgrocery[index]["img"].toString()),
                      ),
                      SizedBox(height: 5,),
                      UiHelper.CustomText(text: secondgrocery[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.normal, fontsize: 10)
                    ],
                  ),
                );

              }, itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 20,),
            UiHelper.CustomText(text: 'Snacks & Drinks', color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14,fontfamily: "bold"),
          ],
        ),
        SizedBox(height: 10,),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 78,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(

                    children: [
                      Container(
                        height: 80, width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB),
                        ),
                        child: UiHelper.CustomImage(img: snacks[index]["img"].toString()),
                      ),
                      SizedBox(height: 5,),
                      UiHelper.CustomText(text: snacks[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.normal, fontsize: 10)
                    ],
                  ),
                );

              }, itemCount: snacks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: SizedBox(
            height: 78,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(

                    children: [
                      Container(
                        height: 80, width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB),
                        ),
                        child: UiHelper.CustomImage(img: household[index]["img"].toString()),
                      ),
                      SizedBox(height: 5,),
                      UiHelper.CustomText(text: household[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.normal, fontsize: 10)
                    ],
                  ),
                );

              }, itemCount: household.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),

      ],
     ),
   );
  }
}