class FileModel {
  FileModel({
    this.id = 0,
    this.fileName = '',
    required this.filePath,
    required this.storage,
    this.fileSize = 0,
    this.isDownload = false,
    this.index = 0,
    this.fileType = '',
    this.createdBy = 0,
    this.fileOrder = 0,
    this.filePage = 0,
  });

  int id;
  String fileName;
  String filePath;
  String storage;
  int fileSize;
  bool isDownload;
  int index;
  String fileType;
  int createdBy;
  int fileOrder;
  int filePage;

  factory FileModel.fromJson(Map<String, dynamic> json) => FileModel(
        id: json.containsKey("id") ? (json["id"] ?? 0) : 0,
        fileName: json.containsKey("fileName") ? (json["fileName"] ?? '') : '',
        filePath: json.containsKey("filePath") ? (json["filePath"] ?? '') : '',
        storage: json.containsKey("storage") ? (json["storage"] ?? '') : '',
        fileSize: json.containsKey("fileSize") ? (json["fileSize"] ?? 0) : 0,
        fileType: json.containsKey("fileType") ? (json["fileType"] ?? '') : '',
        createdBy: json.containsKey("createdBy") ? (json["createdBy"] ?? 0) : 0,
        fileOrder: json.containsKey("fileOrder") ? (json["fileOrder"] ?? 0) : 0,
        filePage: json.containsKey("filePage") ? (json["filePage"] ?? 0) : 0,
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "filePath": filePath,
        "storage": storage,
      };

  Map<String, dynamic> toJson2() => {
        "fileName": fileName,
        "filePath": filePath,
        "storage": storage,
        "id": (id == 0) ? null : id,
        "fileSize": fileSize,
        "fileType": fileType,
        "createdBy": createdBy,
        "fileOrder": fileOrder,
        "filePage": filePage,
      };
}
