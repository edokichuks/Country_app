import 'package:equatable/equatable.dart';

class Mru extends Equatable {
	final String? name;
	final String? symbol;

	const Mru({this.name, this.symbol});

	factory Mru.fromJson(Map<String, dynamic> json) => Mru(
				name: json['name'] as String?,
				symbol: json['symbol'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'symbol': symbol,
			};

	Mru copyWith({
		String? name,
		String? symbol,
	}) {
		return Mru(
			name: name ?? this.name,
			symbol: symbol ?? this.symbol,
		);
	}

	@override
	List<Object?> get props => [name, symbol];
}
