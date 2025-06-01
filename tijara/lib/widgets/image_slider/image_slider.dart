import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/listing_controller.dart';

class ImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final String listingId;
  const ImageSlider({super.key, required this.imageUrls, required this.listingId});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late final PageController _pageController;
  late final ScrollController _dotScrollController;
  int _currentIndex = 0;

  final ListingController _listingController = Get.put(ListingController());

  @override
  void initState() {
    _pageController = PageController();
    _dotScrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _dotScrollController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);

    // Animate dot scroll to keep selected dot visible
    double targetOffset = (index - 1) * 20.0;
    if (targetOffset < 0) targetOffset = 0;

    _dotScrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageCount = widget.imageUrls.length;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Image Slider
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          child: PageView.builder(
            controller: _pageController,
            itemCount: imageCount,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return Image.network(
                widget.imageUrls[index],
                fit: BoxFit.cover,
                width: double.infinity,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(child: Icon(Icons.broken_image, size: 40));
                },
              );
            },
          ),
        ),

        // Back Button
        Positioned(
          top: 16,
          left: 16,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new, color: whiteColor),
          ),
        ),

       Positioned(
        top: 16,
        right: 16,
        child: Obx(
          () {

            final isFavourite = _listingController.isFavourite.value;

            return GestureDetector(
              onTap: () {

                _listingController.toggleFavourite(widget.listingId);
                
              },
              child: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_border,
                color: isFavourite ? Colors.red : Colors.white,
                size: 28,
              ),
            );
          }
        ),
      ),


        // Dots Indicator
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: screenWidth * 0.3, // ~3 dots visible at a time
              height: 20,
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ListView.builder(
                controller: _dotScrollController,
                scrollDirection: Axis.horizontal,
                itemCount: imageCount,
                itemBuilder: (context, index) {
                  final isActive = index == _currentIndex;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: isActive ? 14 : 8,
                    height: isActive ? 14 : 8,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: isActive ? whiteColor : whiteColor.withOpacity(0.4),
                      shape: BoxShape.circle,
                      boxShadow: isActive
                          ? [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              )
                            ]
                          : [],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
