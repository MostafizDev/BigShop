import 'package:flutter/material.dart';

class SellerCard extends StatefulWidget {
  final String? title;
  final String? image;

  const SellerCard({Key? key, this.title, this.image}) : super(key: key);

  @override
  State<SellerCard> createState() => _SellerCardState();
}

class _SellerCardState extends State<SellerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.network(
                widget.image.toString(),
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
