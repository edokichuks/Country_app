
import 'package:hng_task3/features/countries/models/country/country.dart';
import 'package:hng_task3/services/countries_data_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///this layer is meant to interact with the data layer i.e CountriesDataService
final countriesListProvider =
    FutureProvider<List<Country>>((ref) => ref.read(countriesDataServiceProvider).countryList());
