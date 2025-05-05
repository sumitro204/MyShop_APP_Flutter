import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  var items = [
    {'img':"Alooz.png",'text':"Bombay Sweets Alooz Spanish Tomato Flavor",'weight':"25 gm", 'mrp':"৳ 20"},
    {'img':"Cheese Ball.png",'text':"Bombay Sweets Cheese Ball Cheezee Corn Snacks",'weight':"15 gm", 'mrp':"৳ 10"},
    {'img':"Cheese Puf.png",'text':"Cheese Puff",'weight':"14 gm", 'mrp':"৳ 10"},
    {'img':"Kurkure Onion.png",'text':"Kurkure American Style Cream & Onion Chips",'weight':"25 gm", 'mrp':"৳ 20"},
    {'img':"Kurkure.png",'text':"Kurkure Chili Chatka Chips",'weight':"70 gm", 'mrp':"৳ 50"},
    {'img':"Mister Potato.png",'text':"Mister Potato Hot & Spicy Crisps",'weight':"100 gm", 'mrp':"৳ 275"},
    {'img':"Mr. Twist.png",'text':"Bombay Sweets Mr.Twist",'weight':"20 gm", 'mrp':"৳ 20"},
    {'img':"Pran Potato.png",'text':"Pran Potato Cracker",'weight':"15 gm", 'mrp':"৳ 10"},
    {'img':"Potato Cracker.png",'text':"Bombay Sweets Potato Cracker (Free Surprise Toy)",'weight':"25 gm", 'mrp':"৳ 15"},
    {'img':"Pringles.png",'text':"Pringles Original Potato Chips",'weight':"134 gm", 'mrp':"৳ 350"},
    {'img':"Ring Chips.png",'text':"Bombay Sweets Ring Chips",'weight':"25 gm", 'mrp':"৳ 20"},
    {'img':"Sun Chips.png",'text':"Sun Chips Mix Masala",'weight':"20 gm", 'mrp':"৳ 20"},
    {'img':"Sun Chips.png",'text':"Sun Chips Mis Masala",'weight':"35 gm", 'mrp':"৳ 30"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Chips", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/ChipsImg.png', height: 50,)
          ],
        ), backgroundColor: Colors.teal,
      ),
        body:
        Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ), itemCount: items.length,
              itemBuilder: (context, index){
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: UiHelper.ChipsImage(img: items[index]['img'].toString()),
                      ),

                      ),

                      Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                              children: [
                                UiHelper.CustomText(text: items[index]['text'].toString(), color: Colors.black, fontweight: FontWeight.bold, fontsize: 14,),
                                const SizedBox(height: 4,),
                                Text(
                                  "Weight: ${items[index]['weight']}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),const SizedBox(height: 4,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          "Price: ${items[index]['mrp']}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ), Padding(padding:  const EdgeInsets.only(right: 2),
                                      child: UiHelper.CustomButton((){}),
                                    )
                                  ],
                                ),
                              ]
                          )
                      )
                    ],
                  ),
                );
              }),
        )
    );
  }
}