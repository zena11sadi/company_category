import 'package:companyproject/model/get_medicine_model.dart';
import 'package:flutter/material.dart';

import '../pages/medicine_details_page.dart';

class MedicineCard extends StatelessWidget {
  MedicineCard({ required this.medicine,required this.activeFa ,required this.activeBa});

  @override
  final bool activeFa;
  final bool activeBa;
  final MedicineModel medicine;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height:200,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(left:11),
          child:Column(
            children: [
              SizedBox(height:16,),
              Text(medicine.commercialName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF013A71),
                  fontSize:24,
                  fontWeight: FontWeight.bold,),
              ),
              SizedBox(height:7,),
              Divider(
                endIndent: 10,
                color: Color(0XFFDCEFFD),

                thickness:5,
              ),
              SizedBox(height:16,),
              GestureDetector(
                onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return MedicineDetailsPage();
                 }),);
                },
                child: Container( // See The Details ...
                  height:40,
                  width:200,
                  decoration: BoxDecoration(
                    color: Color(0XFF88BFDD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("See The Details...",
                    style: TextStyle( color: Color(0XFF013A71),
                      fontSize:19,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                ),
              ),
              SizedBox(height:16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      activeBa ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                      
                      color:Color(0XFF013A71) ,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                       activeFa ? Icons.favorite : Icons.favorite_border_outlined ,
                        color:Color(0XFF013A71) ,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),



    );
  }
}