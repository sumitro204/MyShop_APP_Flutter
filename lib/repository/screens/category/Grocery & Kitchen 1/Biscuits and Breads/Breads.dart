import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Breads extends StatefulWidget {
  const Breads({super.key});

  @override
  State<Breads> createState() => _BreadsState();
}

class _BreadsState extends State<Breads> {
  var items = [
    {'img':"Bread Special.png",'text':"Bread Pit Sugar Free Bread Special",'weight':"400 gm", 'mrp':"৳ 95"},
    {'img':"Breadcrumbs.png",'text':"Savory Breadcrumbs",'weight':"180 gm", 'mrp':"৳ 180"},
    {'img':"Burger Bun.png",'text':"Bread Pit Burger",'weight':"2 pcs", 'mrp':"৳ 35"},
    {'img':"Hot Dog Roll.png",'text':"Bread Pit Hot Dog Roll",'weight':"200 gm", 'mrp':"৳ 90"},
    {'img':"Milk Bread.png",'text':"Bread Pit Brown Bread",'weight':"300 gm", 'mrp':"৳ 149"},
    {'img':"Multigrain Bread.png",'text':"Bread Pit Multigrain Bread",'weight':"300 gm", 'mrp':"৳ 149"},
    {'img':"Pit Flat Bread.png",'text':"Bread Pit Flat Bread (Naan Bread) 250 gm",'weight':"4 pcs", 'mrp':"৳ 85"},
    {'img':"White Bread.png",'text':"Bread Pit Milk Bread",'weight':"300 gm", 'mrp':"৳ 120"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Breads", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Breads.png', height: 50,)
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
                        child: UiHelper.BreadsImage(img: items[index]['img'].toString()),
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