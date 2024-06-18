class VenuesResponse {
  VenuesResponse({
    this.code,
    this.message,
    this.status,
    this.data,
  });

  VenuesResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'VenuesResponse{code: $code, message: $message, status: $status, data: $data}';
  }

  int? code;
  String? message;
  bool? status;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  Data({
    this.id,
    this.title,
    this.logo,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    logo = json['logo'];
  }

  int? id;
  String? title;
  String? logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['logo'] = logo;
    return map;
  }

  @override
  String toString() {
    return 'Data{id: $id, title: $title, logo: $logo}';
  }
}
