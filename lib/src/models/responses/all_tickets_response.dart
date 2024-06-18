class AllTicketsResponse {
  AllTicketsResponse({
      this.code, 
      this.message, 
      this.status, 
      this.allTickets,});

  AllTicketsResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    allTickets = json['data'] != null ? AllTickets.fromJson(json['data']) : null;
  }
  int? code;
  String? message;
  bool? status;
  AllTickets? allTickets;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['status'] = status;
    if (allTickets != null) {
      map['data'] = allTickets?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'AllTicketsResponse{code: $code, message: $message, status: $status, data: $allTickets}';
  }
}

class AllTickets {
  AllTickets({
      this.ticketList,});

  AllTickets.fromJson(dynamic json) {
    if (json['data'] != null) {
      ticketList = [];
      json['data'].forEach((v) {
        ticketList?.add(TicketItem.fromJson(v));
      });
    }
  }
  List<TicketItem>? ticketList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ticketList != null) {
      map['data'] = ticketList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  String toString() {
    return 'Data{data: $ticketList}';
  }
}

class TicketItem {
  TicketItem({
      this.id, 
      this.caseTypeId, 
      this.ticketCategoryId, 
      this.ticketSubCategoryId, 
      this.branchId, 
      this.ticketPriorityId, 
      this.ticketStatusId, 
      this.agentId, 
      this.description, 
      this.location, 
      this.date, 
      this.caseType, 
      this.ticketCategory, 
      this.ticketSubCategory, 
      this.branch, 
      this.ticketPriority, 
      this.ticketStatus,});

  TicketItem.fromJson(dynamic json) {
    id = json['id'];
    caseTypeId = json['case_type_id'];
    ticketCategoryId = json['ticket_category_id'];
    ticketSubCategoryId = json['ticket_sub_category_id'];
    branchId = json['branch_id'];
    ticketPriorityId = json['ticket_priority_id'];
    ticketStatusId = json['ticket_status_id'];
    agentId = json['agent_id'];
    description = json['description'];
    location = json['location'];
    date = json['date'];
    caseType = json['case_type'] != null ? CaseType.fromJson(json['case_type']) : null;
    ticketCategory = json['ticket_category'] != null ? TicketItemCategory.fromJson(json['ticket_category']) : null;
    ticketSubCategory = json['ticket_sub_category'] != null ? TicketSubCategory.fromJson(json['ticket_sub_category']) : null;
    branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    ticketPriority = json['ticket_priority'] != null ? TicketPriority.fromJson(json['ticket_priority']) : null;
    ticketStatus = json['ticket_status'] != null ? TicketStatus.fromJson(json['ticket_status']) : null;
  }
  int? id;
  int? caseTypeId;
  int? ticketCategoryId;
  int? ticketSubCategoryId;
  int? branchId;
  int? ticketPriorityId;
  int? ticketStatusId;
  dynamic agentId;
  String? description;
  dynamic location;
  String? date;
  CaseType? caseType;
  TicketItemCategory? ticketCategory;
  TicketSubCategory? ticketSubCategory;
  Branch? branch;
  TicketPriority? ticketPriority;
  TicketStatus? ticketStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['case_type_id'] = caseTypeId;
    map['ticket_category_id'] = ticketCategoryId;
    map['ticket_sub_category_id'] = ticketSubCategoryId;
    map['branch_id'] = branchId;
    map['ticket_priority_id'] = ticketPriorityId;
    map['ticket_status_id'] = ticketStatusId;
    map['agent_id'] = agentId;
    map['description'] = description;
    map['location'] = location;
    map['date'] = date;
    if (caseType != null) {
      map['case_type'] = caseType?.toJson();
    }
    if (ticketCategory != null) {
      map['ticket_category'] = ticketCategory?.toJson();
    }
    if (ticketSubCategory != null) {
      map['ticket_sub_category'] = ticketSubCategory?.toJson();
    }
    if (branch != null) {
      map['branch'] = branch?.toJson();
    }
    if (ticketPriority != null) {
      map['ticket_priority'] = ticketPriority?.toJson();
    }
    if (ticketStatus != null) {
      map['ticket_status'] = ticketStatus?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'Dataa{id: $id, caseTypeId: $caseTypeId, ticketCategoryId: $ticketCategoryId, ticketSubCategoryId: $ticketSubCategoryId, branchId: $branchId, ticketPriorityId: $ticketPriorityId, ticketStatusId: $ticketStatusId, agentId: $agentId, description: $description, location: $location, date: $date, caseType: $caseType, ticketCategory: $ticketCategory, ticketSubCategory: $ticketSubCategory, branch: $branch, ticketPriority: $ticketPriority, ticketStatus: $ticketStatus}';
  }
}

class TicketStatus {
  TicketStatus({
      this.id, 
      this.name,});

  TicketStatus.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  int? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  @override
  String toString() {
    return 'TicketStatus{id: $id, name: $name}';
  }
}

class TicketPriority {
  TicketPriority({
      this.id, 
      this.name, 
      this.color,});

  TicketPriority.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
  }
  int? id;
  String? name;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['color'] = color;
    return map;
  }

  @override
  String toString() {
    return 'TicketPriority{id: $id, name: $name, color: $color}';
  }
}

class Branch {
  Branch({
      this.id, 
      this.name,});

  Branch.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  int? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  @override
  String toString() {
    return 'Branch{id: $id, name: $name}';
  }
}

class TicketSubCategory {
  TicketSubCategory({
      this.id, 
      this.name, 
      this.image,});

  TicketSubCategory.fromJson(dynamic json) {
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

  @override
  String toString() {
    return 'TicketSubCategory{id: $id, name: $name, image: $image}';
  }
}

class TicketItemCategory {
  TicketItemCategory({
      this.id, 
      this.name, 
      this.image,});

  TicketItemCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }
  int? id;
  String? name;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    return map;
  }

  @override
  String toString() {
    return 'TicketCategory{id: $id, name: $name, image: $image}';
  }
}

class CaseType {
  CaseType({
      this.id, 
      this.name, 
      this.image,});

  CaseType.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }
  int? id;
  String? name;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    return map;
  }

  @override
  String toString() {
    return 'CaseType{id: $id, name: $name, image: $image}';
  }
}