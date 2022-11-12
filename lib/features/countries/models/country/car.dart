import 'package:equatable/equatable.dart';

class Car extends Equatable {
	final List<dynamic>? signs;
	final String? side;

	const Car({this.signs, this.side});

	factory Car.fromJson(Map<String, dynamic> json) => Car(
				signs: json['signs'] as List<dynamic>?,
				side: json['side'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'signs': signs,
				'side': side,
			};

	Car copyWith({
		List<String>? signs,
		String? side,
	}) {
		return Car(
			signs: signs ?? this.signs,
			side: side ?? this.side,
		);
	}

	@override
	List<Object?> get props => [signs, side];
}
