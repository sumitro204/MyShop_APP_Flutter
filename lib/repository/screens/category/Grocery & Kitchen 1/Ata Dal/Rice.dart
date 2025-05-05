import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Rice extends StatefulWidget {
  const Rice({super.key});

  @override
  State<Rice> createState() => _RiceState();
}

class _RiceState extends State<Rice> {

  var items = [
    {'img':"Atop Rice.png",'text':"Atop Rice",'weight':"1 kg", 'mrp':"৳ 59"},
    {'img':"Basmati Rice.png",'text':"Fortune Biryani Special Basmati Rice",'weight':"1 kg", 'mrp':"৳ 480"},
    {'img':"Chashi Chinigura.png",'text':"Chashi Aromatic Chinigura Rice",'weight':"1 kg", 'mrp':"৳ 155"},
    {'img':"Chinigura Premium.png",'text':"Chinigura Rice Premium",'weight':"1 kg", 'mrp':"৳ 139"},
    {'img':"Chinigura Rice.png",'text':"Pran Chinigura Aromatic Rice",'weight':"1 kg", 'mrp':"৳ 165"},
    {'img':"Metro Basmati Rice.png",'text':"Pran Metro Basmati Rice",'weight':"1 kg", 'mrp':"৳ 420"},
    {'img':"Miniket Rice.png",'text':"Miniket Rice Premium (Boiled) ± 200 gm",'weight':"25 kg", 'mrp':"৳ 2,179"},
    {'img':"Nazirshail Rice.png",'text':"Nazirshail Rice Standard (Half Boiled) ± 50 gm",'weight':"5 kg", 'mrp':"৳ 399"},
    {'img':"Nazirshail Standard.png",'text':"Nazirshail Rice Premium (Half Boiled) ± 200 gm",'weight':"25 kg", 'mrp':"৳ 2,219"},
    {'img':"Rupchanda Rice.png",'text':"Rupchanda Premium Nazirshail Rice",'weight':"5 kg", 'mrp':"৳ 525"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Rice", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Chal.png', height: 40,)
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
                        child: UiHelper.RiceImage(img: items[index]['img'].toString()),
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