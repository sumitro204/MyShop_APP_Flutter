import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Vegetables extends StatefulWidget {

  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {

  var items = [
    {'img':"Adha.png",'text':"Ada(ImportedGinger) ± 25 gm",'weight':"500gm", 'mrp':"৳ 99"},
    {'img':"Aloe Vera.png",'text':"Aloe Vera ",'weight':"each", 'mrp':"৳ 35"},
    {'img':"BadhaKopi.png",'text':"Badhakopi (Cabbage)",'weight':"each", 'mrp':"৳ 49"},
    {'img':"Badhakopi Pata.png",'text':"Badhakopi Pata (Chinese Cabbage Leaves) 150 gm+",'weight':"each", 'mrp':"৳ 39"},
    {'img':"Beans Seed.png",'text':"Beans Seed (Sheemer Bichi)",'weight':"500gm", 'mrp':"৳ 85"},
    {'img':"BeetRoot.png",'text':"Beetroot ±25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Bilati Dhonia Pata.png",'text':"Long Coriander Leaves (Bilati Dhonia Pata) ± 10 gm",'weight':"100gm", 'mrp':"৳ 35"},
    {'img':"Bombay Chilli.png",'text':"Bombay Chilli",'weight':"5 pcs", 'mrp':"৳ 35"},
    {'img':"Borboti.png",'text':"Borboti (Long Bean) ± 25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Boro Alu.png",'text':"Boro Alu (Big Diamond Potato) ± 50 gm",'weight':"1 kg", 'mrp':"৳ 25"},
    {'img':"Chichinga.png",'text':"Chichinga (Snake Gourd) ± 25 gm",'weight':"500gm", 'mrp':"৳ 39"},
    {'img':"Data Shak.png",'text':"Data Shak (Data Spinach)",'weight':"1 bundle", 'mrp':"৳ 19"},
    {'img':"Deshi Gajor.png",'text':"Deshi Gajor (Local Carrot) Processed ±10 gm",'weight':"500gm", 'mrp':"৳ 49"},
    {'img':"Deshi Khira.png",'text':"Deshi Khira (Local Cucumber)",'weight':"1 kg", 'mrp':"৳ 99"},
    {'img':"Deshi Lebu.png",'text':"Lomba Lebu (Long Lemon)",'weight':"4 pcs", 'mrp':"৳ 79"},
    {'img':"Dheros.png",'text':"Dheros (Ladies Finger) ± 25 gm",'weight':"500gm", 'mrp':"৳ 45"},
    {'img':"Dhone Patha.png",'text':"Coriander Leaves (Dhonia Pata) ± 10 gm",'weight':"100gm", 'mrp':"৳ 15"},
    {'img':"Dhundhul.png",'text':"Dhundhul (Sponge Gourd) ±20 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Flat Bean.png",'text':"Flat Bean (Sheem)",'weight':"500gm", 'mrp':"৳ 39"},
    {'img':"FulKopi.png",'text':"Fulkopi (Cauliflower)",'weight':"each", 'mrp':"৳ 55"},
    {'img':"Gajor.png",'text':"Deshi Gajor (Local Carrot) Processed ±10 gm",'weight':"500gm", 'mrp':"৳ 49"},
    {'img':"Gol Lebu.png",'text':"Gol Lebu (Round Lemon)",'weight':"4 pcs", 'mrp':"৳ 85"},
    {'img':"Green Capsicum.png",'text':"Green Capsicum ± 15 gm",'weight':"300gm", 'mrp':"৳ 65"},
    {'img':"Jali Kumra.png",'text':"Jali Kumra (Water Pumpkin)",'weight':"each", 'mrp':"৳ 65"},
    {'img':"Jhinga.png",'text':"Jhinga (Ridge Gourd) ±20 gm",'weight':"500gm", 'mrp':"৳ 69"},
    {'img':"Kacha Kola.png",'text':"Kacha Kola (Banana Green)",'weight':"4 pcs", 'mrp':"৳ 45"},
    {'img':"Kalo Gol Begun.png",'text':"Kalo Gol Begun (Round Brinjals Black) ±35 gm",'weight':"800gm", 'mrp':"৳ 89"},
    {'img':"Kochu Shak.png",'text':"Kochu Shak",'weight':"1 bundle", 'mrp':"৳ 25"},
    {'img':"Kochur Loti.png",'text':"Kochur Loti (Stolon Of Taro) ± 25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Kolar Mocha.png",'text':"Banana Flower (Kolar Mocha)",'weight':"each", 'mrp':"৳ 55"},
    {'img':"Kolar Thor.png",'text':"Banana Stem (Kolar Thor)",'weight':"each", 'mrp':"৳ 39"},
    {'img':"Kolmi Shak.png",'text':"Kolmi Shak (Water Spinach)",'weight':"1 bundle", 'mrp':"৳ 15"},
    {'img':"Korola.png",'text':"Korola (Bitter Gourd) ± 25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Lal Shak.png",'text':"Lal Shak (Red Spinach)",'weight':"1 bundle", 'mrp':"৳ 25"},
    {'img':"Lau.png",'text':"Lau (Bottle Gourd)",'weight':"each", 'mrp':"৳ 75"},
    {'img':"Lau Shak.png",'text':"Lau Shak (Sweet Bitter Melon Leaves)",'weight':"1 bundle", 'mrp':"৳ 45"},
    {'img':"Lemon Grass Stalk.png",'text':"Lemon Grass Stalk ± 12 gm",'weight':"250gm", 'mrp':"৳ 99"},
    {'img':"Lettuce Leaves.png",'text':"Lettuce Leaves ± 10 gm",'weight':"100gm", 'mrp':"৳ 29"},
    {'img':"Lomba Kalo Begun.png",'text':"Lomba Kalo Begun (Long Brinjal Black) ± 25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Lomba Kochu.png",'text':"Lomba Kochu",'weight':"each", 'mrp':"৳ 99"},
    {'img':"Mehendi Pata.png",'text':"Mehendi Pata (Henna Leaves)",'weight':"3 bundles", 'mrp':"৳ 59"},
    {'img':"Mete Alu.png",'text':"Mete Alu (Mud Potato) ± 25 gm",'weight':"500gm", 'mrp':"৳ 55"},
    {'img':"Misti Alu.png",'text':"Misti Alu (Sweet Potato) ± 25 gm",'weight':"500gm", 'mrp':"৳ 35"},
    {'img':"Misti Kumra.png",'text':"Misti Kumra (Sweet Pumpkin)",'weight':"each", 'mrp':"৳ 199"},
    {'img':"Morich.png",'text':"Kacha Morich (Green Chilli) ±12 gm",'weight':"250gm", 'mrp':"৳ 25"},
    {'img':"Mula.png",'text':"Mula (Radish) ± 25 gm",'weight':"500gm", 'mrp':"৳ 39"},
    {'img':"Paan.png",'text':"Paan (Betel Leaf)",'weight':"500gm", 'mrp':"৳ 45"},
    {'img':"Palong Shak.png",'text':"Palong Shak (Palong Spinach)",'weight':"1 bundle", 'mrp':"৳ 19"},
    {'img':"Pat Shak.png",'text':"Pat Shak (Jute Spinach)",'weight':"1 bundle", 'mrp':"৳ 25"},
    {'img':"Pepe.png",'text':"Kacha Pepe (Green Papaya) ± 70 gm",'weight':"1.4 kg", 'mrp':"৳ 75"},
    {'img':"Potol.png",'text':"Potol (Pointed Gourd) ± 25 gm",'weight':"500gm", 'mrp':"৳ 45"},
    {'img':"Pudina Pata.png",'text':"Pudina Pata (Mint Leaves) ± 10 gm",'weight':"100gm", 'mrp':"৳ 25"},
    {'img':"Red Capsicum.png",'text':"Red Capsicum ±12 gm",'weight':"300gm", 'mrp':"৳ 199"},
    {'img':"Rosun.png",'text':"Roshun (Garlic Imported) ± 25 gm",'weight':"500gm", 'mrp':"৳ 199"},
    {'img':"Shalgom.png",'text':"Kohlrabi (Shalgom) ± 20 gm",'weight':"500gm", 'mrp':"৳ 45"},
    {'img':"Sheem.png",'text':"Flat Beans (Sheem) With Seeds",'weight':"1 kg", 'mrp':"৳ 89"},
    {'img':"Shojne Data.png",'text':"Shojne Data (Drumstick) ± 25 gm",'weight':"500gm", 'mrp':"৳ 85"},
    {'img':"Sobuj Gol Begun.png",'text':"Sobuj Gol Begun (Round Brinjals Green) ±35 gm",'weight':"700gm", 'mrp':"৳ 69"},
    {'img':"Sosha.png",'text':"Shosha (Cucumber) ± 25 gm",'weight':"500gm", 'mrp':"৳ 49"},
    {'img':"Thankuni Pata.png",'text':"Thankuni Pata (Pennywort Leaves)",'weight':"1 bundle", 'mrp':"৳ 9"},
    {'img':"Tomato.png",'text':"Red Tomato ± 25 gm",'weight':"500 gm", 'mrp':"৳ 19"},
    {'img':"Uchche.png",'text':"Uchche (Local Bitter Gourd) ± 25 gm",'weight':"500 gm", 'mrp':"৳ 49"},
    {'img':"Watteh Greens Mustard Microgreen.png",'text':"Watteh Greens Mustard Microgreen",'weight':"25 gm", 'mrp':"৳ 149"},
    {'img':"Watteh Greens Red Amaranth Microgreen.png",'text':"Watteh Greens Red Amaranth Microgreen",'weight':"25 gm", 'mrp':"৳ 399"},
    {'img':"Yellow Capsicum.png",'text':"Yellow Capsicum ±15 gm",'weight':"300 gm", 'mrp':"৳ 199"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Vegetables And fruits", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/fresh vegetables.png', height: 40,)
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
                         child: UiHelper.CustomImage1(img: items[index]['img'].toString()),
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
      ,

    );
  }
}