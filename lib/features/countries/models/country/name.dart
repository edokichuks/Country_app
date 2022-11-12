import 'package:equatable/equatable.dart';

import 'native_name.dart';

class Name extends Equatable {
	final String? common;
	final String? official;
	final NativeName? nativeName;

	const Name({this.common, this.official, this.nativeName});

	factory Name.fromJson(Map<String, dynamic> json) => Name(
				common: json['common'] as String?,
				official: json['official'] as String?,
				nativeName: json['nativeName'] == null
						? null
						: NativeName.fromJson(json['nativeName'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'common': common,
				'official': official,
				'nativeName': nativeName?.toJson(),
			};

	Name copyWith({
		String? common,
		String? official,
		NativeName? nativeName,
	}) {
		return Name(
			common: common ?? this.common,
			official: official ?? this.official,
			nativeName: nativeName ?? this.nativeName,
		);
	}

	@override
	List<Object?> get props => [common, official, nativeName];
}
