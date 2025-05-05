import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Oil extends StatefulWidget {
  const Oil({super.key});

  @override
  State<Oil> createState() => _OilState();
}

class _OilState extends State<Oil> {
  var items = [
    {'img':"ACI Nutrilife.png",'text':"ACI Nutrilife Rice Bran Oil",'weight':"5 ltr", 'mrp':"৳ 1080"},
    {'img':"Ambassador Olive Oil.png",'text':"Ambassador Spanish Olive Oil Can",'weight':"100 ml", 'mrp':"৳ 480"},
    {'img':"Fargo Mustard.png",'text':"Fargo Mustard Oil",'weight':"5 ltr", 'mrp':"৳ 1700"},
    {'img':"Farmers Gold.png",'text':"Farmers Gold Black Seed Oil",'weight':"100 ml", 'mrp':"৳ 250"},
    {'img':"Fresh Fortified.png",'text':"Fresh Fortified Soyabean Oil(Poly)",'weight':"1 ltr", 'mrp':"৳ 174"},
    {'img':"Fresh Oil.png",'text':"Fresh Fortified Soyabean Oil",'weight':"1 ltr", 'mrp':"৳ 175"},
    {'img':"Fresh Soyabean Oil.png",'text':"Fresh Fortified Soyabean Oil",'weight':"5 ltr", 'mrp':"৳ 852"},
    {'img':"Olio Olive Oil.png",'text':"Olio Orolio Olive Oil",'weight':"5 ltr", 'mrp':"৳ 6855"},
    {'img':"Olitalia Oil.png",'text':"Olitalia Fortifed Sunflower Oil",'weight':"5 ltr", 'mrp':"৳ 2150"},
    {'img':"Olitalia Sunflower.png",'text':"Olitalia Fortified Sunflower Oil",'weight':"2 ltr", 'mrp':"৳ 895"},
    {'img':"Radhuni Mustard Oil.png",'text':"Radhuni Pure Mustard Oil",'weight':"500 ml", 'mrp':"৳ 170"},
    {'img':"Starship Fortified Soyabean Oil.png",'text':"Starship Fortified Soyabean Oil",'weight':"5 ltr", 'mrp':"৳ 852"},
    {'img':"Starship Soyabean Oil.png",'text':"Starship Fortified Soyabean Oil",'weight':"2 ltr", 'mrp':"৳ 350"},
    {'img':"Starship Soyabean Oil Fortified.png",'text':"Starship Fortified Soyabean Oil",'weight':"1 ltr", 'mrp':"৳ 175"},
    {'img':"Suffola Active.png",'text':"Suffola Active Plus Edible Oil",'weight':"5 ltr", 'mrp':"৳ 1900"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Oil", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/oil.png', height: 50,)
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
                        child: UiHelper.OilImage(img: items[index]['img'].toString()),
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