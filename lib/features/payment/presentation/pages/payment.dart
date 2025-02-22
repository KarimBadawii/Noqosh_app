import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/checkout_card.dart';
import '../widgets/large_buttom.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  static const routeName = '/payment';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: ColorManager.containerGray,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        centerTitle: true,
        title: const Text("Checkout",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white70,
      ),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h,),
          Center(
            child: CheckOutCard(
              title: "Personal Details",
              icon: Icons.person,
              param1: "Karim Badawy",
              param2: "25/06/2025",
              //param3: "kbadawy1555585855558@gmail.com",
              // lw el user dakhl string tweell haib2a fee errorr
              param3: "kbadawy18@gmail.com",
              param4: "cairo, egypt",


            ),),
          SizedBox(height: 24.h,),
          Center(
            child: CheckOutCard(
              title: "Contact",
              icon: Icons.phone_android_outlined,
              param1: "+201091917377",
              param3: "kbadawy18@gmail.com",



            ),),
          SizedBox(height: 24.h,),
          Center(
            child: CheckOutCard(
              title: "Payment",
              icon: Icons.payment,
              param1: "**** **** **** 1234",
              param3: "Viza",
              param4: "25/06",


            ),),
          const Spacer(),
          Center(child: LargeButton(label: "Pay Now",isStadiumBorder: false,onTap: (){})),
          SizedBox(height: 24.h,),

        ],
      )
    );
  }
}


