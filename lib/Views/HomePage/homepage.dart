import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Controllers/get_data.dart';
import 'package:shop/Utils/Docker/docker.dart';
import 'package:shop/Utils/Docker/docker_item.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Views/HomePage/Componants/best_seller.dart';
import 'package:shop/Views/HomePage/Componants/category.dart';
import 'package:shop/Views/HomePage/Componants/image_slider.dart';
import 'package:shop/Views/HomePage/Componants/new_arrival.dart';
import 'package:shop/Views/HomePage/Componants/product_search.dart';

import 'Componants/popular_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData? getData;
  int? currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    getData = Provider.of<GetData>(context, listen: false);

    getData!.getInfo();
    super.initState();
  }

  Future<bool> willPopCallback() async {
    exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPopCallback,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              const Icon(Icons.my_location),
              AppSpaces.spaces_width_5,
              const Text(
                'Select Location',
                style: TextStyle(fontSize: 14),
              ),
              AppSpaces.spaces_width_5,
              const Icon(Icons.keyboard_arrow_down_sharp),
            ],
          ),
          actions: [
            const Icon(Icons.notifications_active_outlined),
            AppSpaces.spaces_width_5,
            const Icon(Icons.shopping_cart_outlined),
            AppSpaces.spaces_width_5,
          ],
        ),
        body: Consumer<GetData>(builder: (context, data, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: data.homepageModel != null
                ? ListView(
                    //shrinkWrap: true,
                    children: [
                      ///Search
                      const ProductSearch(),

                      ///Slider
                      data.homepageModel!.sliderVisibilty == true
                          ? ImageSlider(
                              imageSlider: data.homepageModel!.sliders,
                            )
                          : Container(),

                      ///Category
                      AppSpaces.spaces_height_20,
                      data.homepageModel!.popularCategoryVisibilty == true
                          ? const CategoryWidget()
                          : Container(),

                      ///Popular
                      AppSpaces.spaces_height_20,
                      const PopularProduct(),

                      ///Best Seller
                      AppSpaces.spaces_height_20,
                      data.homepageModel!.sellerVisibility == true
                          ? const BestSeller()
                          : Container(),

                      ///New Arrival
                      AppSpaces.spaces_height_20,
                      data.homepageModel!.newArrivalProductVisibility == true
                          ? const NewArrival()
                          : Container(),
                    ],
                  )
                : Container(),
          );
        }),
        bottomNavigationBar: Docker(
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          borderRadius: 15.0,
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          selectedBackgroundColor: Colors.white,
          items: [
            DockerItem(
              icon: 'assets/logo/home.png',
              title: 'Home',
            ),
            DockerItem(
              icon: 'assets/logo/message.png',
              title: 'Message',
            ),
            DockerItem(
              icon: 'assets/logo/order.png',
              title: 'Order',
            ),
            DockerItem(
              icon: 'assets/logo/profile.png',
              title: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
