part of 'quote_bloc.dart';

@freezed
class QuoteState with _$QuoteState {
  const factory QuoteState.initial({
    List<Quote>? quotes,
    required bool isLoading,
  }) = _Initial;
}
