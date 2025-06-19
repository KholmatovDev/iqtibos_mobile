import 'package:iqtibos_flutter/features/quote/domain/entity/quote/quote.dart';


abstract class QuoteRepository{
  Future<Quote> getQuote();
  Future<void> addToFavorite(Quote character);
  Future<void> removeFromFavorite(Quote character);
  Future<List<Quote>> allFavoriteCharacters();
}