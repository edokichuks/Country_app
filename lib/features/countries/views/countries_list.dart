import 'package:flutter/material.dart';
import 'package:hng_task3/constants/app_color.dart';
import 'package:hng_task3/constants/app_string.dart';
import 'package:hng_task3/constants/app_textstyle.dart';
import 'package:hng_task3/features/countries/models/country/country.dart';
import 'package:hng_task3/features/countries/notifiers/countries_notifiers.dart';
import 'package:hng_task3/features/countries/views/country_details.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/app_loading.dart';

class Countries extends ConsumerStatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  ConsumerState<Countries> createState() => _CountriesState();
}

class _CountriesState extends ConsumerState<Countries> {
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
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: AppColor.textColor.withOpacity(0.4),
                shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.dark_mode_outlined),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: AppString.searchCountry,
              hintStyle: TextStyle(
                color: AppColor.textColor,
              ),
              filled: true,
              fillColor: Colors.blueGrey.shade100.withOpacity(0.4),
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
          ),
          Expanded(
            child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
              AsyncValue<List<Country>> countryList =
                  ref.watch(countriesListProvider);
              return countryList.when(
                  data: (data) {
                    return ListView.builder(
                        itemCount: data.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final singleCountry = data[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return CountryDetails(country: singleCountry);
                              }));
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
                                      singleCountry.flags!.png ??
                                          AppString.flag,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(singleCountry.name!.common ??
                                  AppString.country),
                              subtitle: Text(singleCountry.capital != null
                                  ? singleCountry.capital!.join('')
                                  : singleCountry.capital.toString()),
                            ),
                          );
                        });
                  },
                  error: (error, stack) => Text(error.toString()),
                  loading: () => const AppLoading());
            }),
          )
        ],
      ),
    );
  }
}
