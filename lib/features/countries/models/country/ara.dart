import 'package:equatable/equatable.dart';

class Ara extends Equatable {
	final String? official;
	final String? common;

	const Ara({this.official, this.common});

	factory Ara.fromJson(Map<String, dynamic> json) => Ara(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Ara copyWith({
		String? official,
		String? common,
	}) {
		return Ara(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
