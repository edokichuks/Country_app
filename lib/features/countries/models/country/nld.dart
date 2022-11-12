import 'package:equatable/equatable.dart';

class Nld extends Equatable {
	final String? official;
	final String? common;

	const Nld({this.official, this.common});

	factory Nld.fromJson(Map<String, dynamic> json) => Nld(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Nld copyWith({
		String? official,
		String? common,
	}) {
		return Nld(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
