class ModalInformation {
  final String image;
  final String firstName;
  final String lastSName;
  final String userName;
  final String phone;
  final String email;

  ModalInformation({
    required this.image,
    required this.firstName,
    required this.lastSName,
    required this.userName,
    required this.phone,
    required this.email,
  });

  factory ModalInformation.fromJson(Map data) {
    return ModalInformation(
      image: data['results'][0]['picture']['large'],
      firstName: data['results'][0]['name']['first'],
      lastSName: data['results'][0]['name']['last'],
      userName: data['results'][0]['login']['username'],
      phone: data['results'][0]['phone'],
      email: data['results'][0]['email'],
    );
  }

  Map toJson() {
    return {
      "image": image,
      'firstName': firstName,
      "lastName": lastSName,
      "userName": userName,
      "phone": phone,
      "email": email,
    };
  }
}
