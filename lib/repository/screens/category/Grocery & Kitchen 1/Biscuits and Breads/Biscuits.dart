import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Biscuits extends StatefulWidget {
  const Biscuits({super.key});

  @override
  State<Biscuits> createState() => _BiscuitsState();
}

class _BiscuitsState extends State<Biscuits> {
  var items = [
    {'img':"Black Bourbon.png",'text':"Prle Hide & Seek Black Bourbon Vanilla Biscuit",'weight':"100 gm", 'mrp':"৳ 200"},
    {'img':"Chocolate.png",'text':"Haque Milk Chocolate Digestive Biscuit",'weight':"137 gm", 'mrp':"৳ 40"},
    {'img':"Cocola.png",'text':"Cocola Champion Chocolate Cream Biscuit",'weight':"65 gm", 'mrp':"৳ 20"},
    {'img':"Crackers.png",'text':"Haque Sugar Free Cream Crackers Biscuit",'weight':"125 gm", 'mrp':"৳ 50"},
    {'img':"Delight.png",'text':"Ifad Choco Delight Biscuit",'weight':"175 gm", 'mrp':"৳ 60"},
    {'img':"Energy.png",'text':"Olympic Energy Plus Biscuits",'weight':"62 gm", 'mrp':"৳ 15"},
    {'img':"Fantasy.png",'text':"Fresh Fantasy Chocolate Filled Cookies Biscuit",'weight':"175 gm", 'mrp':"৳ 150"},
    {'img':"First Choice.png",'text':"Olympic First Choice Salted Biscuits",'weight':"180 gm", 'mrp':"৳ 50"},
    {'img':"Milk Marie.png",'text':"Haque Original Milk Marie Biscuit",'weight':"225 gm", 'mrp':"৳ 60"},
    {'img':"Orange.png",'text':"Olympic Orange Plus Biscuits",'weight':"42 gm", 'mrp':"৳ 10"},
    {'img':"Peanut.png",'text':"Olympic Nutty Real Peanut Biscuits",'weight':"175 gm", 'mrp':"৳ 50"},
    {'img':"Pineapple.png",'text':"Olympic Pineapple Cream Biscuits",'weight':"40 gm", 'mrp':"৳ 10"},
    {'img':"Plus.png",'text':"Olympic Chocolate Plus Biscuit",'weight':"42 gm", 'mrp':"৳ 10"},
    {'img':"Shero.png",'text':"Bisk Club Shero Cream Biscuit",'weight':"85 gm", 'mrp':"৳ 30"},
    {'img':"Spicy.png",'text':"Pran Potato Spicy Biscuit",'weight':"100 gm", 'mrp':"৳ 30"},
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           UiHelper.CustomText(text: "Biscuits", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
           Image.asset('assets/images/Biscuits.png', height: 50,)
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
                       child: UiHelper.BiscuitsImage(img: items[index]['img'].toString()),
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