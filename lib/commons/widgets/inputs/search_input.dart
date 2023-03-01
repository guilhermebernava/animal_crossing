import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/design/app_fonts.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  const SearchInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: TextFormField(
        maxLines: 1,
        textInputAction: TextInputAction.done,
        style: AppFonts.searchText,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          counterStyle: AppFonts.searchText,
          errorStyle: AppFonts.searchError,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 4,
              color: AppColors.white,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 4,
              color: AppColors.white,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: "Search",
          fillColor: AppColors.white,
          filled: true,
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: AppColors.black,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
