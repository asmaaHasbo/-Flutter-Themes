// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pet_finder_app/features/home/logic/cubit/home_cubit.dart';
// import 'package:pet_finder_app/features/home/ui/widgets/pet_list.dart';

// class ListBlocBuilder extends StatelessWidget {
//   const ListBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       builder: (context, state) {
//         if (state is HomeBreedLoading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state is HomeBreedFailure) {
//           return Center(
//             child: Text(
//               state.errMsg,
//               style: const TextStyle(color: Colors.red),
//               textAlign: TextAlign.center,
//             ),
//           );
//         } else if (state is HomeBreedSuccess) {
//           return  Expanded(child: PetList(
//             breedList: state.breedList,
//           ));
//         }

//         return const SizedBox.shrink();
//       },
//     );
//   }
// }
