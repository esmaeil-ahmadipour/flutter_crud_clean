import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';

@Entity(tableName: MainStrings.customersTableName)
class Customer extends Equatable {
  @PrimaryKey(autoGenerate: true)
  
  final int? id;
  final String firstName;
  final String lastName;
  final int dateOfBirth;
  final String phoneNumber;
  final String email;
  final String bankAccountNumber;

  const Customer({
     this.id,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.bankAccountNumber,
  });

  @override
  List<Object?> get props {
    return [
      id,
      firstName,
      lastName,
      dateOfBirth,
      phoneNumber,
      email,
      bankAccountNumber,
    ];
  }

  @override
  bool get stringify => true;
}