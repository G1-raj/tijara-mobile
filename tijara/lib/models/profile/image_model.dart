class ImageModel {
  final String? id;
  final String? url;
  final int? order;
  final String? listingId;

  ImageModel(
    {
      required this.id,
      required this.url,
      required this.order,
      required this.listingId,
    }
  );

  factory ImageModel.fromJson(Map<String, dynamic> json){ 
      return ImageModel(
          id: json["id"],
          url: json["url"],
          order: json["order"],
          listingId: json["listingId"],
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "url": url,
      "order": order,
      "listingId": listingId,
    };
  }

  @override
  String toString(){
      return "$id, $url, $order, $listingId, ";
  }
}