import 'package:equatable/equatable.dart';

class Maps extends Equatable {
	final String? googleMaps;
	final String? openStreetMaps;

	const Maps({this.googleMaps, this.openStreetMaps});

	factory Maps.fromJson(Map<String, dynamic> json) => Maps(
				googleMaps: json['googleMaps'] as String?,
				openStreetMaps: json['openStreetMaps'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'googleMaps': googleMaps,
				'openStreetMaps': openStreetMaps,
			};

	Maps copyWith({
		String? googleMaps,
		String? openStreetMaps,
	}) {
		return Maps(
			googleMaps: googleMaps ?? this.googleMaps,
			openStreetMaps: openStreetMaps ?? this.openStreetMaps,
		);
	}

	@override
	List<Object?> get props => [googleMaps, openStreetMaps];
}
