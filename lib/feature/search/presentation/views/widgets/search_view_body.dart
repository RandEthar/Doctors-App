
import 'package:doctors_app/feature/search/presentation/views/widgets/result_bloc_builder.dart';
import 'package:doctors_app/feature/search/presentation/views/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
      
        SearchBarWidget(),
        SizedBox(height: 24,),
        ResultBlocBuilder()
      ],),
    );
  }
}