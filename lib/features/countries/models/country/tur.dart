import 'package:equatable/equatable.dart';

class Tur extends Equatable {
	final String? official;
	final String? common;

	const Tur({this.official, this.common});

	factory Tur.fromJson(Map<String, dynamic> json) => Tur(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Tur copyWith({
		String? official,
		String? common,
	}) {
		return Tur(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
