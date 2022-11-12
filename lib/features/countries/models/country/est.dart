import 'package:equatable/equatable.dart';

class Est extends Equatable {
	final String? official;
	final String? common;

	const Est({this.official, this.common});

	factory Est.fromJson(Map<String, dynamic> json) => Est(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Est copyWith({
		String? official,
		String? common,
	}) {
		return Est(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
