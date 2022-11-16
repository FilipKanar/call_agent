import 'package:call_agent/theme/app_colors.dart';
import 'package:call_agent/theme/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main(){
  test('AppColors should return runtimetype Color', () {
    expect(AppColors.primary.runtimeType, Color);
  });
  test('AppDimensions should return runtimetype double', () {
    expect(AppDimensions.spacingNormal.runtimeType, double);
  });
}