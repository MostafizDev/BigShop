import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Controllers/get_data.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Views/HomePage/Designs/category_card.dart';
import 'package:shop/Views/HomePage/Designs/title_row.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GetData>(builder: (context, data, child) {
      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleRow(
              title: 'Categories',
              onTap: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                    data.homepageModel!.popularCategories!.length, (index) {
                  return CategoryCard(
                    title: data
                        .homepageModel!.popularCategories![index].category!.name
                        .toString(),
                    image: data
                        .homepageModel!.popularCategories![index].category!.icon
                        .toString(),
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
