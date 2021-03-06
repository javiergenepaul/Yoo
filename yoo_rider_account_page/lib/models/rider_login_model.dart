// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.user,
    required this.token,
  });

  String message;
  User user;
  String token;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        message: json["message"],
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
        "token": token,
      };
}

class User {
  User({
    required this.id,
    required this.email,
    required this.mobileNumber,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.driver,
    required this.userInfo,
  });

  int id;
  String email;
  String mobileNumber;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  Driver driver;
  UserInfo userInfo;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        mobileNumber: json["mobile_number"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        driver: Driver.fromJson(json["driver"]),
        userInfo: UserInfo.fromJson(json["user_info"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "mobile_number": mobileNumber,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "driver": driver.toJson(),
        "user_info": userInfo.toJson(),
      };
}

class Driver {
  Driver({
    required this.id,
    required this.userId,
    required this.city,
    this.drivingLicenseNumber,
    this.drivingLicenseExpiry,
    this.driverLicenseImage,
    this.vehicleBrand,
    this.vehicleModel,
    this.vehicleManufactureYear,
    this.licensePlateNumber,
    this.nbiClearance,
    this.deedOfSale,
    this.vehicleRegistration,
    this.vehicleFront,
    this.vehicleSide,
    this.vehicleBack,
    this.driverRating,
    required this.status,
    this.numberOfFans,
    this.vaxCertificate,
    required this.createdAt,
    required this.updatedAt,
    required this.verificationStatusId,
    required this.vehicleId,
    required this.verificationStatus,
    required this.vehicle,
  });

  int id;
  int userId;
  String city;
  dynamic drivingLicenseNumber;
  dynamic drivingLicenseExpiry;
  dynamic driverLicenseImage;
  dynamic vehicleBrand;
  dynamic vehicleModel;
  dynamic vehicleManufactureYear;
  dynamic licensePlateNumber;
  dynamic nbiClearance;
  dynamic deedOfSale;
  dynamic vehicleRegistration;
  dynamic vehicleFront;
  dynamic vehicleSide;
  dynamic vehicleBack;
  dynamic driverRating;
  int status;
  dynamic numberOfFans;
  dynamic vaxCertificate;
  DateTime createdAt;
  DateTime updatedAt;
  int verificationStatusId;
  int vehicleId;
  VerificationStatus verificationStatus;
  Vehicle vehicle;

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        id: json["id"],
        userId: json["user_id"],
        city: json["city"],
        drivingLicenseNumber: json["driving_license_number"],
        drivingLicenseExpiry: json["driving_license_expiry"],
        driverLicenseImage: json["driver_license_image"],
        vehicleBrand: json["vehicle_brand"],
        vehicleModel: json["vehicle_model"],
        vehicleManufactureYear: json["vehicle_manufacture_year"],
        licensePlateNumber: json["license_plate_number"],
        nbiClearance: json["nbi_clearance"],
        deedOfSale: json["deed_of_sale"],
        vehicleRegistration: json["vehicle_registration"],
        vehicleFront: json["vehicle_front"],
        vehicleSide: json["vehicle_side"],
        vehicleBack: json["vehicle_back"],
        driverRating: json["driver_rating"],
        status: json["status"],
        numberOfFans: json["number_of_fans"],
        vaxCertificate: json["vax_certificate"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        verificationStatusId: json["verification_status_id"],
        vehicleId: json["vehicle_id"],
        verificationStatus:
            VerificationStatus.fromJson(json["verification_status"]),
        vehicle: Vehicle.fromJson(json["vehicle"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "city": city,
        "driving_license_number": drivingLicenseNumber,
        "driving_license_expiry": drivingLicenseExpiry,
        "driver_license_image": driverLicenseImage,
        "vehicle_brand": vehicleBrand,
        "vehicle_model": vehicleModel,
        "vehicle_manufacture_year": vehicleManufactureYear,
        "license_plate_number": licensePlateNumber,
        "nbi_clearance": nbiClearance,
        "deed_of_sale": deedOfSale,
        "vehicle_registration": vehicleRegistration,
        "vehicle_front": vehicleFront,
        "vehicle_side": vehicleSide,
        "vehicle_back": vehicleBack,
        "driver_rating": driverRating,
        "status": status,
        "number_of_fans": numberOfFans,
        "vax_certificate": vaxCertificate,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "verification_status_id": verificationStatusId,
        "vehicle_id": vehicleId,
        "verification_status": verificationStatus.toJson(),
        "vehicle": vehicle.toJson(),
      };
}

class Vehicle {
  Vehicle({
    required this.id,
    required this.type,
    required this.maxWeightKg,
    required this.createdAt,
    required this.updatedAt,
    required this.vehicleDimension,
    required this.vehicleRates,
  });

  int id;
  String type;
  int maxWeightKg;
  DateTime createdAt;
  DateTime updatedAt;
  VehicleDimension vehicleDimension;
  List<VehicleRate> vehicleRates;

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        id: json["id"],
        type: json["type"],
        maxWeightKg: json["max_weight_kg"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        vehicleDimension: VehicleDimension.fromJson(json["vehicle_dimension"]),
        vehicleRates: List<VehicleRate>.from(
            json["vehicle_rates"].map((x) => VehicleRate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "max_weight_kg": maxWeightKg,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "vehicle_dimension": vehicleDimension.toJson(),
        "vehicle_rates":
            List<dynamic>.from(vehicleRates.map((x) => x.toJson())),
      };
}

class VehicleDimension {
  VehicleDimension({
    required this.id,
    required this.vehicleId,
    required this.lengthFt,
    required this.widthFt,
    required this.heightFt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int vehicleId;
  double lengthFt;
  double widthFt;
  double heightFt;
  DateTime createdAt;
  DateTime updatedAt;

  factory VehicleDimension.fromJson(Map<String, dynamic> json) =>
      VehicleDimension(
        id: json["id"],
        vehicleId: json["vehicle_id"],
        lengthFt: json["length_ft"].toDouble(),
        widthFt: json["width_ft"].toDouble(),
        heightFt: json["height_ft"].toDouble(),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle_id": vehicleId,
        "length_ft": lengthFt,
        "width_ft": widthFt,
        "height_ft": heightFt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class VehicleRate {
  VehicleRate({
    required this.id,
    required this.vehicleId,
    required this.areaId,
    required this.baseFair,
    required this.chargePerKm,
    required this.perAddStop,
    required this.createdAt,
    required this.updatedAt,
    required this.area,
  });

  int id;
  int vehicleId;
  int areaId;
  int baseFair;
  int chargePerKm;
  int perAddStop;
  DateTime createdAt;
  DateTime updatedAt;
  VerificationStatus area;

  factory VehicleRate.fromJson(Map<String, dynamic> json) => VehicleRate(
        id: json["id"],
        vehicleId: json["vehicle_id"],
        areaId: json["area_id"],
        baseFair: json["base_fair"],
        chargePerKm: json["charge_per_km"],
        perAddStop: json["per_add_stop"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        area: VerificationStatus.fromJson(json["area"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle_id": vehicleId,
        "area_id": areaId,
        "base_fair": baseFair,
        "charge_per_km": chargePerKm,
        "per_add_stop": perAddStop,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "area": area.toJson(),
      };
}

class VerificationStatus {
  VerificationStatus({
    required this.id,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  int id;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  String status;

  factory VerificationStatus.fromJson(Map<String, dynamic> json) =>
      VerificationStatus(
        id: json["id"],
        description: json["description"] == null ? '' : json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"] == null ? '' : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description == null ? '' : description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "status": status == null ? '' : description,
      };
}

class UserInfo {
  UserInfo({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    this.profilePicture,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int userId;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  dynamic profilePicture;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"],
        userId: json["user_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        profilePicture: json["profile_picture"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "profile_picture": profilePicture,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

LoginRequestModel loginRequestModelFromJson(String str) =>
    LoginRequestModel.fromJson(json.decode(str));

String loginRequestModelToJson(LoginRequestModel data) =>
    json.encode(data.toJson());

class LoginRequestModel {
  LoginRequestModel({
    required this.account,
    required this.password,
  });

  String account;
  String password;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      LoginRequestModel(
        account: json["account"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "account": account,
        "password": password,
      };
}



// class LoginRequestModel {
//   String mobileNumber;
//   String password;

//   LoginRequestModel({required this.mobileNumber, required this.password});

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'mobile_bumber': mobileNumber.trim(),
//       'password': password.trim()
//     };
//     return map;
//   }
// }
