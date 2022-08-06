import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String? title;
  final String? image;

  const CategoryCard({Key? key, this.title, this.image}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            //child: Image.network(widget.image.toString()),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                Icons.category_outlined,
                size: 40,
              ),
            ),
          ),
          Text(
            widget.title.toString(),
          ),
        ],
      ),
    );
  }
}
