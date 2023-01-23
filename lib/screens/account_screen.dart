import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/texts.dart';

class MyAccountScreen extends StatelessWidget{
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context){

    Widget profileRow() => Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/person_image.jpg")),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              name,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Text(
                viewProfile,
                style: TextStyle(
                fontSize: 12,fontWeight: FontWeight.w600,color: buttonBackgroundColor
              ),
            )
            )
          ],
        )
      ],
    );

    Widget bankDetailsRow() => const ListTile(
      leading: Icon(
        CupertinoIcons.heart,
        color: subTileColor,
        size: 25,
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        bankDetails,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );

    Widget sharedProductsRow() => const ListTile(
      leading: Icon(Icons.share_outlined,color: subTileColor,size: 25,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        sharedProducts,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),

    );

    Widget myPaymentsRow() => const ListTile(
      leading:Icon(Icons.payment,size: 25,color: subTileColor,),

      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        myPayments,
         style: TextStyle(
          fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
      ),
      ),

    );



    Widget termsAndConditionRow() => const ListTile(
      leading: Icon(Icons.content_paste,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        termsConditions,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),

    );

    Widget privacyPolicyRow() => const ListTile(
      leading: Icon(Icons.privacy_tip_rounded,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        privacyPolicy,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );

    Widget logoutRow() => const ListTile(
      leading: Icon(Icons.logout,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        logout,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );




    return Scaffold(
      appBar: AppBar(
        title: const Text(labelAccount,style: TextStyle(color: blackColor, fontSize: 16),),
        backgroundColor: whiteColor,
      ),
      body:ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          profileRow(),
          const SizedBox(
            height: 10,
          ),

          bankDetailsRow(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          sharedProductsRow(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          myPaymentsRow(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          termsAndConditionRow(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          privacyPolicyRow(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          logoutRow()
        ],
      ),
    );
  }
}