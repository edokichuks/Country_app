import 'package:equatable/equatable.dart';

class Gini extends Equatable {
	// ignore: non_constant_identifier_names
	final double? L2014;

	// ignore: non_constant_identifier_names
	const Gini({this.L2014});

	factory Gini.fromJson(Map<String, dynamic> json) => Gini(
				L2014: (json['2014'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'2014': 2014,
			};

	

	@override
	List<Object?> get props => [2014];
}
