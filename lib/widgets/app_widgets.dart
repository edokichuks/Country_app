import 'package:flutter/material.dart';
import 'package:hng_task3/constants/constants.dart';
import '../features/countries/views/country_details.dart';

////App the refactor method will be here
///
ListView countryListView({required List countryData}) {
    return ListView.builder(
        itemCount: countryData.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final singleCountry = countryData[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return CountryDetails(country: singleCountry);
                  },
                ),
              );
            },
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.transperent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      singleCountry.flags!.png ?? AppString.flag,
                    ),
                  ),
                ),
              ),
              title: Text(singleCountry.name!.common ?? AppString.country),
              subtitle: Text(singleCountry.capital != null
                  ? singleCountry.capital!.join('')
                  : singleCountry.capital.toString()),
            ),
          );
        });
  }


