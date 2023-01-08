class GroupModel {
  GroupModel({
    required this.status,
    required this.error,
    this.data,
  });

  int status;
  String error;
  Data? data;

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
        status: json["status"],
        error: json["error"],
        data: json.containsKey("data") ? Data.fromJson(json["data"]) : null,
      );
}

class Data {
  Data({
    required this.totalElements,
    required this.totalPages,
    required this.page,
    required this.pageSize,
    required this.data,
  });

  int totalElements;
  int totalPages;
  int page;
  int pageSize;
  List<Group> data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalElements: json["totalElements"],
        totalPages: json["totalPages"],
        page: json["page"],
        pageSize: json["pageSize"],
        data: (json["data"] == null)
            ? []
            : List<Group>.from(json["data"].map((x) => Group.fromJson(x))),
      );
}

class Group {
  Group({
    this.id = 0,
    this.groupName = '',
    this.groupCode = '',
    this.orderNo = 0,
    this.groupPath = '',
    this.groupType = '',
    this.parentGroupName = '',
    this.parentGroupId = 0,
    this.parentPathName = '',
    this.groupLevel = 0,
    this.isEmpty = false,
  });

  int id;
  String groupName;
  String groupCode;
  int orderNo;
  String groupPath;
  String groupType;
  String parentGroupName;
  int parentGroupId;
  String parentPathName;
  int groupLevel;
  bool isEmpty;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
    id: json["groupId"] ?? 0,
        groupName: json["groupName"] ?? '',
        groupCode: json["groupCode"] ?? '',
        orderNo: json["orderNo"] ?? 0,
        groupPath: json["groupPath"] ?? '',
        groupType: json["groupType"] ?? '',
        parentGroupName: json["parentGroupName"] ?? '',
        parentGroupId: json["parentGroupId"] ?? 0,
        parentPathName: json["parentPathName"] ?? '',
        groupLevel: json["groupLevel"] ?? 0,
      );
}
