import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan.freezed.dart';

@freezed
class CreatePlan with _$CreatePlan {
  const factory CreatePlan({
    required DateTime startDate,
    required DateTime endDate,
    required String startTime,
    required String endTime,
  }) = _CreatePlan;

  factory CreatePlan.empty() => CreatePlan(
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        startTime: "",
        endTime: "",
      );
}
