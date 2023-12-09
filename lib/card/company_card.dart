import 'package:companyproject/model/get_companies_model.dart';
import 'package:flutter/material.dart';

import '../pages/medicine_page.dart';

class CompanyCard extends StatelessWidget {
   CompanyCard({super.key, required this.companies});
  final CompaniesModel companies;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return MedicinePage();
        }
        ),
        );
      },
      child: Padding(

        padding: const EdgeInsets.all(20),
        child: Container(
        
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0XFFDCEFFD),
            borderRadius: BorderRadius.circular(20),
          ),
          child:Center(
            child: Text(companies.name,
              textAlign: TextAlign.center,
              style:const  TextStyle(
                color: Color(0XFF013A71),
                fontSize:27,),
            ),
          ),
        
        
        ),

      ),
    );
  }
}
