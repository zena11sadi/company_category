class MedicineDetailsModel{
  final int id ;
  final String scientificName;
  final String commercialName;
  final int quantity;
  final int price;
  final String expirationDate;
  final int expired;
  final String image;
  final Companys company;
  final Categorys category;

  MedicineDetailsModel({required this.category,
  required this.company,
  required this.image,
  required this.scientificName,
  required this.quantity,
  required this.price,
  required this.expirationDate,
  required this.expired,
  required this.id ,
  required this.commercialName});
  factory MedicineDetailsModel.fromJson(jsonData){
    return MedicineDetailsModel(
      id: jsonData['id'],
      scientificName: jsonData['scientific name'],
      commercialName: jsonData['commercial name'],
      quantity:jsonData['quantity'],
      price:jsonData['price'],
      expirationDate:jsonData['expiration date'],
      expired:jsonData['expired'],
      image:jsonData['image'],
      company:Companys.fromJson(jsonData['company']),
      category:Categorys.fromJson(jsonData['category'])


    );
  }
}
class Companys {
    final int id ;
  final String name;
  Companys({required this.id ,required this.name});
  factory Companys.fromJson(jsonDate){
    return Companys(
     id:jsonDate['id'],
     name:jsonDate['name'],
  );}
  
}

class Categorys {
  final int id ;
  final String name;
  final String image;
 Categorys({required this.id ,required this.name,required this.image});
  factory Categorys.fromJson(jsonDate){
    return Categorys(
     id:jsonDate['id'],
      name:jsonDate['name'],
      image:jsonDate['image'],
  );}
  
}