import 'package:dio/dio.dart';
import 'package:iqtibos_flutter/features/quote/data/source/service/quote_api_service.dart';
import 'package:iqtibos_flutter/features/quote/domain/entity/quote/quote.dart';
import 'package:iqtibos_flutter/features/quote/domain/repositories/quote/quote_repository.dart';

class QuoteRepositoryImpl implements QuoteRepository{
  @override
  Future<void> addToFavorite(Quote character) {
    // TODO: implement addToFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Quote>> allFavoriteCharacters() {
    // TODO: implement allFavoriteCharacters
    throw UnimplementedError();
  }

  @override
  Future<Quote> getQuote() async{
    final apiService = QuoteApiService(Dio());
   final result = await apiService.getQuote();
   return result;
  }

  @override
  Future<void> removeFromFavorite(Quote character) {
    // TODO: implement removeFromFavorite
    throw UnimplementedError();
  }

}