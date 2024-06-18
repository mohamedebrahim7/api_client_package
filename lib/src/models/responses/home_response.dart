class HomeResponse {
  HomeResponse({
      this.code, 
      this.message, 
      this.status, 
      this.homeData,});

  @override
  String toString() {
    return 'HomeResponse{code: $code, message: $message, status: $status, data: $homeData}';
  }

  HomeResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      homeData = [];
      json['data'].forEach((v) {
        homeData?.add(HomeData.fromJson(v));
      });
    }
  }
  int? code;
  String? message;
  bool? status;
  List<HomeData>? homeData;

}

class HomeData {
  HomeData({
      this.id, 
      this.title, 
      this.description, 
      this.name, 
      this.image,});

  @override
  String toString() {
    return 'Data{id: $id, title: $title, description: $description, name: $name, image: $image}';
  }

  HomeData.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    name = json['name'];
    image = json['image'];
  }
  int? id;
  String? title;
  String? description;
  String? name;
  String? image;



}