import 'package:flutter/material.dart';
import 'package:hng_task3/constants/app_color.dart';
import 'package:hng_task3/constants/app_string.dart';
import 'package:hng_task3/constants/app_textstyle.dart';
import 'package:hng_task3/services/countries_data_services.dart';

class Countries extends StatelessWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: AppString.explore,
            style: AppTextstyle.header,
            children: [
              TextSpan(
                text: '.',
                style: AppTextstyle.header.copyWith(color: AppColor.red),
              ),
            ],
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.dark_mode_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: AppString.searchCountry,
              hintStyle: TextStyle(
                color: AppColor.textColor,
              ),
              filled: true,
              fillColor: Colors.blueGrey.shade100.withOpacity(0.4),
              prefixIcon: Icon(
                Icons.search,
              ),
            ),
          ),
          Text('test'),
          TextButton(
              onPressed: () async {
                await CountriesDataService().countryList();
              },
              child: Text('Test')),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.red
                  // image: DecorationImage(image: NetworkImage(''))
                  ),
              child: Text('A'),
            ),
            title: Text('Nigeria'),
            subtitle: Text('Abuja'),
          )
        ],
      ),
    );
  }
}
