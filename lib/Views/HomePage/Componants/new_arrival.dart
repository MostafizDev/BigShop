import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shop/Controllers/get_data.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Utils/urls.dart';
import 'package:shop/Views/HomePage/Designs/product_card.dart';
import 'package:shop/Views/HomePage/Designs/title_row.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GetData>(builder: (context, data, child) {
      return Column(
        children: [
          TitleRow(
            title: 'New Arrival',
            onTap: () {},
            isFilter: true,
          ),
          StaggeredGrid.count(
            crossAxisCount: 2,
            children: List<Widget>.generate(
                data.homepageModel!.newArrivalProducts!.length, (index) {
              return ProductCard(
                title: data.homepageModel!.newArrivalProducts![index].name
                    .toString(),
                image: Urls.imageUrl +
                    data.homepageModel!.newArrivalProducts![index].thumbImage
                        .toString(),
                price: data.homepageModel!.newArrivalProducts![index].price
                    .toString(),
                offerPrice: data
                    .homepageModel!.newArrivalProducts![index].offerPrice
                    .toString(),
                rating: double.parse(data
                    .homepageModel!.newArrivalProducts![index].averageRating
                    .toString()),
                isFavourite:
                    data.homepageModel!.newArrivalProducts![index].isBest == '1'
                        ? true
                        : false,
              );
            }),
          ),
          AppSpaces.spaces_height_10,
        ],
      );
    });
  }
}
