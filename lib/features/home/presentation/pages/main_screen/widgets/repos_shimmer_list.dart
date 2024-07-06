import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/custom_divider.dart';
import 'package:shimmer/shimmer.dart';

/// ReposShimmerList is a StatelessWidget that represents
class ReposShimmerList extends StatelessWidget {
  /// ReposShimmerList constructor
  const ReposShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (context, index) {
        return const CustomDivider();
      },
      itemBuilder: (context, index) {
        return const ReposShimmerListItem();
      },
    );
  }
}

/// ReposShimmerListItem is a StatelessWidget that represents
class ReposShimmerListItem extends StatelessWidget {
  /// ReposShimmerListItem constructor
  const ReposShimmerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20.fh,
        left: 20.fw,
        right: 20.fw,
        bottom: 12.fh,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 50.fw,
                        height: 49.fh,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 14.fw),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              width: double.infinity,
                              height: 20.fh,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 11.fh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Shimmer.fromColors(
                                  baseColor: Colors.white,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    width: double.infinity,
                                    height: 16.fh,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.fw),
                              Shimmer.fromColors(
                                baseColor: Colors.white,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  width: 60.fw,
                                  height: 19.fh,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.fh),
                Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 200.fw,
                    height: 14.fh,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
