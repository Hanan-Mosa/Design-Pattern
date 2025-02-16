class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User({required this.firstName, required this.lastName, this.age, this.phone});

  @override
  String toString() {
    return 'User{firstName: $firstName, lastName: $lastName, age: $age, phone: $phone}';
  }
}

class UserBuilder {
  String? _firstName;
  String? _lastName;
  int? _age;
  String? _phone;

  UserBuilder setFirstName(String firstName) {
    _firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    _lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  User build() {
    if (_firstName == null || _lastName == null) {
      throw ("First name and last name are required.");
    }
    return User(firstName: _firstName!, lastName: _lastName!, age: _age, phone: _phone);
  }
}

void main() {
  User user1 = UserBuilder()
      .setFirstName("Hanan")
      .setLastName("Ashraf")
      .build();
  print(user1);
  print('-----------------');

  User user2 = UserBuilder()
      .setFirstName("Omar")
      .setLastName("Ali")
      .setAge(30)
      .setPhone("123-456-7890")
      .build();
  print(user2);
  print('-----------------');
  try {
     UserBuilder()
        .setFirstName("Alice")
        .build();
  } catch (e) {
    print(e);
  }

}