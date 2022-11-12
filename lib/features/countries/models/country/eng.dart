import 'package:equatable/equatable.dart';

class Eng extends Equatable {
	final String? f;
	final String? m;

	const Eng({this.f, this.m});

	factory Eng.fromJson(Map<String, dynamic> json) => Eng(
				f: json['f'] as String?,
				m: json['m'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'f': f,
				'm': m,
			};

	Eng copyWith({
		String? f,
		String? m,
	}) {
		return Eng(
			f: f ?? this.f,
			m: m ?? this.m,
		);
	}

	@override
	List<Object?> get props => [f, m];
}
