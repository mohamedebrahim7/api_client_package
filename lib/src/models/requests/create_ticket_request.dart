class CreateTicketRequest {
  CreateTicketRequest({
    this.caseTypeId,
    this.ticketCategoryId,
    this.ticketSubCategoryId,
    this.branchId,
    this.venueId,
    this.description,
    this.location,
    this.amenityId,
  });

  String? caseTypeId;
  String? ticketCategoryId;
  String? ticketSubCategoryId;
  String? branchId;
  String? venueId;
  String? description;
  String? location;
  String? amenityId;

  @override
  String toString() {
    return 'CreateTicketRequest{caseTypeId: $caseTypeId, ticketCategoryId: $ticketCategoryId, ticketSubCategoryId: $ticketSubCategoryId, branchId: $branchId, venueId: $venueId, description: $description, location: $location, amenityId: $amenityId}';
  }

  CreateTicketRequest copyWith({
    String? caseTypeId,
    String? ticketCategoryId,
    String? ticketSubCategoryId,
    String? branchId,
    String? venueId,
    String? description,
    String? location,
    String? amenityId,
  }) =>
      CreateTicketRequest(
        caseTypeId: caseTypeId ?? this.caseTypeId,
        ticketCategoryId: ticketCategoryId ?? this.ticketCategoryId,
        ticketSubCategoryId: ticketSubCategoryId ?? this.ticketSubCategoryId,
        branchId: branchId ?? this.branchId,
        venueId: venueId ?? this.venueId,
        description: description ?? this.description,
        location: location ?? this.location,
        amenityId: amenityId ?? this.amenityId,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['case_type_id'] = caseTypeId;
    map['ticket_category_id'] = ticketCategoryId;
    map['ticket_sub_category_id'] = ticketSubCategoryId;
    map['branch_id'] = branchId;
    map['venue_id'] = venueId;
    map['description'] = description;
    map['location'] = location;
    map['amenity_id'] = amenityId;
    return map;
  }
}
