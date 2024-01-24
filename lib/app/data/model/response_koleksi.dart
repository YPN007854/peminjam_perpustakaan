/// status : 201
/// message : "success"
/// data : {"user_id":1,"book_id":1,"updated_at":"2024-01-09T05:51:05.000000Z","created_at":"2024-01-09T05:51:05.000000Z","id":2}

class ResponseKoleksi {
  ResponseKoleksi({
      this.status, 
      this.message, 
      this.data,});

  ResponseKoleksi.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// user_id : 1
/// book_id : 1
/// updated_at : "2024-01-09T05:51:05.000000Z"
/// created_at : "2024-01-09T05:51:05.000000Z"
/// id : 2

class Data {
  Data({
      this.userId, 
      this.bookId, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  Data.fromJson(dynamic json) {
    userId = json['user_id'];
    bookId = json['book_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  int? userId;
  int? bookId;
  String? updatedAt;
  String? createdAt;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['book_id'] = bookId;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}