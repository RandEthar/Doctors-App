import 'dart:developer';

import 'package:doctors_app/feature/search/presentation/manger/cubit/search_cubit.dart';
import 'package:doctors_app/feature/search/presentation/views/widgets/cusrom_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultBlocBuilder extends StatelessWidget {
  const ResultBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          log("rand");
          return CusromResultWidget(doctors: state.doctors);
        } else if (state is SearchEmpty) {
          return const Center(
            child: Text("No results found"),
          );
        } else if (state is SearchFailure) {
          return Center(
            child: Text("Error: ${state.message}"),
          );
        } else if (state is SearchLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          // SearchInitial or any unexpected state
          return const Center(
            child: Text("Start typing to search"),
          );
        }
      },
    );
  }
}
