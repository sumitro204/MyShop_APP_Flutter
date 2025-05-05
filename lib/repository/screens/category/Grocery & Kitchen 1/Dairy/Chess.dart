import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  var items = [
    {'img':"Aarong.png",'text':"Aarong Dairy Austagram Chess",'weight':"200 gm", 'mrp':"৳ 190"},
    {'img':"Almarai Triangle.png",'text':"Almarai Triangle Chess(8 Slices)",'weight':"120 gm", 'mrp':"৳ 435"},
    {'img':"Anchor.png",'text':"Anchor Processed Cheddar Chess 12 Slice",'weight':"200 gm", 'mrp':"৳ 485"},
    {'img':"Cheese Cube.png",'text':"Aarong Dairy Cheese Cube Classic",'weight':"120 gm", 'mrp':"৳ 200"},
    {'img':"Cream.png",'text':"Almarai Spreadable Cream Cheese",'weight':"200 gm", 'mrp':"৳ 639"},
    {'img':"Kisan.png",'text':"Kisan Processed Cheese",'weight':"200 gm", 'mrp':"৳ 240"},
    {'img':"Mozzarella Cheese.png",'text':"Mozzarella Cheese",'weight':"250 gm", 'mrp':"৳ 260"},
    {'img':"Paneer.png",'text':"Aarong Dairy Paneer",'weight':"200 gm", 'mrp':"৳ 200"},
    {'img':"Processed.png",'text':"Anchor Processed Cheddar Cheese 12 Slice",'weight':"200 gm", 'mrp':"৳ 485"},
    {'img':"Spread Pizza.png",'text':"Aarong Dairy Cheese Spread Pizza",'weight':"180 gm", 'mrp':"৳ 260"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Chess", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/chess.png', height: 50,)
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
                        child: UiHelper.ChessImage(img: items[index]['img'].toString()),
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