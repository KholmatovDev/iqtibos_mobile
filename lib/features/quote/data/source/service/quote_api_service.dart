import 'package:dio/dio.dart';
import 'package:iqtibos_flutter/features/quote/domain/entity/quote/quote.dart';
import 'package:retrofit/retrofit.dart';

part 'quote_api_service.g.dart';

@RestApi(baseUrl: "https://iqtibos-backend.onrender.com/api")
abstract class QuoteApiService {
  factory QuoteApiService(Dio dio, {String baseUrl}) = _QuoteApiService;

  @GET("/quote")
  Future<Quote> getQuote({
    @Query("author") String? author,
    @Query("id") int? id,
    @Query("quote") String? quote,
  });
}
