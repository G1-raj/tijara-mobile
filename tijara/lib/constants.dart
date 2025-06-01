import 'package:flutter/material.dart';

const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);
const Color blackColor = Color.fromRGBO(0, 0, 0, 1);
const Color sheetColor = Color.fromRGBO(52, 83, 183, 1);
const Color lightblueColor = Color.fromRGBO(59, 129, 246, 1);
const Color purpleColor = Color.fromRGBO(79, 69, 228, 1);
const Color blueColor = Color.fromRGBO(28, 78, 216, 1);
const Color greyColor = Color.fromRGBO(103, 112, 124, 1);

//********auth urls******

//post route for login body requires username and password
const String loginRoute = "https://tijara-backend-production.up.railway.app/api/auth/login";

//post route to create a new user body requires name email username and password
const String registerRoute = "https://tijara-backend-production.up.railway.app/api/auth/register";

//post route to verify email verification code body requires code and email
const String verifyCodeRoute = "https://tijara-backend-production.up.railway.app/api/auth/verify-email/code";

//post route to get the email verificatio code for changing password it is protected route
const String changePassowrdVerifyTokenRoute = "https://tijara-backend-production.up.railway.app/api/auth/send-password-change-verification";

//post route to change the password body requires current password new password verification code it is protected route
const String changePasswordRoute = "https://tijara-backend-production.up.railway.app/api/auth/change-password";

//post route to refresh the jwt token  it is protected route
const String refreshTokenRoute = "https://tijara-backend-production.up.railway.app/api/auth/refresh";

//get route to verify current valid jwt token it is protected route
const String verifyTokenRoute = "https://tijara-backend-production.up.railway.app/api/auth/verify-token";

//post route to resend the email verification code body requires the email
const String resendVerificationCodeRoute = "https://tijara-backend-production.up.railway.app/api/auth/resend-verification";

//get route to get authenticated user profile details it is protected route 
const String getUserProfileRoute = "https://tijara-backend-production.up.railway.app/api/auth/me";

//post route to logout the user it is protected route
const String logoutRoute = "https://tijara-backend-production.up.railway.app/api/auth/logout";


//******user action routes ******* *//

//get route to get user details
dynamic userProfileRoute(String id) => "https://tijara-backend-production.up.railway.app/api/users/public-profile/$id";

//get route to get single listing details
dynamic individualListingDetailsRoute(String id) => "https://tijara-backend-production.up.railway.app/api/listings/public/$id";

//post route to add listing into favourites and it is protected route so it required access token
dynamic addListingToFavouriteRoute(String listingId) => "https://tijara-backend-production.up.railway.app/api/listings/saved/$listingId";

//get route to get all the favourite listing of users it is protected route so it required access token
const getFavouriteListingRoute = "https://tijara-backend-production.up.railway.app/api/listings/favorites";

//delete route to remove listing from favourite section it is protected rotute so needed to pass access token
dynamic removeFavouriteListingRoute(String listingId) => "https://tijara-backend-production.up.railway.app/api/listings/saved/$listingId";

//put route to update user profile
const updateProfileRoute = "https://tijara-backend-production.up.railway.app/api/users/profile";
