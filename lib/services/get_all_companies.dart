import 'dart:convert';
import 'package:companyproject/model/get_companies_model.dart';
import 'package:http/http.dart' as http;

class AllCompaniesService{
Future<List<CompaniesModel>> getAllCompanies({required String? token}) async {
   http.Response response =
    await http.get(Uri.parse('http://127.0.0.1:8000/api/companies/list'),headers: {"Authorization":'Bearer $token'});
  if (response.statusCode ==200 ) {
    
  Map<String,dynamic> data= jsonDecode(response.body);  
  List<CompaniesModel> companyList = [];
  for(int i=0; i<data['data'].length ; i++)  
  {
    companyList.add(
      CompaniesModel.fromJson(data['data'][i]),
    );
  } 
  return companyList; 
}
else{
   throw Exception("There Is a Problem  with statusCode ${response.statusCode}");
}
  }
}