import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:hng_task3/constants/constants.dart';
import '../features/countries/models/country/country.dart';
import '../features/countries/views/country_details.dart';


GroupedListView<Country, dynamic> countryListView(
    {required List<Country> countryData}) {
  return GroupedListView(
    elements: countryData,
    groupBy: (element) => element.name!.common![0],
    // groupComparator: (value1, value2) => value2.compareTo(value1),
    itemComparator: (item1, item2) =>
        item1.name!.common!.compareTo(item2.name!.common!),
    order: GroupedListOrder.ASC,
    useStickyGroupSeparators: false,
    groupSeparatorBuilder: (value) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    itemBuilder: (c, singleCountry) {
      return InkWell(
        onTap: () {
          Navigator.push(
            c,
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
    },
  );
}
