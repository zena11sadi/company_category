import 'dart:convert';
import 'package:companyproject/model/get_medicine_details_model.dart';
import 'package:http/http.dart' as http;

class AllDetailsMedicineService{
Future<List<MedicineDetailsModel>> getAllDetailsMedicineService({required String? token}) async {
   http.Response response =
    await http.get(Uri.parse('http://127.0.0.1:8000/api/medicines/detail?medicine_id=1'),headers: {"Authorization":'Bearer $token'});
  if (response.statusCode ==200 ) {
  Map<String,dynamic> data= jsonDecode(response.body);  
  List<MedicineDetailsModel> companyList = [];
  for(int i=0; i<data['data'].length ; i++)  
  {
    companyList.add(
      MedicineDetailsModel.fromJson(data['data'][i]),
    );
  } 
  return companyList; 
}
else{
   throw Exception("There Is a Problem  with statusCode ${response.statusCode}");
}
  }
}