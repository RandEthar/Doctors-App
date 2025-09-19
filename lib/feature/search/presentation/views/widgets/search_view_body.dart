
import 'package:doctors_app/feature/search/presentation/views/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [

      SearchBarWidget()
    ],);
  }
}