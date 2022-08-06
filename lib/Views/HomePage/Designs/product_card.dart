import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:shop/Utils/app_spaces.dart';

class ProductCard extends StatefulWidget {
  final String? image;
  final String? title;
  final String? price;
  final String? offerPrice;
  final double? rating;
  final bool? isFavourite;

  const ProductCard(
      {Key? key,
      this.image,
      this.title,
      this.price,
      this.rating,
      this.isFavourite,
      this.offerPrice})
      : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Get.width * .45,
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                    widget.image.toString(),
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                  AppSpaces.spaces_height_5,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: widget.rating!,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      AppSpaces.spaces_height_5,
                      Text(
                        widget.title.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AppSpaces.spaces_height_10,
                      Row(
                        children: [
                          Text(
                            widget.offerPrice == 'null'
                                ? '\$${widget.price}'
                                : '\$${widget.offerPrice}',
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          AppSpaces.spaces_width_5,
                          Text(
                            widget.offerPrice == 'null'
                                ? ''
                                : '\$${widget.price}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: widget.isFavourite == true
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite_border),
            ),
          ],
        ),
      ),
    );
  }
}
