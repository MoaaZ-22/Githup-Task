import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/widgets/custom_textfield.dart';
import 'package:githup_app/features/home/presentation/controllers/search_bloc/search_bloc.dart';
import 'package:githup_app/features/home/presentation/pages/search_screen/widgets/search_list_with_builder.dart';
import 'package:githup_app/generated/l10n.dart';

/// SearchScreenBody is used to manage the Search Screen Body
class SearchScreenBody extends StatelessWidget {
  /// SearchScreenBody constructor
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        children: <Widget>[
          CustomTextField(
            hintText: S.of(context).search,
            controller: context.read<SearchBloc>().searchController,
          ),
          const Expanded(child: SearchListWithBuilder()),
        ],
      ),
    );
  }
}
