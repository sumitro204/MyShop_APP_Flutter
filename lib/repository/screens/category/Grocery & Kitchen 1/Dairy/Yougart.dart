import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Yougart extends StatefulWidget {
  const Yougart({super.key});

  @override
  State<Yougart> createState() => _YougartState();
}

class _YougartState extends State<Yougart> {
  var items = [
    {'img':"Aarong Curd.png",'text':"Aarong Dairy Sour Curd",'weight':"500 gm", 'mrp':"৳ 120"},
    {'img':"Aarong Dariry.png",'text':"Aarong Dairy Sweetened Yogurt",'weight':"500 gm", 'mrp':"৳ 150"},
    {'img':"Farm.png",'text':"Farm Fresh Sweetened Yogurt",'weight':"500 gm", 'mrp':"৳ 150"},
    {'img':"Low Fat.png",'text':"Aarong Dairy Low Fat Yogurt(Sour)",'weight':"500 gm", 'mrp':"৳ 110"},
    {'img':"Misti doi.png",'text':"Pran Sweetened Yogurt",'weight':"75 gm", 'mrp':"৳ 25"},
    {'img':"Pran.png",'text':"Pran Drinking Yogurt",'weight':"200 gm", 'mrp':"৳ 30"},
    {'img':"Pran Curd.png",'text':"Pran Sour Curd",'weight':"500 ml", 'mrp':"৳ 120"},
    {'img':"Shokti.png",'text':"Shokti + Mishti Doi",'weight':"100 gm", 'mrp':"৳ 30"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Yogurt", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/yogurt.png', height: 50,)
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
                        child: UiHelper.YougartImage(img: items[index]['img'].toString()),
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