import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Egg extends StatefulWidget {
  const Egg({super.key});

  @override
  State<Egg> createState() => _EggState();
}

class _EggState extends State<Egg> {
  var items = [
    {'img':"Chicken.png",'text':"Chicken Eggs(Layer)",'weight':"12 pcs", 'mrp':"৳ 129"},
    {'img':"Chicken Layer.png",'text':"Chicken Eggs(Layer)",'weight':"6 pcs", 'mrp':"৳ 65"},
    {'img':"Duck.png",'text':"Duck Eggs(Hasher Dim)",'weight':"6 pcs", 'mrp':"৳ 109"},
    {'img':"Paragon.png",'text':"Paragon Brown Egg",'weight':"12 pcs", 'mrp':"৳ 205"},
    {'img':"Paragon Omega.png",'text':"Paragon Omega 3+ Eggs",'weight':"12 pcs", 'mrp':"৳ 265"},
    {'img':"Purnava.png",'text':"Purnava Vitamin E Eggs",'weight':"12 pcs", 'mrp':"৳ 220"},
    {'img':"Quail.png",'text':"Quail Eggs",'weight':"20 pcs", 'mrp':"৳ 79"},
    {'img':"Super egg.png",'text':"Chicken Eggs Layer(Super Egg)",'weight':"6 pcs", 'mrp':"৳ 69"},
    {'img':"White.png",'text':"Chicken Eggs Layer(White)",'weight':"6 pcs", 'mrp':"৳ 65"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Egg", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/eggs.png', height: 50,)
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
                        child: UiHelper.EggImage(img: items[index]['img'].toString()),
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