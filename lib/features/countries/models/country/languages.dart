import 'package:equatable/equatable.dart';

class Languages extends Equatable {
	final String? ara;

	const Languages({this.ara});

	factory Languages.fromJson(Map<String, dynamic> json) => Languages(
				ara: json['ara'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'ara': ara,
			};

	Languages copyWith({
		String? ara,
	}) {
		return Languages(
			ara: ara ?? this.ara,
		);
	}

	@override
	List<Object?> get props => [ara];
}
