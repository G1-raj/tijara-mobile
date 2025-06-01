import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/input_field/input_field.dart';
import 'package:tijara/widgets/select_type/select_type.dart';

class RealEstateListingView extends StatefulWidget {
  const RealEstateListingView({super.key});

  @override
  State<RealEstateListingView> createState() => _RealEstateListingViewState();
}

class _RealEstateListingViewState extends State<RealEstateListingView> {

  final List<SelectTypeItem> propertyTypes = [
    SelectTypeItem(title: 'House', icon: Icons.house),
    SelectTypeItem(title: 'Villa', icon: Icons.villa),
    SelectTypeItem(title: 'Apartment', icon: Icons.apartment),
    SelectTypeItem(title: 'Commercial', icon: Icons.restaurant_outlined),
    SelectTypeItem(title: 'Land', icon: Icons.house,),
    SelectTypeItem(title: 'Other', icon: Icons.house),
  ];

  int currIndex = 0;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController totalAreaController = TextEditingController();
  final TextEditingController yearBuiltController = TextEditingController();
  final TextEditingController bedroomsController = TextEditingController();
  final TextEditingController bathroomsController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text("Property Type", style: TextStyle(
                  color: blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
            ),

            SelectType(
              items: propertyTypes,
              selectedIndex: currIndex,
              onItemSelected: (index) {
                setState(() {
                  currIndex = index;
                });
              },
            ),

            const SizedBox(height: 14,),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text("Essential Details", style: TextStyle(
                  color: blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
            ),

            buildInput("Title", "Title", titleController),

            const SizedBox(height: 18,),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text("Property Details", style: TextStyle(
                  color: blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              ),
            ),

            const SizedBox(height: 12,),

            buildInput("Total area", "Enter total area in square meters", totalAreaController),
            buildInput("Year Build", "Enter year of construction", yearBuiltController),
            buildInput("Bedrooms", "Number of bedrooms", bedroomsController),
            buildInput("Bathrooms", "Number of bathrooms", bathroomsController),
            buildInput("Price", "Price", priceController),
            buildInput("Description", "Description", description),

            const SizedBox(height: 16,),

           AppButton(
            widthSize: 0.5,
            heightSize: 0.06,
            buttonColor: blueColor,
            text: "Add pictures",
            textColor: whiteColor,
           ),

           const SizedBox(height: 4,)


          ],
        ),
      ),
    );
  }

   Widget buildLabel(String labelText) {
    return Align(
      alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(labelText, style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold,
          fontSize: 16
          ),),
        ),
      );
  }

  Widget buildInput(String title, String label, TextEditingController controller) {
    return Column(
      children: [
        buildLabel(title),
        const SizedBox(height: 3,),
        InputField(
          widthPercentage: 0.85, 
          heightPercentage: 0.08, 
          labelText: label, 
          maxLines: 10,
          controller: controller
        ),

        const SizedBox(height: 16,),
      ],
    );
  }
}