import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../constants/color.dart';
import '../constants/texts.dart';
import '../models/popular_destination_model.dart';
import '../models/travel_logs_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> sliderList = [
    Image.asset("assets/images/flight_image.jpg"),
    Image.asset("assets/images/dubai_image.jpg"),
    Image.asset("assets/images/hotel_image.jpg"),
    Image.asset("assets/images/vacation_image.jpg"),
  ];


  @override
  Widget build(BuildContext context) {


    Widget imageContainer() {
      return Stack(
        children: [
          CarouselSlider(
            items: sliderList,
            options: CarouselOptions(
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 18,
                width: 100,
                alignment: Alignment.center,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: sliderList.length,
                    itemBuilder: (c, i) => Container(
                      margin: const EdgeInsets.all(5),
                      width: i == currentIndex ? 22 : 10,
                      decoration: BoxDecoration(
                          color: i == currentIndex
                              ? buttonBackgroundColor
                              : Colors.black,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10))),
                    )),
              ))
        ],
      );
    }

    Widget bookingText(){
      return const Padding(
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
        child: Text(
          'Let\'s start booking!',
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget travelContainer(){
      return  Container(
        height: 144,
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.only(left: 16),
                    height: 64,
                    decoration: BoxDecoration(
                      color: mFillColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: mBorderColor, width: 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.flight_takeoff_outlined,color: mBlueColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Flight',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                              ),
                              Text(
                                'Feel freedom',
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    padding: EdgeInsets.only(left: 16),
                    height: 64,
                    decoration: BoxDecoration(
                      color: mFillColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: mBorderColor, width: 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.train,color: mBlueColor,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Trains',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                              ),
                              Text(
                                'Intercity',
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.only(left: 16),
                    height: 64,
                    decoration: BoxDecoration(
                      color: mFillColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: mBorderColor, width: 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.hotel,color: mBlueColor,),
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Hotel',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                              ),
                              Text(
                                'Let\'s take a break',
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.only(left: 16),
                    height: 64,
                    decoration: BoxDecoration(
                      color: mFillColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: mBorderColor, width: 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.car_rental,color: mBlueColor,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Car Rental',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                              ),
                              Text(
                                'Around the city',
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget popularText(){
      return  Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
        child: Text(
          'Popular Destinations!',
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget popularContainer(){
      return Container(
        height: 160,
        child: ListView.builder(
          itemCount: populars.length,
          padding: EdgeInsets.only(left: 16, right: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                height: 160,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: mBorderColor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        populars[index].image,
                        height: 74,
                      ),
                      SizedBox(height: 5,),
                      Text(
                          populars[index].name,
                          style:TextStyle(fontWeight: FontWeight.w700,
                              fontSize: 16,color: mCardTitleColor)
                      ),
                      SizedBox(height: 5,),

                      Text(
                          populars[index].country,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: mTitleColor,
                          )
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );

    }

    Widget travelText(){
      return  Padding(
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
        child: Text(
          'Travel logs!',
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget traveLogContainer(){
      return   Container(
        height: 181,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 16),
          itemCount: travelogs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 16),
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(travelogs[index].image),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        child: Container(),
                        right: 0,
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child:Container()
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container()
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Text(
                          'Travelog ' + travelogs[index].name,
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900,color: mFillColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    travelogs[index].content,
                    maxLines: 3,
                    style: TextStyle( fontSize: 10, fontWeight: FontWeight.w500, color: mTitleColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    travelogs[index].place,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: mBlueColor),
                  )
                ],
              ),
            );
          },
        ),
      );
    }


    return Scaffold(
      backgroundColor: whiteColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 120.0,
                backgroundColor: whiteColor,
                pinned: true,
                leadingWidth: 0,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  var top = constraints.biggest.height;

                  return FlexibleSpaceBar(
                    titlePadding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.08,),
                    title: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: top > 100 ?
                        EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.06) :
                        EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.02) ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45 ,
                              child: Text(
                                  top > 100
                                      ? "Hello Abrar,"
                                      : "Home",
                                  style: top > 100
                                      ? TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: blackColor)
                                      : TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: blackColor)
                              ),
                            ),
                            top > 100
                                ?  const Text(lookingToday,
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 9,
                                ))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  );
                }
                )
            ),
          ];
        },
        body: ListView(
            children: [
              const SizedBox(height: 5,),
              imageContainer(),

              bookingText(),

              travelContainer(),

              popularText(),

              popularContainer(),

              travelText(),

              traveLogContainer(),

        ],
      ),


      ),


    );
  }
}
