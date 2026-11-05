import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/features/home/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/view/widgets/feature_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListViewItemBuilder extends StatelessWidget {
  const FeatureListViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeatureBooksFailure) {
          return Center(
            child: Text(
              state.errMessage,
              style: AppTextStyle.size18WhiteSemiBold,
            ),
          );
        } else {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 18),
                child: FeatureItemListView(width: 0.39, wantIconPlay: true),
              );
            },
          );
        }
      },
    );
  }
}
