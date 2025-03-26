import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:myshop/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(

            children: [
              UiHelper.CustomImage(img: 'login.png'),
              SizedBox(height: 30,),
              UiHelper.CustomImage(img: 'image10.png'),
              SizedBox(height: 20,),
              UiHelper.CustomText(text: 'Bangladesh Last Minute App', color:Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold"),
              SizedBox(height: 20,),
               Card(
                 elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 200, width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                      children: [
                        SizedBox(height: 20,),
                        UiHelper.CustomText(text: 'Karnel', color: Colors.black, fontweight: FontWeight.w500, fontsize: 15),
                        SizedBox(height: 5,),
                        UiHelper.CustomText(text: '78277XXXX', color: Color(0XFF9C9C9C), fontweight: FontWeight.w700, fontsize: 14),
                        SizedBox(height: 20,),
                        SizedBox(height: 48, width: 295,
                           child: ElevatedButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()),);
                           },style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0XFFE23744),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             )
                           ), child:
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                           UiHelper.CustomText(text: 'Login with', color:Color(0XFFFFFFFF) , fontweight: FontWeight.bold, fontsize: 14,fontfamily: 'bold'),
                            SizedBox(width: 10,),
                               UiHelper.CustomImage(img: 'image 9.png')
                             ],)
                           ),
                        ),
                        SizedBox(height: 8,),
                        UiHelper.CustomText(text: "Access your saved addresses from Zomato automatically!", color: Color(0XFF9C9C9C), fontweight: FontWeight.w400, fontsize: 10),
                        SizedBox(height: 15,),
                        UiHelper.CustomText(text: 'or login with phone number', color: Color(0XFF269237), fontweight: FontWeight.w400, fontsize: 14),
                      ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

}