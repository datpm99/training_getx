class AppConfigs {
  static const String appVersion = '1.0.0';
  static const String appName = 'MDO';

  //Type login.
  static const String externalGroup = 'EXTERNAL_GROUP';
  static const String externalPersonal = 'EXTERNAL_PERSONAL';
  static const String internal = 'INTERNAL';
  static const String external = 'EXTERNAL';
  static const String codeExternal = '2';

  //Code support.
  static const String codePhone = 'CSKH_PHONE';
  static const String codeEmail = 'CSKH_EMAIL';

  //Config base.
  static const double logoSize = 40;
  static const int pageSize = 20;
  static const int dayLimit = 90;
  static const int fileSize = 15000000; // 15MB.

  //Max length.
  static const int maxLength5 = 5;
  static const int maxLength8 = 8;
  static const int maxLength10 = 10;
  static const int maxLength15 = 15;
  static const int maxLength50 = 50;
  static const int maxLength100 = 100;
  static const int maxLength199 = 199;
  static const int maxLength200 = 200;
  static const int maxLength255 = 255;
  static const int maxLength500 = 500;
  static const int maxLength1000 = 1000;

  //Type file.
  static const String pdf = 'pdf';
  static const String doc = 'doc';
  static const String docx = 'docx';
  static const String xlsx = 'xlsx';
  static const String xls = 'xls';
  static const String png = 'png';
  static const String jpg = 'jpg';
  static const String msg = 'msg';
  static const String txt = 'txt';
  static const String zip = 'zip';
  static const String rar = 'rar';
  static const String fileMain = 'FILE_MAIN';
  static const String fileAttach = 'FILE_ATTACH';

  //Document state.
  static const String inProgress = 'IN_PROGRESS';
  static const String reject = 'REJECT';
  static const String complete = 'COMPLETE';
  static const String draft = 'DRAFT';
  static const String cancel = 'CANCEL';
  static const String processed = 'PROCESSED';
  static const String rejected = 'REJECTED';
  static const String unprocessed = 'UNPROCESSED';
  static const String promulgate = 'PROMULGATE';
  static const String promulgateCancel = 'PROMULGATE_CANCEL';
  static const String expire = 'EDOCUMENT_EXPIRE';
  static const String receive = 'EDOCUMENT_RECEIVE';
  static const String create = 'EDOCUMENT_CREATE';
  static const String transfer = 'TRANSFER';
  static const String changePromulgateGroup = 'CHANGE_PROMULGATE_GROUP';

  //Action.
  static const String addReviewer = 'ADD_REVIEWER';
  static const String addFlashesSigner = 'ADD_FLASHES_SIGNER';
  static const String addFlashes = 'ADD_FLASHES';

  static const String changeMainSigner = 'CHANGE_MAIN_SIGNER';
  static const String changeFlashesSigner = 'CHANGE_FLASHES_SIGNER';
  static const String changeReviewer = 'CHANGE_REVIEWER';
  static const String changeMain = 'CHANGE_MAIN';
  static const String changeReview = 'CHANGE_REVIEW';

  static const String approveMainSign = 'APPROVE_MAIN_SIGN';
  static const String approveFlashesSign = 'APPROVE_FLASHES_SIGN';
  static const String approveReview = 'APPROVE_REVIEW';

  //Type sign.
  static const String reviewer = 'REVIEWER';
  static const String main = 'MAIN';
  static const String flashes = 'FLASHES';
  static const String all = 'ALL';
  static const String sign = 'SIGN';

  //Role User.
  static const String roleNV = 'NV';
  static const String roleLD = 'LD';
  static const String roleGD = 'GD';
  static const String roleVT = 'VT';
  static const String roleAdminTicket = 'TICKET';
  static const String roleAdmin = 'ROLE_ADMIN';
  static const String roleMeetingManage = 'MEETING_MANAGE';

  //Role type.
  static const String roleTypeMain = 'MAIN';

  //Type notification app.
  static const String notification = "NOTIFICATION";
  static const String warning = "WARNING";

  //Type update version app.
  static const String updateRequired = "REQUIRED";
  static const String updateNone = "NONE";
  static const String domainGlobalNotify = "bssd.mdo.com.vn";

  //Modules code.
  static const String moduleEContract = "econtract";
  static const String moduleESignature = "esignature";
  static const String moduleEDocument = "edocument";
  static const String moduleTicket = "task";
  static const String moduleTask = "ticket";
  static const String moduleBookingCar = "booking-car";
  static const String moduleCalendar = "calendar";
  static const String meetingSchedule = 'meetingSchedule'; //Lich hop.
}
