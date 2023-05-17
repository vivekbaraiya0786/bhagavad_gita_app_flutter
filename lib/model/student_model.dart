class Student {
  int id;
  String name;
  int age;
  String course;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.course,
  });

  factory Student.frommap({required Map data}) {
    return Student(
      id: data['id'],
      name: data['name'],
      age: data['age'],
      course: data['course'],
    );
  }
}
