import 'package:equatable/equatable.dart';

class Fra extends Equatable {
	final String? official;
	final String? common;

	const Fra({this.official, this.common});

	factory Fra.fromJson(Map<String, dynamic> json) => Fra(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Fra copyWith({
		String? official,
		String? common,
	}) {
		return Fra(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
