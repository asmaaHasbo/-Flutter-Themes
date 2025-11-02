import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_in_flutter/features/home/logic/cubit/home_cubit.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/movies_list.dart';

class ListBlocBuilder extends StatelessWidget {
  const ListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomePopularMoviesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomePopularMoviesFailure) {
          return Center(
            child: Text(
              state.errMsg,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          );
        } else if (state is HomePopularMoviesSuccess) {
          return  Expanded(child: MovieList(
            MoviesList: state.popularMoviesList,
          ));
        }

        return const SizedBox.shrink();
      },
    );
  }
}
