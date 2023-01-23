import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants/texts.dart';
import '../constants/color.dart';

class BookingScreen extends StatefulWidget{
  const BookingScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return BookingScreenState();
  }
}

class BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context){


    Widget mainContainer() {

      Widget creditsBuilder(int index,) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          AssetImage("assets/images/person_image.jpg")),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Parveen Travels",
                            style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: blackColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ticket no: 3214231",
                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: greyButtonColor),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "- ₹699",
                    style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: blackColor) ,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                color: appPrimaryBlueColor,
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "01 DEC 2022",
                          style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: blackColor),
                        ),
                        Icon(
                          CupertinoIcons.arrow_up_right,
                          size: 20,
                          color: buttonBackgroundColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 NOV 2022",
                          style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: blackColor),
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          size: 20,
                          color: blackColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Payment Request",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: greyButtonColor),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Payment Received",
                              style:  TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: greyButtonColor),
                            ),
                            SizedBox(width: 40,)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

      Widget listBuilder() => ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return creditsBuilder(index, );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 3,
            color: greyButtonColor,
          );
        },
      );


      Widget itemList() {

        return ListView (
          children: [
            const SizedBox(
              height: 10,
            ),
            listBuilder(),
            const Divider(
              thickness: 3,
              color: greyButtonColor,
            ),
          ],
        );
      }

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          color: whiteColor,
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: appPrimaryBlueColor,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: mBlueColor,
                  ),
                  labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color: whiteColor)  ,
                  unselectedLabelColor: Colors.black,
                  tabs:  const [
                    Tab(
                      text: completed
                      ,
                    ),
                    Tab(
                      text: canceled,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    itemList(),
                    itemList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(labelBooking,style: TextStyle(color: blackColor, fontSize: 16),),
        backgroundColor: whiteColor,
      ),
      body: mainContainer(),

    );
  }
}