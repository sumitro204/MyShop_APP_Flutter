import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class SugarSalt extends StatefulWidget {
  const SugarSalt({super.key});

  @override
  State<SugarSalt> createState() => _SugarSaltState();
}

class _SugarSaltState extends State<SugarSalt> {
  var items = [
    {'img':"ACI Pure Salt.png",'text':"ACI Pure Salt",'weight':"500 gm", 'mrp':"৳ 22"},
    {'img':"Akher Chini.png",'text':"Akher Chini (Sugar) ± 50 gm",'weight':"1 kg", 'mrp':"৳ 140"},
    {'img':"Fresh Refined Sugar.png",'text':"Fresh Refined Sugar",'weight':"1 kg", 'mrp':"৳ 120"},
    {'img':"Fresh Super Premium.png",'text':"Fresh Super Premium(Vacuum) Salt",'weight':"1 kg", 'mrp':"৳ 42"},
    {'img':"Himalayan Pink Salt.png",'text':"Farmer's Gold Himalayan Pink Salt",'weight':"250", 'mrp':"৳ 180"},
    {'img':"Muskan Salt.png",'text':"Muskan Salt",'weight':"1 kg", 'mrp':"৳ 42"},
    {'img':"Pepper Mix.png",'text':"ACI Sprinkle Salt & Pepper Mix",'weight':"100 gm", 'mrp':"৳ 125"},
    {'img':"Rock Salt.png",'text':"Rock Salt(Bit Lobon)",'weight':"100 gm", 'mrp':"৳ 51"},
    {'img':"Sugar Candy.png",'text':"Sugar Candy(Tal Misri)",'weight':"200 gm", 'mrp':"৳ 45"},
    {'img':"Teer Sugar.png",'text':"Teer Sugar",'weight':"1 kg", 'mrp':"৳ 125"},
    {'img':"Top Testing Salt.png",'text':"Top Testing Salt",'weight':"100 gm", 'mrp':"৳ 50"},
    {'img':"White Sugar.png",'text':"Loose White Sugar",'weight':"1 kg", 'mrp':"৳ 125"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Sugar and Salt", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Sugar Salt.png', height: 40,)
          ],
        ), backgroundColor: Colors.green,
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
                        child: UiHelper.SugarSalt(img: items[index]['img'].toString()),
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