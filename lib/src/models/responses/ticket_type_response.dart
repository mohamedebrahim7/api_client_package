class TicketTypeResponse {
  TicketTypeResponse({
      this.code, 
      this.message, 
      this.status, 
      this.ticketCategory,});

  @override
  String toString() {
    return 'TicketTypeResponse{code: $code, message: $message, status: $status, data: $ticketCategory}';
  }

  TicketTypeResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      ticketCategory = [];
      json['data'].forEach((v) {
        ticketCategory?.add(TicketCategory.fromJson(v));
      });
    }
  }
  int? code;
  String? message;
  bool? status;
  List<TicketCategory>? ticketCategory;


}

class TicketCategory {
  TicketCategory({
      this.id, 
      this.name, 
      this.image, 
      this.subCategories,});

  @override
  String toString() {
    return 'Data{id: $id, name: $name, image: $image, subCategories: $subCategories}';
  }

  TicketCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    if (json['sub_categories'] != null) {
      subCategories = [];
      json['sub_categories'].forEach((v) {
        subCategories?.add(TicketSubCategories.fromJson(v));
      });
    }
  }
  int? id;
  String? name;
  String? image;
  List<TicketSubCategories>? subCategories;



}

class TicketSubCategories {
  TicketSubCategories({
      this.id, 
      this.name, 
      this.image,});

  @override
  String toString() {
    return 'SubCategories{id: $id, name: $name, image: $image}';
  }

  TicketSubCategories.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }
  int? id;
  String? name;
  dynamic image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    return map;
  }

}