import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
    required this.textOver,
  });
  final String textOver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex:3,child: Text(textOver, style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicatior(text: '5', value: 1,),
              RatingProgressIndicatior(text: '4', value: 0.8,),
              RatingProgressIndicatior(text: '3', value: 0.6,),
              RatingProgressIndicatior(text: '2', value: 0.4,),
              RatingProgressIndicatior(text: '1', value: 0.2,),
            ],
          ),
        )
      ],
    );
  }
}