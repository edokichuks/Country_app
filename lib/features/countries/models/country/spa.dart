import 'package:equatable/equatable.dart';

class Spa extends Equatable {
	final String? official;
	final String? common;

	const Spa({this.official, this.common});

	factory Spa.fromJson(Map<String, dynamic> json) => Spa(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Spa copyWith({
		String? official,
		String? common,
	}) {
		return Spa(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
