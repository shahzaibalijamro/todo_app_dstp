import 'package:intl/intl.dart';

String returnFormattedDate(DateTime dateTime) {
  return DateFormat('EEE, M/d/y').format(dateTime);
}
