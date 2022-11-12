import 'package:equatable/equatable.dart';

import 'eng.dart';
import 'fra.dart';

class Demonyms extends Equatable {
	final Eng? eng;
	final Fra? fra;

	const Demonyms({this.eng, this.fra});

	factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
				eng: json['eng'] == null
						? null
						: Eng.fromJson(json['eng'] as Map<String, dynamic>),
				fra: json['fra'] == null
						? null
						: Fra.fromJson(json['fra'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'eng': eng?.toJson(),
				'fra': fra?.toJson(),
			};

	Demonyms copyWith({
		Eng? eng,
		Fra? fra,
	}) {
		return Demonyms(
			eng: eng ?? this.eng,
			fra: fra ?? this.fra,
		);
	}

	@override
	List<Object?> get props => [eng, fra];
}
