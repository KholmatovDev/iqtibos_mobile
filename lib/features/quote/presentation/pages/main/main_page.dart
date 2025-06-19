import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqtibos_flutter/core/constants/colors.dart';
import 'package:iqtibos_flutter/core/extensions/extensions.dart';
import 'package:iqtibos_flutter/features/quote/presentation/pages/main/bloc/quote_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    context.read<QuoteBloc>().add(QuoteEvent.getQuote());
    _pageController.addListener(_onPageChanged);
  }
  int loadedPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) => Scaffold(

      backgroundColor: AppColors.bgColor,
      body: BlocBuilder<QuoteBloc, QuoteState>(
        builder: (context, state) {
          return PageView.builder(
            physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            scrollDirection: Axis.vertical,
            itemCount: state.quotes?.length??0,
            controller: _pageController,
            onPageChanged: (value) {
              final currentPage = _pageController.page?.round() ?? 0;
              if (currentPage == state.quotes!.length - 1) {
                context.read<QuoteBloc>().add(QuoteEvent.getQuote());
              }
              },
            itemBuilder: (context, index) {
              return
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
                        children: [
                         const Spacer(),
                          Text(
                            state.quotes![index].quote,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColors.opacityWhite,
                              fontSize: 25,
                            ),
                          ),
                         const Spacer(),
                          Text(
                                  state.quotes![index].author,
                                  style: const TextStyle(
                                    color: AppColors.opacityWhite,
                                    fontSize: 20,
                                  ),
                                ),
                          50.ph,
                        ],
                      ),
                   );
            },
          );
        },
      ));
  void _onPageChanged() {

  }
}
