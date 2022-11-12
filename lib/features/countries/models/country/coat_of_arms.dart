import 'package:equatable/equatable.dart';

class CoatOfArms extends Equatable {
	final String? png;
	final String? svg;

	const CoatOfArms({this.png, this.svg});

	factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
				png: json['png'] as String?,
				svg: json['svg'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'png': png,
				'svg': svg,
			};

	CoatOfArms copyWith({
		String? png,
		String? svg,
	}) {
		return CoatOfArms(
			png: png ?? this.png,
			svg: svg ?? this.svg,
		);
	}

	@override
	List<Object?> get props => [png, svg];
}
