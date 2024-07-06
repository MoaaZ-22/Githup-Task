import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/core/widgets/custom_cached_image.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/generated/l10n.dart';
import 'package:intl/intl.dart';

/// ImageWithNameAndOwnerAndDate is a StatelessWidget that represents
/// the image with name and owner and date
class ImageWithNameAndOwnerAndDate extends StatelessWidget {
  /// ImageWithNameAndOwnerAndDate constructor
  const ImageWithNameAndOwnerAndDate({
    required this.repoEntity,
    super.key,
  });

  /// RepoEntity that is used to show the data
  final RepoEntity repoEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCachedImage(
          image: repoEntity.imageE,
          borderRadius: BorderRadius.circular(10),
          width: 50.fw,
          height: 49.fh,
          errorWidgetIconScale: 5.sp,
        ),
        SizedBox(
          width: 14.fw,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).name(repoEntity.nameE),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 11.fh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      S.of(context).owner(repoEntity.ownerE),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    height: 19.fh,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.fw,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.blue16,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      DateFormat(
                        'dd/MM/yyyy',
                      ).format(repoEntity.dateE),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
