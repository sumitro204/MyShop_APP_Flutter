import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Flour extends StatefulWidget {
  const Flour({super.key});

  @override
  State<Flour> createState() => _FlourState();
}

class _FlourState extends State<Flour> {
  var items = [
    {'img':"Bashundhara Flour.png",'text':"Bashundhara Flour(Atta)",'weight':"2 kg", 'mrp':"৳ 120"},
    {'img':"Brown Flour.png",'text':"ACI Nutrilife Brown Flour (Atta)",'weight':"1 kg", 'mrp':"৳ 70"},
    {'img':"Corn Flour.png",'text':"Corn Flour(Loose)",'weight':"500 gm", 'mrp':"৳ 69"},
    {'img':"Fresh Atta.png",'text':"Fresh Flour(Atta)",'weight':"2 kg", 'mrp':"৳ 120"},
    {'img':"Ifad Flour.png",'text':"Ifad Flour(Atta)",'weight':"1 kg", 'mrp':"৳ 65"},
    {'img':"Pusti Maida.png",'text':"Pusti White Flour(Maida)",'weight':"2 kg", 'mrp':"৳ 150"},
    {'img':"Shaad Brown Flour.png",'text':"Shaad Brown Flour(Lal Atta)",'weight':"1 kg", 'mrp':"৳ 70"},
    {'img':"Shaad Flour.png",'text':"Shaad Flour(Atta)",'weight':"2 kg", 'mrp':"৳ 120"},
    {'img':"Sunshine Atta.png",'text':"Sunshine Atta",'weight':"2 kg", 'mrp':"৳ 120"},
    {'img':"Teer Atta.png",'text':"Teer Whole Wheat Flour(Atta)",'weight':"2 kg", 'mrp':"৳ 140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Flour", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Flour.png', height: 40,)
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
                        child: UiHelper.FlourImage(img: items[index]['img'].toString()),
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