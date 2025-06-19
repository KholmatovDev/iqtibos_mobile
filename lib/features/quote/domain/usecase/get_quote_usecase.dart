

import 'package:iqtibos_flutter/features/quote/domain/entity/quote/quote.dart';
import 'package:iqtibos_flutter/features/quote/domain/repositories/quote/quote_repository.dart';

class GetQuoteUseCase {
  final QuoteRepository quoteRepo;

  GetQuoteUseCase({required this.quoteRepo});

  Future<Quote> call() async {
    return await quoteRepo.getQuote();
  }
}
