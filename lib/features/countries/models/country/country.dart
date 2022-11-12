import 'package:equatable/equatable.dart';

import 'capital_info.dart';
import 'car.dart';
import 'coat_of_arms.dart';
import 'currencies.dart';
import 'demonyms.dart';
import 'flags.dart';
import 'gini.dart';
import 'idd.dart';
import 'languages.dart';
import 'maps.dart';
import 'name.dart';
import 'translations.dart';

class Country extends Equatable {
  final Name? name;
  final List<dynamic>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<dynamic>? capital;
  final List<dynamic>? altSpellings;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final Translations? translations;
  final List<dynamic>? latlng;
  final bool? landlocked;
  final List<dynamic>? borders;
  final double? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final Gini? gini;
  final String? fifa;
  final Car? car;
  final List<dynamic>? timezones;
  final List<dynamic>? continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;

  const Country({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        tld: json['tld'] as List<dynamic>?,
        cca2: json['cca2'] as String?,
        ccn3: json['ccn3'] as String?,
        cca3: json['cca3'] as String?,
        cioc: json['cioc'] as String?,
        independent: json['independent'] as bool?,
        status: json['status'] as String?,
        unMember: json['unMember'] as bool?,
        currencies: json['currencies'] == null
            ? null
            : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
        idd: json['idd'] == null
            ? null
            : Idd.fromJson(json['idd'] as Map<String, dynamic>),
        capital: json['capital'] as List<dynamic>?,
        altSpellings: json['altSpellings'] as List<dynamic>?,
        region: json['region'] as String?,
        subregion: json['subregion'] as String?,
        languages: json['languages'] == null
            ? null
            : Languages.fromJson(json['languages'] as Map<String, dynamic>),
        translations: json['translations'] == null
            ? null
            : Translations.fromJson(
                json['translations'] as Map<String, dynamic>),
        latlng: json['latlng'] as List<dynamic>?,
        landlocked: json['landlocked'] as bool?,
        borders: json['borders'] as List<dynamic>?,
        area: json['area'] as double?,
        demonyms: json['demonyms'] == null
            ? null
            : Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>),
        flag: json['flag'] as String?,
        maps: json['maps'] == null
            ? null
            : Maps.fromJson(json['maps'] as Map<String, dynamic>),
        population: json['population'] as int?,
        gini: json['gini'] == null
            ? null
            : Gini.fromJson(json['gini'] as Map<String, dynamic>),
        fifa: json['fifa'] as String?,
        car: json['car'] == null
            ? null
            : Car.fromJson(json['car'] as Map<String, dynamic>),
        timezones: json['timezones'] as List<dynamic>?,
        continents: json['continents'] as List<dynamic>?,
        flags: json['flags'] == null
            ? null
            : Flags.fromJson(json['flags'] as Map<String, dynamic>),
        coatOfArms: json['coatOfArms'] == null
            ? null
            : CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
        startOfWeek: json['startOfWeek'] as String?,
        capitalInfo: json['capitalInfo'] == null
            ? null
            : CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'name': name?.toJson(),
        'tld': tld,
        'cca2': cca2,
        'ccn3': ccn3,
        'cca3': cca3,
        'cioc': cioc,
        'independent': independent,
        'status': status,
        'unMember': unMember,
        'currencies': currencies?.toJson(),
        'idd': idd?.toJson(),
        'capital': capital,
        'altSpellings': altSpellings,
        'region': region,
        'subregion': subregion,
        'languages': languages?.toJson(),
        'translations': translations?.toJson(),
        'latlng': latlng,
        'landlocked': landlocked,
        'borders': borders,
        'area': area,
        'demonyms': demonyms?.toJson(),
        'flag': flag,
        'maps': maps?.toJson(),
        'population': population,
        'gini': gini?.toJson(),
        'fifa': fifa,
        'car': car?.toJson(),
        'timezones': timezones,
        'continents': continents,
        'flags': flags?.toJson(),
        'coatOfArms': coatOfArms?.toJson(),
        'startOfWeek': startOfWeek,
        'capitalInfo': capitalInfo?.toJson(),
      };

  Country copyWith({
    Name? name,
    List<String>? tld,
    String? cca2,
    String? ccn3,
    String? cca3,
    String? cioc,
    bool? independent,
    String? status,
    bool? unMember,
    Currencies? currencies,
    Idd? idd,
    List<String>? capital,
    List<String>? altSpellings,
    String? region,
    String? subregion,
    Languages? languages,
    Translations? translations,
    List<int>? latlng,
    bool? landlocked,
    List<String>? borders,
    double? area,
    Demonyms? demonyms,
    String? flag,
    Maps? maps,
    int? population,
    Gini? gini,
    String? fifa,
    Car? car,
    List<String>? timezones,
    List<String>? continents,
    Flags? flags,
    CoatOfArms? coatOfArms,
    String? startOfWeek,
    CapitalInfo? capitalInfo,
  }) {
    return Country(
      name: name ?? this.name,
      tld: tld ?? this.tld,
      cca2: cca2 ?? this.cca2,
      ccn3: ccn3 ?? this.ccn3,
      cca3: cca3 ?? this.cca3,
      cioc: cioc ?? this.cioc,
      independent: independent ?? this.independent,
      status: status ?? this.status,
      unMember: unMember ?? this.unMember,
      currencies: currencies ?? this.currencies,
      idd: idd ?? this.idd,
      capital: capital ?? this.capital,
      altSpellings: altSpellings ?? this.altSpellings,
      region: region ?? this.region,
      subregion: subregion ?? this.subregion,
      languages: languages ?? this.languages,
      translations: translations ?? this.translations,
      latlng: latlng ?? this.latlng,
      landlocked: landlocked ?? this.landlocked,
      borders: borders ?? this.borders,
      area: area ?? this.area,
      demonyms: demonyms ?? this.demonyms,
      flag: flag ?? this.flag,
      maps: maps ?? this.maps,
      population: population ?? this.population,
      gini: gini ?? this.gini,
      fifa: fifa ?? this.fifa,
      car: car ?? this.car,
      timezones: timezones ?? this.timezones,
      continents: continents ?? this.continents,
      flags: flags ?? this.flags,
      coatOfArms: coatOfArms ?? this.coatOfArms,
      startOfWeek: startOfWeek ?? this.startOfWeek,
      capitalInfo: capitalInfo ?? this.capitalInfo,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      tld,
      cca2,
      ccn3,
      cca3,
      cioc,
      independent,
      status,
      unMember,
      currencies,
      idd,
      capital,
      altSpellings,
      region,
      subregion,
      languages,
      translations,
      latlng,
      landlocked,
      borders,
      area,
      demonyms,
      flag,
      maps,
      population,
      gini,
      fifa,
      car,
      timezones,
      continents,
      flags,
      coatOfArms,
      startOfWeek,
      capitalInfo,
    ];
  }
}
