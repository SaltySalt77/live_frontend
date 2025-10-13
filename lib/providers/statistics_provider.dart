import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:live_frontend/core/controllers/statistics_controller.dart';
import 'package:live_frontend/models/my_mission_model.dart';
import 'package:live_frontend/models/statistics_model.dart';

class MonthlyCompletionRatePayload {
  final String yearMonth;
  final MissionType missionType;

  MonthlyCompletionRatePayload({
    required this.yearMonth,
    required this.missionType,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MonthlyCompletionRatePayload &&
          runtimeType == other.runtimeType &&
          yearMonth == other.yearMonth &&
          missionType == other.missionType;

  @override
  int get hashCode => yearMonth.hashCode ^ missionType.hashCode;
}

final monthlyCompletionRateProvider =
    FutureProvider.family<
      MonthlyCompletionRateModel?,
      MonthlyCompletionRatePayload
    >((ref, payload) {
      final controller = ref.read(statisticsControllerProvider);
      if (payload.missionType == MissionType.clover) {
        return controller.fetchMonthlyCloverRate(payload.yearMonth);
      } else {
        return controller.fetchMonthlyMyRate(payload.yearMonth);
      }
    });
