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
  late final TextEditingController searchController;
  List<Country> searchedCountry = [];
  List<Country> countryInternalList = [];

  bool isSearching = false;

  @override
  void initState() {
    searchController = TextEditingController();
    searchController.addListener(searchCountryListener);
    super.initState();
  }

  void searchCountryListener() {
    if (searchController.text.trim().isNotEmpty) {
      String searchQuery = searchController.text.trim().toLowerCase();
      List<Country> tempList = [];

      for (int i = 0; i < countryInternalList.length; i++) {
        final singleCountry = countryInternalList[i];

        if (singleCountry.name!.common!.toLowerCase().contains(searchQuery)) {
          tempList.add(singleCountry);
        }
      }
      setState(() {
        searchedCountry = tempList;
        isSearching = true;
      });
    } else {
      setState(() {
        isSearching = false;
      });
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

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
            controller: searchController,
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
                    countryInternalList = data;


                    return 
                    isSearching && searchedCountry.isEmpty?
                    
                    Center(
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
                          )
                        :
                        isSearching ?
                        ListView.builder(
                        itemCount: searchedCountry.length,
                        physics: const BouncingScrollPhysics(),
                        
                        itemBuilder: (context, index) {
                          final singleCountry = searchedCountry[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return CountryDetails(
                                        country: singleCountry);
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
                        }):

                    ListView.builder(
                        itemCount: data.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final singleCountry = data[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return CountryDetails(
                                        country: singleCountry);
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
