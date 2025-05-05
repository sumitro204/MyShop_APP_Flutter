import 'package:flutter/material.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class Ghee extends StatefulWidget {
  const Ghee({super.key});

  @override
  State<Ghee> createState() => _GheeState();
}

class _GheeState extends State<Ghee> {
  var items = [
    {'img':"Aarong Dairy Ghee.png",'text':"Aarong Dairy Pure Ghee",'weight':"900 gm", 'mrp':"৳ 1580"},
    {'img':"Aarong Ghee.png",'text':"Aarong Dairy Pure Ghee",'weight':"400 gm", 'mrp':"৳ 740"},
    {'img':"Eastern Pickle.png",'text':"The Eastern Pickle Company Ghee",'weight':"350 gm", 'mrp':"৳ 690"},
    {'img':"Farm Fresh Ghee.png",'text':"Farm Fresh Ghee",'weight':"450 gm", 'mrp':"৳ 740"},
    {'img':"Farm ghee.png",'text':"Farm Fresh Ghee",'weight':"1 kg", 'mrp':"৳ 1600"},
    {'img':"Farmers Gold Ghee.png",'text':"Farmers Gold Ghee",'weight':"175 gm", 'mrp':"৳ 308"},
    {'img':"Finlay Ghee.png",'text':"Finlay Premium Ghee",'weight':"100 gm", 'mrp':"৳ 210"},
    {'img':"Kishwan ghee.png",'text':"Kishwan Premium Ghee",'weight':"400 gm", 'mrp':"৳ 620"},
    {'img':"Meena ghee.png",'text':"Meena Sweets Ghee",'weight':"500 gm", 'mrp':"৳ 1075"},
    {'img':"Pran Ghee.png",'text':"Pran Premium Ghee",'weight':"100 gm", 'mrp':"৳ 190"},
    {'img':"Pran Premium.png",'text':"Pran Premium Ghee",'weight':"200 gm", 'mrp':"৳ 350"},
    {'img':"Radhuni Ghee.png",'text':"Radhuni Premium Ghee",'weight':"200 gm", 'mrp':"৳ 400"},
    {'img':"Sun Premium.png",'text':"Sun Premium Ghee",'weight':"200 gm", 'mrp':"৳ 425"},
    {'img':"Ultra Ghee.png",'text':"Ultra Ghee",'weight':"400 gm", 'mrp':"৳ 620"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UiHelper.CustomText(text: "Ghee", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,),
            Image.asset('assets/images/ghee.png', height: 50,)
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
                        child: UiHelper.GheeImage(img: items[index]['img'].toString()),
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