///Prints welcome message usin [appName] as parameter
void printWelcome(String appName) {
  print('===$appName===');
}

String generateCode(String title) =>
    title.substring(0, 2).toUpperCase() + '101';

void main(List<String> args) {
  //implemented the optional CLI arguments task
  printWelcome('Course Roster Manager');
  const int maxCapacity = 4;
  final DateTime createdAt = DateTime.now();
  String courseTitle = args[0];
  int capacity = maxCapacity;
  double creditHours = 3.0;
  bool isOpen = true;
  List<String> enrolledStudents = ['Aiden', 'Maria', 'Jamal'];
  Set<String> waitlist = {'Priya', 'Noah'};
  Map<String, int> attendanceCount = {'Aiden': 3, 'Maria': 4, 'Jamal': 2};
  print(
    '$courseTitle | Capacity:$capacity | Enrolled: ${enrolledStudents.length}',
  );

  String? instructorEmail;
  print(instructorEmail ?? 'TBA');
  late String enrollmentCode = generateCode(courseTitle);

  //print(instructorEmail!.length); //Unexpected null value runtime error occours
  print(instructorEmail?.length); //outpus null
  String rawNames = ' Aiden , maria ,JAMAL , Priya ';

  List<String> cleanNames = rawNames.split(',');
  var i = 0;
  for (var data in cleanNames) {
    cleanNames[i] = data.trim();
    i++;
  }
  String courseDescription = '''This course helps you
  learn Mobile App Development''';

  print('Seats left: ${capacity - enrolledStudents.length}');

  int fullGroups = enrolledStudents.length ~/ 3;
  int leftover = enrolledStudents.length % 3;

  print('Full Groups: $fullGroups');
  print('Leftover: $leftover');

  Object formInput = 'twenty-two';

  if (formInput is String) {
    print('This is a String');
  }
  if (formInput is! int) {
    print('This is not an int');
  }

  var report = StringBuffer()
    ..write('$courseTitle | ')
    ..write('Cap: $capacity | ')
    ..write('Roster: ${enrolledStudents.length} \n');
  print('Report: ${report.toString()}');

  List<String>? extraNotes;
  extraNotes?..add('Room change pending');
  print('Extra Notes: ${extraNotes}');

  int? bonusSeats;

  bonusSeats ??= 0;
  print('Bonus Seats: $bonusSeats');

  if (isOpen && enrolledStudents.length < capacity) {
    print('New Student can enroll');
  } else {
    print('New Student cannot enroll');
  }

  int enrollmentStatusCode = 200;

  switch (enrollmentStatusCode) {
    case 200:
      print('Enrolled');
      break;
    case 404:
      print('Course Not Found');
      break;
    default:
      print('Unknown Error');
      break;
  }
  String statusTag = isOpen ? 'OPEN' : 'FULL';
  print(statusTag);

  for (var rost in enrolledStudents) {
    print('$rost \n');
  }

  attendanceCount.forEach((key, value) {
    print('$key $value');
  });

  List<String> announcements = [
    'Welcome to $courseTitle',
    if (!isOpen) 'Course is FULL — waitlist open',
    for (var student in waitlist)
      'Reminder: $student, please confirm attendance',
  ];

  for (var anc in announcements) {
    print(anc);
  }
}

/* optional task output
1. Tooling
dart format . output: Formatted 1 file (0 changed) in 0.01 seconds.
dart analyze output: 
Analyzing MADTask2...

warning • courseRoster.dart:13:18 • The value of the local variable 'createdAt' isn't used. Try removing the variable or
          using it. • unused_local_variable
warning • courseRoster.dart:16:10 • The value of the local variable 'creditHours' isn't used. Try removing the variable
          or using it. • unused_local_variable
warning • courseRoster.dart:27:15 • The value of the local variable 'enrollmentCode' isn't used. Try removing the
          variable or using it. • unused_local_variable
warning • courseRoster.dart:30:24 • Dead code. Try removing the code, or fixing the code before it so that it can be
          reached. • dead_code
warning • courseRoster.dart:39:10 • The value of the local variable 'courseDescription' isn't used. Try removing the
          variable or using it. • unused_local_variable
warning • courseRoster.dart:66:13 • Dead code. Try removing the code, or fixing the code before it so that it can be
          reached. • dead_code
warning • courseRoster.dart:93:40 • Dead code. Try removing the code, or fixing the code before it so that it can be
          reached. • dead_code
warning • courseRoster.dart:106:18 • Dead code. Try removing the code, or fixing the code before it so that it can be
          reached. • dead_code

8 issues found.
*/
// checklist confirmations
//dart analyze only shows 8 warnings
// Used at least one const, one final, and one plain var
// Used List<String>, Map<String, int>, and Set<String> each at least once
// Handled a nullable value with ?.
// no ! left on a value that could realistically be null. it was commented
// Used ~/ and % together correctly
// Used is or is! at least once
// Used cascade .. at least once, and ?.. on a nullable object
// Used ??= at least once
// Both if/else and a switch (every case ending in break) appear
// Used the ternary operator at least once
// Both for-in and forEach appear
// Program compiles and runs, producing console output resembling the sample
