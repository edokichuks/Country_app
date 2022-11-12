import 'package:equatable/equatable.dart';

class CapitalInfo extends Equatable {
	final List<dynamic>? latlng;

	const CapitalInfo({this.latlng});

	factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
				latlng: json['latlng'] as List<dynamic>?,
			);

	Map<String, dynamic> toJson() => {
				'latlng': latlng,
			};

	CapitalInfo copyWith({
		List<double>? latlng,
	}) {
		return CapitalInfo(
			latlng: latlng ?? this.latlng,
		);
	}

	@override
	List<Object?> get props => [latlng];
}
