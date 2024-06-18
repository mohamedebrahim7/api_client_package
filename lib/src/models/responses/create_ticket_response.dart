class CreateTicketResponse {
  CreateTicketResponse({
      this.code, 
      this.message, 
      this.status, 
      this.data,});

  CreateTicketResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    data = json['data'] != null ? Ticket.fromJson(json['data']) : null;
  }
  int? code;
  String? message;

  @override
  String toString() {
    return 'CreateTicketResponse{code: $code, message: $message, status: $status, data: $data}';
  }

  bool? status;
  Ticket? data;


}

class Ticket {
  Ticket({
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
      this.date,});

  Ticket.fromJson(dynamic json) {
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
  }
  int? id;
  String? caseTypeId;
  String? ticketCategoryId;
  String? ticketSubCategoryId;
  String? branchId;
  int? ticketPriorityId;
  int? ticketStatusId;
  dynamic agentId;
  dynamic description;
  dynamic location;
  String? date;


  @override
  String toString() {
    return 'Data{id: $id, caseTypeId: $caseTypeId, ticketCategoryId: $ticketCategoryId, ticketSubCategoryId: $ticketSubCategoryId, branchId: $branchId, ticketPriorityId: $ticketPriorityId, ticketStatusId: $ticketStatusId, agentId: $agentId, description: $description, location: $location, date: $date}';
  }
}