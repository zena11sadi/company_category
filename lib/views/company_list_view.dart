 /* import 'package:companyproject/model/company_model.dart';
import 'package:flutter/cupertino.dart';

import '../card/company_card.dart';

class companyListView extends StatelessWidget {
   companyListView({super.key});
  List <CompanyModel> companies =[

    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),
    CompanyModel(CompanyName: "CompanyName"),


  ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount:companies.length,
        itemBuilder: (context , index){
          return CompanyCard(
            companies: companies[index],
          );
        }
    );
  }
}
*/ 