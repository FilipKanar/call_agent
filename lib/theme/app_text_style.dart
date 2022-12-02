import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimensions.dart';

class AppTextStyles{
  static TextStyle title(){
    return const TextStyle(
      fontSize: AppDimensions.titleLarge,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle titleButSmaller(){
    return const TextStyle(
      fontSize: AppDimensions.spacingNormal,
      fontWeight: FontWeight.bold,
    );
  }
  static InputDecoration textFormFieldDecoration ({required String label, required String hint, String ?error}){
    return InputDecoration(
      errorText: error,
      hintText: hint,
      labelText: label,
      focusedBorder: focusedOutlineInputBorder(),
      enabledBorder: enabledOutlineInputBorder(),
      errorBorder: errorOutlineInputBorder(),
    );
  }

  static OutlineInputBorder focusedOutlineInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.spacingNarrow),
      borderSide: const BorderSide(width: 2,color: AppColors.primary),
    );
  }
  static OutlineInputBorder enabledOutlineInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.spacingNarrow),
      borderSide: const BorderSide(width: 1, color: AppColors.onPrimary),
    );
  }
  static OutlineInputBorder errorOutlineInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.spacingNarrow),
      borderSide: const BorderSide(width: 1,color: AppColors.error),
    );
  }
}