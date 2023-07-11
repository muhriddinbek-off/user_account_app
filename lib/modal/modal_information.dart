class ModalInformation {
  final String image;
  final String firstName;
  final String lastSName;
  final String userName;
  final int phone;
  final String email;

  ModalInformation({
    required this.image,
    required this.firstName,
    required this.lastSName,
    required this.userName,
    required this.phone,
    required this.email,
  });

  factory ModalInformation.fromJson(Map data){
    return ModalInformation(
      image: data['medium'], 
      firstName: data['first'], 
      lastSName: data['last'], 
      userName: data['username'], 
      phone: data['phone'], 
      email: data['email']);
  }

  Map toJson (){
    return {
      "image": image,
      'firstName': firstName,
      "lastName": lastSName,
      "userName": userName,
      "phone": phone,
      "email": email,
    }
  }
}
