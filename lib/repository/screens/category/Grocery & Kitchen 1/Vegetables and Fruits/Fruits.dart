import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {

  var items = [
    {'img':"Anaros.png",'text':"Anaros (Pineapple)",'weight':"each", 'mrp':"৳ 75"},
    {'img':"Apple.png",'text':"China Fuji Apple ± 50 gm",'weight':"1 kg", 'mrp':"৳ 429"},
    {'img':"Apple Jujube.png",'text':"Apple Jujube (Apple Kul Boroi)",'weight':"500gm", 'mrp':"৳ 99"},
    {'img':"Banana Sobri.png",'text':"Banana Sobri",'weight':"4 pcs", 'mrp':"৳ 49"},
    {'img':"Bel.png",'text':"Bel (Wood Apple)",'weight':"each", 'mrp':"৳ 89"},
    {'img':"Boroi.png",'text':"Ball Shundori Kul Boroi",'weight':"500gm", 'mrp':"৳ 89"},
    {'img':"Cherry Anaros.png",'text':"Cherry Pineapple (Cherry Anaros) Special Offer",'weight':"each", 'mrp':"৳ 25"},
    {'img':"Chompa Kola.png",'text':"Banana Chompa (Ready To Eat)",'weight':"4 pcs", 'mrp':"৳ 35"},
    {'img':"Daab.png",'text':"Daab (Green Coconut)",'weight':"each", 'mrp':"৳ 149"},
    {'img':"Dalim.png",'text':"Dalim (Pomegranate)",'weight':"2 pcs", 'mrp':"৳ 349"},
    {'img':"Green Apple.png",'text':"Green Apple ± 50 gm",'weight':"1 kg", 'mrp':"৳ 519"},
    {'img':"Guava.png",'text':"Guava Premium (± 50 gm)",'weight':"1 kg", 'mrp':"৳ 99"},
    {'img':"Kacha Aam.png",'text':"Kacha Aam(Mango)",'weight':"500gm", 'mrp':"৳ 139"},
    {'img':"Lal Angur.png",'text':"Lal Angur (Red Grapes) ± 12 gm",'weight':"250gm", 'mrp':"৳ 149"},
    {'img':"Malta.png",'text':"Malta ± 50 gm",'weight':"1 kg", 'mrp':"৳ 329"},
    {'img':"Narikel.png",'text':"Narikel (Coconut)",'weight':"each", 'mrp':"৳ 179"},
    {'img':"Nashpati.png",'text':"Shada Nashpati (Pear White)",'weight':"2 pcs", 'mrp':"৳ 199"},
    {'img':"Orange.png",'text':"Orange Indian (± 50 gm)",'weight':"1 kg", 'mrp':"৳ 349"},
    {'img':"Paka Pape.png",'text':"Paka Pape ± 50 gm (Thai)",'weight':"1 kg", 'mrp':"৳ 219"},
    {'img':"Shagor Kola.png",'text':"Shagor Kola (Banana Sagor)",'weight':"4 pcs", 'mrp':"৳ 25"},
    {'img':"Sobuj Angur.png",'text':"Sobuj Angur (Green Grapes) ± 12 gm",'weight':"250gm", 'mrp':"৳ 99"},
    {'img':"Watermelon.png",'text':"Watermelon (Tormuj) 6 kg+",'weight':"each", 'mrp':"৳ 299"},
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
                        child: UiHelper.CustomImage2(img: items[index]['img'].toString()),
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