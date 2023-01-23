import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants/texts.dart';

import '../constants/color.dart';

class HelpScreen extends StatelessWidget{
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context){

    Widget viewAllIssues() =>  const ListTile(
      leading: Icon(
        CupertinoIcons.chat_bubble_text,
        color: subTileColor,
        size: 25,
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        viewAll,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );

    Widget viewAllBooking() => const ListTile(
      leading: Icon(Icons.list_alt_outlined,color: subTileColor,size: 25,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        viewBooking,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),

    );

    Widget technicalIssues() => const ListTile(
      leading:Icon(Icons.sync_problem_outlined,size: 25,color: subTileColor,) ,

      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        issues,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),

    );



    Widget offers() => const ListTile(
      leading: Icon(Icons.local_offer_outlined,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        offer,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),

    );

    Widget faqContainer() => const ListTile(
      leading: Icon(Icons.question_answer,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        faq,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );

    Widget referralContainer() => const ListTile(
      leading: Icon(Icons.mobile_friendly,size: 25,color: subTileColor,),
      trailing: Icon(
        Icons.navigate_next,
        color: blackColor,
        size: 25,
      ),
      title: Text(
        referral,
        style: TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: blackColor
        ),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        title: const Text(labelHelp,style: TextStyle(color: blackColor, fontSize: 16),),
        backgroundColor: whiteColor,
      ),
      body: ListView(
        children:  [
          viewAllIssues(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          viewAllBooking(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          technicalIssues(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          offers(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),

          faqContainer(),
          const Divider(
            thickness: 1,
            color: greyButtonColor,
          ),
          referralContainer()
        ],
      ),
    );
  }
}