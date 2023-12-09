
/*
class MedicineDetailsListView extends StatelessWidget {
  MedicineDetailsListView({super.key});
  List <Medicine> medicine =[
    Medicine(Image: "image/11.png",
      ScientificName: "Paracetamol",
      TradeName: "Paracetamol",
      Category: "Oral",
      ManufactureCompany:"pharma",
      QuantityAvailable:"11",
      ExpirationDate:"12/4/25",
      Price:"5500",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body:  ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount:1,
          itemBuilder: (context , index){
            return MedicineDetailsCard(
              activeBa: false,
              activeFa: false,
              medicine: medicine[index],
            );
          }
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
    );
  }
}
*/ 