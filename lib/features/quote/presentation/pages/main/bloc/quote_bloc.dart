import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqtibos_flutter/features/quote/domain/entity/quote/quote.dart';
import 'package:iqtibos_flutter/features/quote/domain/usecase/get_quote_usecase.dart';

part 'quote_event.dart';

part 'quote_state.dart';

part 'quote_bloc.freezed.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final GetQuoteUseCase getQuoteUseCase;
  List<Quote> quotes = [];
  QuoteBloc(this.getQuoteUseCase) : super(const QuoteState.initial(isLoading: false)) {
    on<QuoteEvent>((event, emit) async {
      await event.when(
        started: () {},
        getQuote: () async{
          emit(state.copyWith(isLoading: true));
          final result = await getQuoteUseCase();
          print(result);
          emit(state.copyWith(isLoading: false,quotes: quotes));
        },
      );
    });
  }
}
