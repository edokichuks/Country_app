import 'package:equatable/equatable.dart';

import 'ara.dart';
import 'bre.dart';
import 'ces.dart';
import 'cym.dart';
import 'deu.dart';
import 'est.dart';
import 'fin.dart';
import 'fra.dart';
import 'hrv.dart';
import 'hun.dart';
import 'ita.dart';
import 'jpn.dart';
import 'kor.dart';
import 'nld.dart';
import 'per.dart';
import 'pol.dart';
import 'por.dart';
import 'rus.dart';
import 'slk.dart';
import 'spa.dart';
import 'swe.dart';
import 'tur.dart';
import 'urd.dart';
import 'zho.dart';

class Translations extends Equatable {
	final Ara? ara;
	final Bre? bre;
	final Ces? ces;
	final Cym? cym;
	final Deu? deu;
	final Est? est;
	final Fin? fin;
	final Fra? fra;
	final Hrv? hrv;
	final Hun? hun;
	final Ita? ita;
	final Jpn? jpn;
	final Kor? kor;
	final Nld? nld;
	final Per? per;
	final Pol? pol;
	final Por? por;
	final Rus? rus;
	final Slk? slk;
	final Spa? spa;
	final Swe? swe;
	final Tur? tur;
	final Urd? urd;
	final Zho? zho;

	const Translations({
		this.ara, 
		this.bre, 
		this.ces, 
		this.cym, 
		this.deu, 
		this.est, 
		this.fin, 
		this.fra, 
		this.hrv, 
		this.hun, 
		this.ita, 
		this.jpn, 
		this.kor, 
		this.nld, 
		this.per, 
		this.pol, 
		this.por, 
		this.rus, 
		this.slk, 
		this.spa, 
		this.swe, 
		this.tur, 
		this.urd, 
		this.zho, 
	});

	factory Translations.fromJson(Map<String, dynamic> json) => Translations(
				ara: json['ara'] == null
						? null
						: Ara.fromJson(json['ara'] as Map<String, dynamic>),
				bre: json['bre'] == null
						? null
						: Bre.fromJson(json['bre'] as Map<String, dynamic>),
				ces: json['ces'] == null
						? null
						: Ces.fromJson(json['ces'] as Map<String, dynamic>),
				cym: json['cym'] == null
						? null
						: Cym.fromJson(json['cym'] as Map<String, dynamic>),
				deu: json['deu'] == null
						? null
						: Deu.fromJson(json['deu'] as Map<String, dynamic>),
				est: json['est'] == null
						? null
						: Est.fromJson(json['est'] as Map<String, dynamic>),
				fin: json['fin'] == null
						? null
						: Fin.fromJson(json['fin'] as Map<String, dynamic>),
				fra: json['fra'] == null
						? null
						: Fra.fromJson(json['fra'] as Map<String, dynamic>),
				hrv: json['hrv'] == null
						? null
						: Hrv.fromJson(json['hrv'] as Map<String, dynamic>),
				hun: json['hun'] == null
						? null
						: Hun.fromJson(json['hun'] as Map<String, dynamic>),
				ita: json['ita'] == null
						? null
						: Ita.fromJson(json['ita'] as Map<String, dynamic>),
				jpn: json['jpn'] == null
						? null
						: Jpn.fromJson(json['jpn'] as Map<String, dynamic>),
				kor: json['kor'] == null
						? null
						: Kor.fromJson(json['kor'] as Map<String, dynamic>),
				nld: json['nld'] == null
						? null
						: Nld.fromJson(json['nld'] as Map<String, dynamic>),
				per: json['per'] == null
						? null
						: Per.fromJson(json['per'] as Map<String, dynamic>),
				pol: json['pol'] == null
						? null
						: Pol.fromJson(json['pol'] as Map<String, dynamic>),
				por: json['por'] == null
						? null
						: Por.fromJson(json['por'] as Map<String, dynamic>),
				rus: json['rus'] == null
						? null
						: Rus.fromJson(json['rus'] as Map<String, dynamic>),
				slk: json['slk'] == null
						? null
						: Slk.fromJson(json['slk'] as Map<String, dynamic>),
				spa: json['spa'] == null
						? null
						: Spa.fromJson(json['spa'] as Map<String, dynamic>),
				swe: json['swe'] == null
						? null
						: Swe.fromJson(json['swe'] as Map<String, dynamic>),
				tur: json['tur'] == null
						? null
						: Tur.fromJson(json['tur'] as Map<String, dynamic>),
				urd: json['urd'] == null
						? null
						: Urd.fromJson(json['urd'] as Map<String, dynamic>),
				zho: json['zho'] == null
						? null
						: Zho.fromJson(json['zho'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'ara': ara?.toJson(),
				'bre': bre?.toJson(),
				'ces': ces?.toJson(),
				'cym': cym?.toJson(),
				'deu': deu?.toJson(),
				'est': est?.toJson(),
				'fin': fin?.toJson(),
				'fra': fra?.toJson(),
				'hrv': hrv?.toJson(),
				'hun': hun?.toJson(),
				'ita': ita?.toJson(),
				'jpn': jpn?.toJson(),
				'kor': kor?.toJson(),
				'nld': nld?.toJson(),
				'per': per?.toJson(),
				'pol': pol?.toJson(),
				'por': por?.toJson(),
				'rus': rus?.toJson(),
				'slk': slk?.toJson(),
				'spa': spa?.toJson(),
				'swe': swe?.toJson(),
				'tur': tur?.toJson(),
				'urd': urd?.toJson(),
				'zho': zho?.toJson(),
			};

	Translations copyWith({
		Ara? ara,
		Bre? bre,
		Ces? ces,
		Cym? cym,
		Deu? deu,
		Est? est,
		Fin? fin,
		Fra? fra,
		Hrv? hrv,
		Hun? hun,
		Ita? ita,
		Jpn? jpn,
		Kor? kor,
		Nld? nld,
		Per? per,
		Pol? pol,
		Por? por,
		Rus? rus,
		Slk? slk,
		Spa? spa,
		Swe? swe,
		Tur? tur,
		Urd? urd,
		Zho? zho,
	}) {
		return Translations(
			ara: ara ?? this.ara,
			bre: bre ?? this.bre,
			ces: ces ?? this.ces,
			cym: cym ?? this.cym,
			deu: deu ?? this.deu,
			est: est ?? this.est,
			fin: fin ?? this.fin,
			fra: fra ?? this.fra,
			hrv: hrv ?? this.hrv,
			hun: hun ?? this.hun,
			ita: ita ?? this.ita,
			jpn: jpn ?? this.jpn,
			kor: kor ?? this.kor,
			nld: nld ?? this.nld,
			per: per ?? this.per,
			pol: pol ?? this.pol,
			por: por ?? this.por,
			rus: rus ?? this.rus,
			slk: slk ?? this.slk,
			spa: spa ?? this.spa,
			swe: swe ?? this.swe,
			tur: tur ?? this.tur,
			urd: urd ?? this.urd,
			zho: zho ?? this.zho,
		);
	}

	@override
	List<Object?> get props {
		return [
				ara,
				bre,
				ces,
				cym,
				deu,
				est,
				fin,
				fra,
				hrv,
				hun,
				ita,
				jpn,
				kor,
				nld,
				per,
				pol,
				por,
				rus,
				slk,
				spa,
				swe,
				tur,
				urd,
				zho,
		];
	}
}
