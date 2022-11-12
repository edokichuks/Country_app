import 'package:equatable/equatable.dart';

class Idd extends Equatable {
  final String? root;
  final List<dynamic>? suffixes;

  const Idd({this.root, this.suffixes});

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json['root'] as String?,
        suffixes: json['suffixes'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'root': root,
        'suffixes': suffixes,
      };

  Idd copyWith({
    String? root,
    List<String>? suffixes,
  }) {
    return Idd(
      root: root ?? this.root,
      suffixes: suffixes ?? this.suffixes,
    );
  }

  @override
  List<Object?> get props => [root, suffixes];
}
