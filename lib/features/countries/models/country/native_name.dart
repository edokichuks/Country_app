import 'package:equatable/equatable.dart';

import 'ara.dart';

class NativeName extends Equatable {
	final Ara? ara;

	const NativeName({this.ara});

	factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
				ara: json['ara'] == null
						? null
						: Ara.fromJson(json['ara'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'ara': ara?.toJson(),
			};

	NativeName copyWith({
		Ara? ara,
	}) {
		return NativeName(
			ara: ara ?? this.ara,
		);
	}

	@override
	List<Object?> get props => [ara];
}
