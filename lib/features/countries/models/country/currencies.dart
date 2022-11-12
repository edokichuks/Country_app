import 'package:equatable/equatable.dart';

import 'mru.dart';

class Currencies extends Equatable {
	final Mru? mru;

	const Currencies({this.mru});

	factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
				mru: json['MRU'] == null
						? null
						: Mru.fromJson(json['MRU'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'MRU': mru?.toJson(),
			};

	Currencies copyWith({
		Mru? mru,
	}) {
		return Currencies(
			mru: mru ?? this.mru,
		);
	}

	@override
	List<Object?> get props => [mru];
}
