import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Controllers/get_data.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Utils/urls.dart';
import 'package:shop/Views/HomePage/Designs/category_card.dart';
import 'package:shop/Views/HomePage/Designs/seller_card.dart';
import 'package:shop/Views/HomePage/Designs/title_row.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GetData>(builder: (context, data, child) {
      return Container(
        child: Column(
          children: [
            TitleRow(
              title: 'Best Sellers',
              onTap: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                    List.generate(data.homepageModel!.sellers!.length, (index) {
                  return SellerCard(
                    title:
                        data.homepageModel!.sellers![index].shopName.toString(),
                    image: Urls.imageUrl +
                        data.homepageModel!.sellers![index].logo.toString(),
                  );
                }),
              ),
            ),
            AppSpaces.spaces_height_10,
          ],
        ),
      );
    });
  }
}
