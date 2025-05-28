String formatToDate(String isoDate) {
  try {
    final dateTime = DateTime.parse(isoDate).toLocal(); // Convert to local time
    final day = dateTime.day.toString().padLeft(2, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final year = dateTime.year.toString();
    return '$day/$month/$year';
  } catch (e) {
    return 'Invalid date';
  }
}
