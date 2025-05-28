import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/listing_controller.dart';
import 'package:tijara/helpers/format_server_date.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/image_slider/image_slider.dart';

class ListingDetailView extends StatelessWidget {
  final String productId;
  ListingDetailView({super.key, required this.productId});

  final ListingController _listingController = Get.put(ListingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Obx(
             () {

                final listing = _listingController.listingDetails.value;

                if (listing == null) {
                  return SizedBox(
                    height: constraints.maxHeight,
                    child: Center(
                      child: CircularProgressIndicator()
                      )
                    );
                }

                if(listing.data == null) {
                  return SizedBox(
                    height: constraints.maxHeight,
                    child: Center(
                      child: Text("No data for listing is available"),
                    ),
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    ImageSlider(imageUrls: listing.data!.images, listingId: productId,),
                    const SizedBox(height: 16),
                
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listing.data?.title ?? "No title is available",
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "\$${listing.data?.price ?? 00}",
                            style: TextStyle(
                              color: blueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.location_pin, color: greyColor, size: 18),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  listing.data?.location ?? "No location is available",
                                  style: TextStyle(color: greyColor, fontSize: 14),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Features",
                            style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Essential Details",
                                  style: TextStyle(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                _buildFeatureRow(
                                  FontAwesomeIcons.car, 
                                  listing.data!.details!.vehicles?.make ?? "No brand is available", 
                                  FontAwesomeIcons.car, 
                                  listing.data!.details!.vehicles?.model ?? "No model is available", 
                                ),
                                const SizedBox(height: 12),
                                _buildFeatureRow(
                                  FontAwesomeIcons.calendar, 
                                  "Year ${listing.data!.details!.vehicles?.year ?? "No year is available"}", 
                                  FontAwesomeIcons.gear, 
                                  "${listing.data!.details!.vehicles?.transmissionType ?? "No transmission is available"} Transmission"
                                ),
                              ],
                            ),
                          ),
                
                          const SizedBox(height: 16),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            elevation: 3,
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Description",
                                    style: TextStyle(
                                      color: blueColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    listing.data?.description ?? "No description is available",
                                    style: TextStyle(color: blackColor, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          const SizedBox(height: 16),
                          Card(
                            color: whiteColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Seller Information",
                                    style: TextStyle(
                                      color: blueColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundImage: NetworkImage(
                                          listing.data!.seller?.profilePicture ?? "https://thumbs.dreamstime.com/b/person-icon-flat-style-man-symbol-person-icon-flat-style-man-symbol-isolated-white-background-simple-people-abstract-icon-118611127.jpg", 
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listing.data!.seller?.username ?? "No seller name is available", 
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: blackColor,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            "Listing posted on ${formatToDate(listing.data!.createdAt.toString())}", 
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          const SizedBox(height: 18,),
                
                          Align(
                            alignment: Alignment.center,
                            child: AppButton(
                              widthSize: 0.75, 
                              heightSize: 0.08, 
                              buttonColor: blueColor, 
                              text: "Contact Seller", 
                              textColor: whiteColor
                            ),
                          ),
                
                          const SizedBox(height: 12,),
                
                
                        ],
                      ),
                    ),
                  ],
                );
              }
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon1, String label1, IconData icon2, String label2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFeatureItem(icon1, label1),
        _buildFeatureItem(icon2, label2),
      ],
    );
  }

  Widget _buildFeatureItem(IconData icon, String label) {
    return Row(
      children: [
        FaIcon(icon, color: blueColor, size: 18),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(color: blackColor, fontSize: 14),
        ),
      ],
    );
  }
}
