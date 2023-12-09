import 'package:companyproject/card/medicine_details.dart';
import 'package:companyproject/model/get_medicine_details_model.dart';
import 'package:companyproject/services/get_details_medicine.dart';
import 'package:flutter/material.dart';


class MedicineDetailsPage extends StatelessWidget {
  const MedicineDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        backgroundColor: Color(0XFF88BFDD),
        title: Text("Medicines Details",style: TextStyle(fontSize: 25),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff88BFDD),
        tooltip: 'Go to Basket',
        child: Icon(
          Icons.shopping_basket,
          color: Color(0xffDCEFFD),
        ),
      ),
      body:
      FutureBuilder<List<MedicineDetailsModel>>(
        future : AllDetailsMedicineService().getAllDetailsMedicineService(token: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI3IiwianRpIjoiMDcyZTJhYTU1NjM1YzM4ZjUwODlkOTllZGUwMDc4Y2UzYjI5MDA3MTJhMTQ0ZmM3MmQ4OTk4ZTFmNGI0OTJkY2NiN2U5ZTAzNzk5ZDk5N2QiLCJpYXQiOjE3MDE5NzU4OTMuOTE1MTY3LCJuYmYiOjE3MDE5NzU4OTMuOTE1MTcxLCJleHAiOjE3MzM1OTgyOTMuNzk5OTc3LCJzdWIiOiIxNyIsInNjb3BlcyI6W119.ew-ROq5m-y0dwP5LCpiS7HZlsSkPdOBt7AbSoLeikEmwDU3OwzXSoAnOPdxU0yRRFQIyPWKqdlXJOdZmBb0WK9C6iy-gZKOCN4KwqPk8zZ7BFQlO_utMXfa49kCibR92neZaxEJHCRqJpT_AxiMKEBHYLIBAp-9yfYQkggVAXdUElbOYXkvSHhmvByym_Dg6WYlNts71A-VHSiPFf2JsuFYxyBRZoUycI3ChbDx2a-iLSUrK-O9Beea5_SWkc6ght-0q_kkW5rWJ--N6v7R2aKwHIJwB_MYi-JE_jtJKKSVV7R6I_KS-zB-Q6NZvdszqdWwX4lXG3eYiy1-9EVEjy3ubnaFm5d9CaFf3M-GgOFc_316MvjcqRf85DwSnheq_OmmIKsxpsZTutHu1n10obvdkCBsbhC-KgQ65FQ-tZa7zAN80TYlUZDJU8mocUITO8xfaD4nuc-ir_2GLTucUBRJ2IBjqfrFeloJAf4FpCybR6T7FxHsYcoU-zSWtV2J2PgZbI9PWAphZCGKW9yxG3f2OARrfhAhIrD0CPKHQthUSATnR1DqJBY2mff8UOUfXR5i2DiqWV7GAwBjtWEyFrr1LPA50ReK2GTxySZnGBQ18N2-7JNaySgC37bUzN5hxAtxoGLyqhmU4PGCryMK_T6azoQ1zAe7gAoftn8On-Zc'),
       builder: (context,snapshot){
        if (snapshot.hasData ) {
          List<MedicineDetailsModel> medicine = snapshot.data! ;
          return  ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount:medicine.length,
          itemBuilder: (context , index){
            return MedicineDetailsCard(
              activeBa: false,
              activeFa: false,
              medicine: medicine[index],
            );
          }
      );
     
}
else {
  return Center(child: Text('Some medicine Data Are Missed.'),);
}
       }

      ),
      
    );
  }
}