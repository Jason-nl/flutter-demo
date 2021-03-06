// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Person &&
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
