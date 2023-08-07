class UserEntity {
  final String name;
  final String lastName;
  final String identification;
  final String phone;
  final DateTime lastEntry;
  final int status;

  UserEntity({
    required this.name,
    required this.lastName,
    required this.identification,
    required this.phone,
    required this.lastEntry,
    required this.status,
  });

  copyWith({
    String? name,
    String? lastName,
    String? identification,
    String? phone,
    DateTime? lastEntry,
    int? status,
  }) {
    return UserEntity(
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        identification: identification ?? this.identification,
        phone: phone ?? this.phone,
        lastEntry: lastEntry ?? this.lastEntry,
        status: status ?? this.status);
  }
}
