import 'package:equatable/equatable.dart';

class Por extends Equatable {
	final String? official;
	final String? common;

	const Por({this.official, this.common});

	factory Por.fromJson(Map<String, dynamic> json) => Por(
				official: json['official'] as String?,
				common: json['common'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'official': official,
				'common': common,
			};

	Por copyWith({
		String? official,
		String? common,
	}) {
		return Por(
			official: official ?? this.official,
			common: common ?? this.common,
		);
	}

	@override
	List<Object?> get props => [official, common];
}
