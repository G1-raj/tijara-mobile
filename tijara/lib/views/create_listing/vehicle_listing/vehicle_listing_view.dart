import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/input_field/input_field.dart';
import 'package:tijara/widgets/select_type/select_type.dart';

class VehicleListingView extends StatefulWidget {
  const VehicleListingView({super.key});

  @override
  State<VehicleListingView> createState() => _VehicleListingViewState();
}

class _VehicleListingViewState extends State<VehicleListingView> {

  final List<SelectTypeItem> vehicleTypes = [
    SelectTypeItem(title: 'Car', icon: Icons.directions_car),
    SelectTypeItem(title: 'Truck', icon: Icons.fire_truck),
    SelectTypeItem(title: 'Motorcycle', icon: Icons.motorcycle),
    SelectTypeItem(title: 'Rv', icon: Icons.directions_car),
    SelectTypeItem(title: 'Bus', icon: Icons.bus_alert,),
    SelectTypeItem(title: 'Van', icon: Icons.directions_car),
    SelectTypeItem(title: 'Tractor', icon: Icons.directions_car),
    SelectTypeItem(title: 'Others', icon: Icons.directions_car),
    // SelectTypeItem(title: 'Hyundai', icon: Icons.directions_car),
  ];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController makeController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  int selectedIndex = 0;

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
               child: Text("Vehicle Type", style: TextStyle(
                color: blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18
               ),),
             ),
           ),
      
           SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            child: SelectType(
              items: vehicleTypes,
              selectedIndex: selectedIndex,
              onItemSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            ),
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

           const SizedBox(height: 14,),

           buildInput("Title", "Title", titleController),
           buildInput("Make", "Make", makeController),
           buildInput("Model", "Model", modelController),
           buildInput("Year", "Year", yearController),
           buildInput("Price", "Price", priceController),
           buildInput("Location", "Location", locationController),
           buildInput("Description", "Description", descriptionController),

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