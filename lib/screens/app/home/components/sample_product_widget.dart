import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/extension/context_extension.dart';
import '../view-models/page_indicator_viewmodel.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageIndicatorViewModel _indicator =
        Provider.of<PageIndicatorViewModel>(context);
    return Column(
      children: [
        buildSliderIndicator(_indicator.activeIndex),
        _buildCarousel(context, _indicator),
      ],
    );
  }

  CarouselSlider _buildCarousel(
      BuildContext context, PageIndicatorViewModel indicator) {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) {
        return buildSampleProduct(index);
      },
      options: CarouselOptions(
          autoPlay: true,
          height: context.getHeight(0.3),
          viewportFraction: 1,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reason) {
            indicator.changeIndex(index);
          }),
    );
  }

  Widget buildSampleProduct(int index) {
    return _icons[index];
  }

  Widget buildSliderIndicator(int activeIndex) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 5,
      effect: const SlideEffect(
        activeDotColor: Colors.amber,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}

List<Icon> _icons = const [
  Icon(
    Icons.abc,
    size: 150,
  ),
  Icon(
    Icons.g_mobiledata,
    size: 150,
  ),
  Icon(
    Icons.offline_bolt_outlined,
    size: 150,
  ),
  Icon(
    Icons.account_balance_wallet,
    size: 150,
  ),
  Icon(
    Icons.arrow_back_ios_new_sharp,
    size: 150,
  ),
];
