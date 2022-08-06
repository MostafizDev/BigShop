import 'package:flutter/material.dart';
import 'package:shop/Utils/Widgets/custom_text_field.dart';
import 'package:shop/Utils/app_spaces.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  ///SignUp TextField
  TextEditingController searchController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 8,
                child: CustomTextField(
                  prefixIcon: const Icon(Icons.search),
                  controller: searchController,
                  hintText: 'Search Products',
                  fillColor: Colors.white,
                  //isDense: true,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/logo/group.png',
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
