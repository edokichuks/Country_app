import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Icon(
            Icons.search_off,
            size: 100,
            color: AppColor.mainColor,
          ),
          Text(
            'No results found',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: AppColor.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
