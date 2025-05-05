import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class PowderMilk extends StatefulWidget {
  const PowderMilk({super.key});

  @override
  State<PowderMilk> createState() => _PowderMilkState();
}

class _PowderMilkState extends State<PowderMilk> {
  var items = [
    {'img':"AMA.png",'text':"AMA Full Cream Milk Powder",'weight':"500 gm", 'mrp':"৳ 420"},
    {'img':"Dano.png",'text':"Dano Daily Milk Powder",'weight':"1 kg", 'mrp':"৳ 770"},
    {'img':"Dano Delight.png",'text':"Dano Delight Full Cream Milk Powder",'weight':"500 gm", 'mrp':"৳ 425"},
    {'img':"Goalini.png",'text':"Goalini Full Cream Milk Powder",'weight':"1 kg", 'mrp':"৳ 790"},
    {'img':"Maggi.png",'text':"Maggi Coconut Milk Powder",'weight':"300 gm", 'mrp':"৳ 690"},
    {'img':"Marks.png",'text':"Marks Full Cream Milk Powder",'weight':"500 gm", 'mrp':"৳ 440"},
    {'img':"Marks Can.png",'text':"Marks Milk Powder Tin",'weight':"500 gm", 'mrp':"৳ 420"},
    {'img':"Nido.png",'text':"Nestle Nido Full Cream Milk Powder",'weight':"700 gm", 'mrp':"৳ 800"},
    {'img':"Nido can.png",'text':"Nestle Nido Fortigrow Full Cream Milk Powder Tin",'weight':"1 kg", 'mrp':"৳ 1400"},
    {'img':"Youg Start.png",'text':"Marks Young Star (16-40 years)",'weight':"400 gm", 'mrp':"৳ 425"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Powder Milk", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/powder milk.png', height: 50,)
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
                        child: UiHelper.PowderMilkImage(img: items[index]['img'].toString()),
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