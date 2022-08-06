import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Controllers/get_data.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Utils/urls.dart';
import 'package:shop/Views/HomePage/Designs/category_card.dart';
import 'package:shop/Views/HomePage/Designs/product_card.dart';
import 'package:shop/Views/HomePage/Designs/title_row.dart';

class PopularProduct extends StatefulWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  State<PopularProduct> createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProduct> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GetData>(builder: (context, data, child) {
      return Column(
        children: [
          TitleRow(
            title: 'Popular',
            onTap: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                  data.homepageModel!.popularCategoryProducts!.length, (index) {
                return ProductCard(
                  title: data
                      .homepageModel!.popularCategoryProducts![index].name
                      .toString(),
                  image: Urls.imageUrl +
                      data.homepageModel!.popularCategoryProducts![index]
                          .thumbImage
                          .toString(),
                  price: data
                      .homepageModel!.popularCategoryProducts![index].price
                      .toString(),
                  offerPrice: data
                      .homepageModel!.popularCategoryProducts![index].offerPrice
                      .toString(),
                  rating: double.parse(data.homepageModel!
                      .popularCategoryProducts![index].averageRating
                      .toString()),
                  isFavourite: data.homepageModel!
                              .popularCategoryProducts![index].isBest ==
                          '1'
                      ? true
                      : false,
                );
              }),
            ),
          ),
          AppSpaces.spaces_height_10,
        ],
      );
    });
  }
}
