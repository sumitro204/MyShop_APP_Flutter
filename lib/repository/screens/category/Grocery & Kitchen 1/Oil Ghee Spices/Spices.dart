import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Spices extends StatefulWidget {
  const Spices({super.key});

  @override
  State<Spices> createState() => _SpicesState();
}

class _SpicesState extends State<Spices> {
  var items = [
    {'img':"Biryani Masala.png",'text':"Sha Biryani Masala",'weight':"50 gm", 'mrp':"৳ 115"},
    {'img':"Cardamom Elachi.png",'text':"Cardamom(Elachi) Whole",'weight':"50 gm", 'mrp':"৳ 289"},
    {'img':"Coriander.png",'text':"Coriander(Dhonia)",'weight':"100 gm", 'mrp':"৳ 39"},
    {'img':"Daruchini.png",'text':"Cinnamon(Daruchini)Whole",'weight':"100 gm", 'mrp':"৳ 75"},
    {'img':"Holud.png",'text':"Radhuni Turmeric(Holud) Powder",'weight':"200 gm", 'mrp':"৳ 125"},
    {'img':"Kalo Jira.png",'text':"Black Cumin(Kalo Jira)",'weight':"100 gm", 'mrp':"৳ 55"},
    {'img':"Lobongo.png",'text':"Clove(Lobongo)",'weight':"50 gm", 'mrp':"৳ 119"},
    {'img':"Mix Spice.png",'text':"Mix Spice(Pach Foron)",'weight':"100 gm", 'mrp':"৳ 35"},
    {'img':"Morich Powder.png",'text':"Radhuni Chili (Morich) Powder",'weight':"200 gm", 'mrp':"৳ 120"},
    {'img':"Radhuni Dhonia.png",'text':"Radhuni Coriander(Dhonia) Powder",'weight':"100 gm", 'mrp':"৳ 60"},
    {'img':"Radhuni Garam Masala.png",'text':"Radhuni Garam Masala",'weight':"40 gm", 'mrp':"৳ 80"},
    {'img':"Radhuni Jira.png",'text':"Radhuni Cumin (Jira) Powder",'weight':"100 gm", 'mrp':"৳ 140"},
    {'img':"Shukna Morich.png",'text':"Dried Chilies(Shukna Morich)",'weight':"100 gm", 'mrp':"৳ 59"},
    {'img':"Sobuj Elachi.png",'text':"Green Cardamom (Sobuj Elachi) Whole",'weight':"50 gm", 'mrp':"৳ 299"},
    {'img':"Tejpata.png",'text':"Bay Leaf(Tejpata)",'weight':"100 gm", 'mrp':"৳ 35"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: 'Masala', color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/spices.png', height: 50,)
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
                        child: UiHelper.SpicesImage(img: items[index]['img'].toString()),
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