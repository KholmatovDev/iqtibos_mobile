part of 'quote_bloc.dart';

@freezed
class QuoteEvent with _$QuoteEvent {
  const factory QuoteEvent.started() = _Started;
  const factory QuoteEvent.getQuote() = _GetQuote;
}
