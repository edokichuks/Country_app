import 'package:equatable/equatable.dart';

class Fin extends Equatable {
	final String? official;
	final String? common;

	const Fin({this.official, this.common});

	factory Fin.fromJson(Map<String, dynamic> json) => Fin(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Fin copyWith({
		String? official,
		String? common,
	}) {
		return Fin(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
