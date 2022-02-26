class MainStrings {
  MainStrings._();

  static const rootRoute = "/";
  static const unknownRoute = "/unknown";

  static const Map<String , String > _english={
  "farsi": "Farsi",
  "english": "English",
  "dark_theme": "Dark Theme",
  "light_theme": "Light Theme",
  "change_language" : "Change App Language",
  "change_theme" : "Change App Theme",
  "head_title": "Hello, world.",
  "unknown_route": "Page Not Found.",
  "exit_from_app": "Exit From App",
  "settings": "Settings",
  "app_title": "Flutter CRUD Test"
  };
  static const Map<String , String > _farsi={
    "farsi": "فارسی",
    "english": "انگلیسی",
    "dark_theme": "تم شب",
    "light_theme": "تم روز",
    "change_language" : "تغییر زبان برنامه",
    "change_theme" : "تغییر تم برنامه",
    "head_title": "سلام دنیا.",
    "unknown_route": "صفحه پیدا نشد",
    "exit_from_app": "خروج از برنامه",
    "settings": "تنظیمات",
    "app_title": "آزمایش CRUD فلاتر"
  };

  static Map<String, String> get en => _english;
  static Map<String, String> get fa => _farsi;
}
