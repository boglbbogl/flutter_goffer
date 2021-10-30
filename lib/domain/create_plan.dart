import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan.freezed.dart';

@freezed
class CreatePlan with _$CreatePlan {
  const factory CreatePlan({
    required String startDate,
    required String endDate,
    required String startTime,
    required String endTime,
  }) = _CreatePlan;

  factory CreatePlan.empty() => const CreatePlan(
        startDate: "",
        endDate: "",
        startTime: "",
        endTime: "",
      );
}
