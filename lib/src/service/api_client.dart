import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/models.dart';
import '../models/responses/venues_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://informa.alconxwaveevent.com/api')
abstract class ApiClient  {
  factory ApiClient(Dio dio) = _ApiClient;

  /// all authentication endpoints

  @POST('/auth/register')
  Future<AuthenticationResponse> register(
      @Body() AuthenticationRequest authenticationRequest,
      );

  @POST('/auth/login')
  Future<AuthenticationResponse> login(
      @Body() AuthenticationRequest authenticationRequest,
      );

  @POST('/auth/logout')
  Future<AuthenticationResponse> logout(
      @Body() AuthenticationRequest authenticationRequest,
      );

  @GET('/auth/me')
  Future<AuthenticationResponse> userInfo(
      );


  @GET('/user-types')
  Future<UserTypesResponse> getUserTypes();

  ///end of authentication Endpoints


  ///Reset password Cycle
  @POST('/send-otp')
  Future<ResetPasswordResponse> sendOtp(
      @Body() ResetPasswordRequest resetPasswordRequest,
      );

  @POST('/verify-otp')
  Future<ResetPasswordResponse> verifyOtp(
      @Body() ResetPasswordRequest resetPasswordRequest,
      );

  @POST('/forget-password')
  Future<ResetPasswordResponse> forgetPassword(
      @Body() ResetPasswordRequest resetPasswordRequest,
      );

  ///end of reset Password cycle


  /// all Home Screen endpoints
  @POST('/tickets')
  Future<CreateTicketResponse> createTicket(
      @Header('Authorization') String token,
      @Body() CreateTicketRequest createTicketRequest,
      );

  @GET('/case_types')
  Future<HomeResponse> caseTypes();


  @GET('/venues/1')
  Future<VenuesResponse> getVenues();


  @GET('/ticket_categories')
  Future<TicketTypeResponse> ticketCategories();

  @GET('/sliders')
  Future<HomeResponse> sliderCategories();
  ///end of Home screen endpoints

  ///Report history endpoints
  @GET('/tickets')
  Future<AllTicketsResponse> allTickets(
      @Header("Authorization") String authToken,
      @Query("page") int page,

      @Query("date") String? date,
      @Query("case_type_id") int? caseTypeId,
      @Query("ticket_category_id") int? ticketCategoryId,
      );
  ///end of Report history endpoints




  @POST("/update-profile")
  @MultiPart()
  Future<UpdateProfileResponse> uploadFile(
      @Header('Authorization') String token,
      @Part(name: "image") File imageFile,
      @Part(name: "first_name") String firstName,
      @Part(name: "last_name") String lastName,
      @Part(name: "email") String email,
      @Part(name: "phone_number") String phoneNumber,
      @Part(name: "country_code") String countryCode,
      );

  @POST("/update-profile")
  Future<UpdateProfileResponse> updateProfile(
      @Header('Authorization') String token,
      @Body() UpdateProfileRequest updateProfileRequest);


///end of Profile endpoints
}
