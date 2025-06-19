import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'quote.freezed.dart';
part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "quote")
    required String quote,
    @JsonKey(name: "author")
    required String author,
    @JsonKey(name: "like")
    required int like,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}
