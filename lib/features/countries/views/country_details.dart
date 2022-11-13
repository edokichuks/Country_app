import 'package:flutter/material.dart';
import 'package:hng_task3/constants/app_string.dart';
import 'package:hng_task3/features/countries/models/country/country.dart';

import '../../../constants/app_color.dart';

class CountryDetails extends StatelessWidget {
  final Country country;
  const CountryDetails({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          country.name!.common ?? AppString.country,
          style: Theme.of(context).textTheme.headline3,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.transperent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      country.flags!.png ?? AppString.flag,
                    ),
                  ),
                ),
              ),
              Description(
                  title: 'Population', value: country.population.toString()),
              Description(
                title: 'Region',
                value: country.continents!.join(),
              ),
              Description(
                title: 'Capital',
                value: country.capital != null
                    ? country.capital!.join('')
                    : country.capital.toString(),
              ),
              Description(
                title: 'Motto',
                value: country.status ?? 'Unity',
              ),
              const SizedBox(
                height: 10,
              ),
              Description(
                title: 'Official language',
                value: country.demonyms!.eng!.f.toString(),
              ),
              Description(
                title: 'Ethic group',
                value: country.cca2.toString(),
              ),
              const Description(
                title: 'Religion',
                value: 'Christianity',
              ),
              const Description(
                title: 'Government',
                value: 'Parliamentary democracy',
              ),
              const SizedBox(
                height: 10,
              ),
              Description(
                  title: 'Independence', value: country.independent.toString()),
              Description(
                title: 'Area',
                value: country.area.toString(),
              ),
              Description(
                title: 'Currency',
                value: country.currencies!.mru.toString(),
              ),
              Description(
                title: 'GPD',
                value: country.demonyms!.eng!.f.toString(),
              ),
              const SizedBox(
                height: 10,
              ),
              Description(title: 'Time zone', value: country.timezones![0]),
              const Description(
                title: 'Date formate',
                value: 'dd/mm/yyyy',
              ),
              const Description(title: 'Dailing code', value: '+2'),
              const Description(
                title: 'Driving Side',
                value: 'right',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String title;
  final String value;
  const Description({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text.rich(
        TextSpan(text: '$title: ', children: [
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),
          )
        ]),
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
