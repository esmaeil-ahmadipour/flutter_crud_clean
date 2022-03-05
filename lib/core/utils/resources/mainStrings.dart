class MainStrings {
  MainStrings._();

  // WebApi : using api from www.abstractapi.com , for check Bank-Account and Mobile-Number
  static const phoneValidationBaseUrl="https://phonevalidation.abstractapi.com/v1";
  static const ibanValidationBaseUrl="https://openiban.com/validate";
  static const ibanValidationApiKey="";
  static const phoneValidationApiKey="98996a7b707141f29370b789ecf9cab7";

// Database
  static const String customersTableName = 'customers_table';
  static const String databaseName = 'app_database.db';

  // App Title Name
  static const String appTitleName = 'Flutter CRUD Test';

  // Routes
  static const rootRoute = "/";
  static const unknownRoute = "/unknown";
  static const addNewCustomerRoute = "/addNewCustomer";
  static const customerDetailsRoute = "/customerDetails";

  // Localizations
  static const Map<String, String> _english = {
    "farsi": "Farsi",
    "english": "English",
    "dark_theme": "Dark Theme",
    "light_theme": "Light Theme",
    "change_language": "Change App Language",
    "change_theme": "Change App Theme",
    "head_title": "Hello, world.",
    "unknown_route": "Page Not Found.",
    "exit_from_app": "Exit From App",
    "settings": "Settings",
    "welcome": "Welcome .\n\nAdd New Customer By + Button.",
    "add_new_customer": "Add New Customer",
    "empty_validation":"This field should not be empty.",
    "account_number_limit": "This field must be 8 to 17 digits.",
    "incorrect_validation" : "The data in this field is incorrect.",
    "select_date_of_birth" : "Please Select Date Of Birth.",
    "select_country_code" : "Please Select Country Code.",
    "email_address" : "Email Address",
    "bank_account_number" : "Bank Account Number",
    "mobile_number" : "Mobile Number",
    "last_name" : "Last Name",
    "first_name" : "First Name",
    "submit_button" : "Submit",
    "add_new_customer_title": "Add a new customer",
    "app_title": "Flutter CRUD Test"
  };
  static const Map<String, String> _farsi = {
    "farsi": "فارسی",
    "english": "انگلیسی",
    "dark_theme": "تم شب",
    "light_theme": "تم روز",
    "change_language": "تغییر زبان برنامه",
    "change_theme": "تغییر تم برنامه",
    "head_title": "سلام دنیا.",
    "unknown_route": "صفحه پیدا نشد",
    "exit_from_app": "خروج از برنامه",
    "settings": "تنظیمات",
    "welcome": "خوش آمدید .\n\nمشتری جدید را بوسیله دکمه + اضافه کنید .",
    "add_new_customer": "افزودن مشتری جدید",
    "empty_validation": "این قسمت نباید خالی باشد.",
    "incorrect_validation" : "اطلاعات این بخش نادرست است.",
    "account_number_limit": "این قسمت باید 8 الی 17 رقم باشد.",
    "email_address" : "آدرس ایمیل",
    "bank_account_number" : "شماره حساب بانکی",
    "select_date_of_birth" : "لطفا تاریخ تولد مشخص شود.",
    "select_country_code" : "لطفا کد کشور مشخص شود.",
    "mobile_number" : "شماره موبایل",
    "last_name" : "نام خانوادگی",
    "first_name" : "نام",
    "submit_button" : "ثبت",
    "add_new_customer_title": "افزودن مشتری جدید",
    "app_title": "آزمایش CRUD فلاتر"
  };

  static Map<String, String> get en => _english;

  static Map<String, String> get fa => _farsi;
}
