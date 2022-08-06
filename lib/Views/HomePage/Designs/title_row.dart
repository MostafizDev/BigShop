import 'package:flutter/material.dart';

class TitleRow extends StatefulWidget {
  final String? title;
  final VoidCallback? onTap;
  final bool? isFilter;

  const TitleRow({Key? key, this.title, this.onTap, this.isFilter = false})
      : super(key: key);

  @override
  State<TitleRow> createState() => _TitleRowState();
}

class _TitleRowState extends State<TitleRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title.toString(),
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: widget.onTap,
            child: widget.isFilter == false
                ? const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : Image.asset('assets/logo/group.png'),
          ),
        ],
      ),
    );
  }
}
