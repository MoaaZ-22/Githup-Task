import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:githup_app/config/routes/app_router.gr.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/assets.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/image_with_name_and_owner_and_date.dart';
import 'package:githup_app/generated/l10n.dart';

/// ReposListViewItem is a StatelessWidget that represents
/// the item of the list view
class ReposListViewItem extends StatelessWidget {
  /// ReposListViewItem constructor
  const ReposListViewItem({
    required this.repoEntity,
    super.key,
  });

  /// RepoEntity that is used to show the data
  final RepoEntity repoEntity;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.fw),
      onTap: () {
        context.router.push(
          DetailsRoute(
            owner: repoEntity.ownerE,
            repoName: repoEntity.nameE,
            defaultBranch: repoEntity.mainBranchE,
          ),
        );
      },
      child: Container(
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
                  ImageWithNameAndOwnerAndDate(repoEntity: repoEntity),
                  SizedBox(
                    height: 10.fh,
                  ),
                  Row(
                    children: [
                      Text(
                        S.of(context).mainBranch(repoEntity.mainBranchE),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 9.fw,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(Assets.genIconsDocument),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
