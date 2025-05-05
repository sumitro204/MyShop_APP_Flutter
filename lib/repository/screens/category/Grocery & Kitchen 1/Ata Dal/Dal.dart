import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Dal extends StatefulWidget {
  const Dal({super.key});

  @override
  State<Dal> createState() => _DalState();
}

class _DalState extends State<Dal> {

  var items = [
    {'img':"Aarong Moshur Dal.png",'text':"Aarong Natural Moshur Dal",'weight':"1 kg", 'mrp':"৳ 169"},
    {'img':"Boot Dal.png",'text':"Boot Dal",'weight':"500 gm", 'mrp':"৳ 69"},
    {'img':"Deshi Moshur Dal.png",'text':"Deshi Moshur Dal",'weight':"1 kg", 'mrp':"৳ 120"},
    {'img':"Kabuli Boot.png",'text':"Chick Peas Large (Kabuli Boot)",'weight':"500 gm", 'mrp':"৳ 169"},
    {'img':"Kheshari Dal.png",'text':"Kheshari Dal",'weight':"500 gm", 'mrp':"৳ 69"},
    {'img':"Mixed Dal.png",'text':"Mixed Dal",'weight':"500 gm", 'mrp':"৳ 75"},
    {'img':"Moshur Dal.png",'text':"Moshur Dal(Imported)",'weight':"1 kg", 'mrp':"৳ 119"},
    {'img':"Moshur Dal Deshi.png",'text':"Moshur Dal(Deshi)",'weight':"1 kg", 'mrp':"৳ 139"},
    {'img':"Moshur Dal Imported.png",'text':"Moshur Dal(Imported)",'weight':"500 gm", 'mrp':"৳ 65"},
    {'img':"Mug Dal.png",'text':"Atop Rice",'weight':"500 gm", 'mrp':"৳ 89"},
    {'img':"Teer Red Moshur Dal.png",'text':"Teer Red Lentil(Moshur) Dal",'weight':"1 kg", 'mrp':"৳ 122"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Dal", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/Dal.png', height: 40,)
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
                        child: UiHelper.DalImage(img: items[index]['img'].toString()),
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