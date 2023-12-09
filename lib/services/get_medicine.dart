import 'dart:convert';
import 'package:companyproject/model/get_medicine_model.dart';
import 'package:http/http.dart' as http;


class AllMedicineService {

  Future<List<MedicineModel>> getMedicine({required String? token}) async {
   http.Response response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/companies/detail?company_id=1'),headers: {"Authorization":'Bearer $token'});
  if (response.statusCode ==200) {
 Map<String,dynamic> data= jsonDecode(response.body);  
  List<MedicineModel> MedicineList = [];
for(int i=0; i<data['data'].length ; i++)  
  {
    MedicineList.add(
      MedicineModel.fromJson(data['data'][i]),
    );
  } 
  
   return  MedicineList ; 
}
else{
  throw Exception("There Is a Problem  with statusCode ${response.statusCode}");
}
}
}
