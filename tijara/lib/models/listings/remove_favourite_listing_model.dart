class RemoveFavouriteListingModel {
    RemoveFavouriteListingModel({
        required this.success,
        required this.error,
        required this.status,
        required this.data,
    });

    final bool? success;
    final String? error;
    final int? status;
    final dynamic data;

    factory RemoveFavouriteListingModel.fromJson(Map<String, dynamic> json){ 
        return RemoveFavouriteListingModel(
            success: json["success"],
            error: json["error"],
            status: json["status"],
            data: json["data"],
        );
    }

    Map<String, dynamic> toJson() => {
        "success": success,
        "error": error,
        "status": status,
        "data": data,
    };

    @override
    String toString(){
        return "$success, $error, $status, $data, ";
    }
}
