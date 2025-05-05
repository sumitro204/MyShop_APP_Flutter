import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class LiquidMilk extends StatefulWidget {
  const LiquidMilk({super.key});

  @override
  State<LiquidMilk> createState() => _LiquidMilkState();
}

class _LiquidMilkState extends State<LiquidMilk> {
  var items = [
    {'img':"Aarong.png",'text':"Aarong Dairy Pasteurized Liquid Milk",'weight':"1 ltr", 'mrp':"৳ 105"},
    {'img':"Danish.png",'text':"Danish Ayran Pasteurized Full Cream Liquid Milk",'weight':"1 ltr", 'mrp':"৳ 140"},
    {'img':"Farm Fresh.png",'text':"Farm Fresh UHT Milk",'weight':"500 ml", 'mrp':"৳ 60"},
    {'img':"Laban.png",'text':"Aarong Dairy Laban",'weight':"500 ml", 'mrp':"৳ 75"},
    {'img':"Low FAT.png",'text':"Cowhead UHT Milk Low Fat",'weight':"1 ltr", 'mrp':"৳ 429"},
    {'img':"Matha.png",'text':"Aarong Dairy Matha",'weight':"200 ml", 'mrp':"৳ 35"},
    {'img':"Milkman.png",'text':"Milkman Slim Low Fat UHT Milk",'weight':"1 ltr", 'mrp':"৳ 150"},
    {'img':"Pran Milk.png",'text':"Pran UHT Milk",'weight':"1 ltr", 'mrp':"৳ 130"},
    {'img':"UHT milk.png",'text':"Aarong Dairy UHT Milk",'weight':"500 ml", 'mrp':"৳ 60"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Liquid Milk", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/liquid milk.png', height: 50,)
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
                        child: UiHelper.LiquidMilkImage(img: items[index]['img'].toString()),
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