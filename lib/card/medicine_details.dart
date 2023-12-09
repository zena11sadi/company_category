import 'package:companyproject/model/get_medicine_details_model.dart';
import 'package:flutter/material.dart';




class MedicineDetailsCard extends StatelessWidget {
  MedicineDetailsCard({required this.medicine,required this.activeBa,required this.activeFa});
 final bool activeFa;
 final bool activeBa;
  @override
  final MedicineDetailsModel medicine;

  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height:30,),
        CircleAvatar(
          radius: 120,
          backgroundColor: Color(0XFF88BFDD),
          child: CircleAvatar(
            radius: 115,
            backgroundImage:AssetImage(medicine.image),

          ),
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: IconButton(onPressed: (){},
                  icon: Icon(
                      activeBa ? Icons.shopping_basket : Icons.shopping_basket_outlined,
                    color:Color(0XFF88BFDD),size: 55,
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: IconButton(onPressed: (){},
                  icon: Icon(
                   activeFa ? Icons.favorite : Icons.favorite_border_outlined ,
                    color:Color(0XFF88BFDD) ,size: 55,
                  )
              ),
            ),
          ],
        ),
        SizedBox(height:50,),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Scientific Name: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(medicine.scientificName,
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,),
            ),
          ],
        ),

        Divider(
          color:Color(0XFF88BFDD),
          thickness:2,
          endIndent: 30,
          indent: 30,
          height: 50,
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Commercial Name: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(medicine.commercialName,
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,),
            ),
          ],
        ),

        Divider(
          color:Color(0XFF88BFDD),
          thickness:2,
          endIndent: 30,
          indent: 30,
          height: 50,
        ),

       Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30 ),
              child: Text("Category: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('${medicine..category}',
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,),
            ),
          ],
        ),
         

        Divider(
          color:Color(0XFF88BFDD),
          thickness: 2,
          endIndent:30,
          indent: 30,
          height: 50,
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30 ),
              child: Text("Manufacture Company: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('${medicine.company}',
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,
              ),
              textAlign: TextAlign.center,

            ),
          ],
        ), 

        Divider(
          color:Color(0XFF88BFDD),
          thickness: 2,
          endIndent:30,
          indent:30,
          height: 50,
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30 ),
              child: Text("Quantity Available: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('${medicine.quantity}',
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,
              ),
              textAlign: TextAlign.left,

            ),
          ],
        ),

        Divider(
          color:Color(0XFF88BFDD),
          thickness:2,
          endIndent: 30,
          indent:30,
          height: 50,
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30 ),
              child: Text("Expiration Date: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text( medicine.expirationDate,
              style: TextStyle(
                  color: Color(0XFF013A71),
                  fontSize:22,
                  overflow: TextOverflow.ellipsis),
            ),
          ],
        ),

        Divider(
          color:Color(0XFF88BFDD),
          thickness: 2,
          endIndent: 30,
          indent: 30,
          height: 50,
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30 ),
              child: Text("Price: ",
                style: TextStyle(
                    color: Color(0XFF88BFDD),
                    fontSize:22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text('${medicine.price}',
              style: TextStyle(
                color: Color(0XFF013A71),
                fontSize:22,),
            ),
          ],
        ),
      ],
    );




  }
}




