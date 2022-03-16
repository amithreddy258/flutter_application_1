class coursechoises {
  static final select = [
    coursechoice(
      coursename: 'Linear Algebra',
    ),
    coursechoice(
      coursename: 'SE as service',
    ),
    coursechoice(
      coursename: 'DBMS',
    ),
    coursechoice(
      coursename: 'OS and Cloud',
    ),
    coursechoice(
      coursename: 'Sys Thinking',
    ),
    coursechoice(
      coursename: 'GBP',
    )
  ];
}

class coursechoice {
  final String coursename;
  coursechoice({required this.coursename}) : assert(coursename != null);
}
