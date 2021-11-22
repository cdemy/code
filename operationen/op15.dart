// ignore_for_file: unused_local_variable

void main() {
  final datum = DateTime.now(); // heutiges Datum
  final day = datum.day;
  final month = datum.month;
  final year = datum.year;
  final weekdayAsNumber = datum.weekday; // Mo = 1
  final mauerfall = DateTime(1989, 11, 9);
  final timeSinceMauerfall = datum.difference(mauerfall);
  final daysSinceMauerfall = timeSinceMauerfall.inDays;
  final uhrzeitStunden = datum.hour;
  final uhrzeitMinuten = datum.minute;
  final uhrzeitSekunden = datum.second;
}
