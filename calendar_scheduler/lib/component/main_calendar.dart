import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

/// 달력 부분
class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected; // 날짜 선택시 실행할 함수
  final DateTime selectedDate; // 선택된 날짜

  MainCalendar({
    required this.onDaySelected,
    required this.selectedDate,
});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale:'ko_kr',
      onDaySelected: onDaySelected,
      // 날짜 선택시 실행될 함수
      selectedDayPredicate:(date)=>
        date.year == selectedDate.year &&
        date.month == selectedDate.month &&
        date.day == selectedDate.day,
      firstDay: DateTime(1800, 1, 1), // 첫째날
      lastDay: DateTime(3000, 1, 1), // 마지막날
      focusedDay: selectedDate, // 화면에 보여지는 날
      headerStyle: HeaderStyle( // 달력 최상단 스타일
        titleCentered: true, // 제목 중앙 위치
        formatButtonVisible: false,// 달력ㄱ크기선택 옵션 없애기
        titleTextStyle: TextStyle( //제목 스타일
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: PRIMARY_COLOR,
        ),
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        // 평일 날짜 스타일
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.0),
          color: LIGHT_GREY_COLOR,
        ),
        // 주말 날짜 스타일
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        //선택된 날짜 스타일
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border:Border.all(
            color:PRIMARY_COLOR,
            width:1.0,
          ),
        ),

        // 기본 글꼴
        defaultTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        // 주말 글꼴
        weekendTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color:DARK_GREY_COLOR,
        ),
        // 선택된 날짜 글꼴
        selectedTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color:PRIMARY_COLOR,
        ),
      ),
    );
  }
}
