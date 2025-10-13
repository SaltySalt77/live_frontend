// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthlyCompletionRateModel _$MonthlyCompletionRateModelFromJson(
  Map<String, dynamic> json,
) => MonthlyCompletionRateModel(
  totalAssigned: (json['totalAssigned'] as num).toInt(),
  totalCompleted: (json['totalCompleted'] as num).toInt(),
  completionRate: (json['completionRate'] as num).toDouble(),
);

Map<String, dynamic> _$MonthlyCompletionRateModelToJson(
  MonthlyCompletionRateModel instance,
) => <String, dynamic>{
  'totalAssigned': instance.totalAssigned,
  'totalCompleted': instance.totalCompleted,
  'completionRate': instance.completionRate,
};

WeeklyMissionSummaryModel _$WeeklyMissionSummaryModelFromJson(
  Map<String, dynamic> json,
) => WeeklyMissionSummaryModel(
  weekStartDate: json['weekStartDate'] as String,
  weekEndDate: json['weekEndDate'] as String,
  weeklySummary: (json['weeklySummary'] as List<dynamic>)
      .map((e) => DailyMissionSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WeeklyMissionSummaryModelToJson(
  WeeklyMissionSummaryModel instance,
) => <String, dynamic>{
  'weekStartDate': instance.weekStartDate,
  'weekEndDate': instance.weekEndDate,
  'weeklySummary': instance.weeklySummary,
};

DailyMissionSummary _$DailyMissionSummaryFromJson(Map<String, dynamic> json) =>
    DailyMissionSummary(
      date: json['date'] as String,
      dayOfWeek: const DayOfWeekConverter().fromJson(
        json['dayOfWeek'] as String,
      ),
      missionCount: (json['missionCount'] as num).toInt(),
    );

Map<String, dynamic> _$DailyMissionSummaryToJson(
  DailyMissionSummary instance,
) => <String, dynamic>{
  'date': instance.date,
  'dayOfWeek': const DayOfWeekConverter().toJson(instance.dayOfWeek),
  'missionCount': instance.missionCount,
};
