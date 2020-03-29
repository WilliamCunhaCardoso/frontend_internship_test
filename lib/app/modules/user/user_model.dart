class UserModel {
  //* Header Data
  final String username;

  //* Personal Data
  final String email;
  final String phone;
  final String birth;
  final String cpf;

  //* Address Data
  final String cep;
  final String street;
  final int number;
  final String complement;
  final String district;
  final String city;
  final String state;

  UserModel({
    this.username, 
    this.email,
    this.phone,
    this.birth,
    this.cpf,
    this.cep,
    this.street,
    this.number,
    this.complement,
    this.district,
    this.city,
    this.state,
  });
}
