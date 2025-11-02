import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testing_in_flutter/core/theme/icon_for_toggle_mode.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/list_bloc_builder.dart';
import 'package:testing_in_flutter/features/home/ui/widgets/search_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Your Movie'),
        actions: const [IconForToggleMode()],
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            children: [
              const SearchRow(),
              SizedBox(height: 20.h),
              const ListBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
