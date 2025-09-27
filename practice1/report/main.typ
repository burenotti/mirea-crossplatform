#import "../../template/template.typ": *

#show: project.with(
  title: "Отчёт по практической работе №1",
  theme: "",
  department: "Математического обеспечения и стандартизации информационных технологий",
  course: "Разработка кроссплатформенных мобильных приложений",
  authors: (
    "Буренин А.А.",
  ),
  lecturer: "Шешуков Л.С.",
  lecturer_grade: "Старший преподаватель кафедры МОСИТ",
  group: "ИКБО-07-22",
  date: datetime.today(),
  add_toc: true,
)

#let img(path) = "practice1/report/imgs/" + path

= Ход работы

== Установка фреймворка Flutter и языка программирования Dart

Для установки флаттер необходимо зайти на сайт #link("https://docs.flutter.dev/get-started/install/macos/mobile-android") и следовать инструкции. Для начала скачаем последнюю актуальную версию фреймворка флаттер. Как видно на #ref(<flutter_site>, supplement: "рисунке") на данный момент это 3.35.3.

#picture(
  caption: "Ссылка на скачивание flutter",
  path: img("flutter_download_site.png"),
) <flutter_site>

После этого нужно распаковать архив и переместить его содержимое в удобную папку. В нашем случае `~/.dev/`. Для этого можно воспользоваться командами представленными на #ref(<install_flutter>, supplement: "листинге").

#listing(
  body: `
  unzip flutter_macos_arm64_3.35.3-stable.zip
  mv flutter ~/.dev/
  `,
  caption: "Команды для распаковки архива в директорию"
) <install_flutter>

Для использования косльной утилиты flutter необходимо добавить в перменную окружения PATH путь ~/.dev/flutter/bin/. Для этого отредактируем файл .zshrc как показано на #ref(<edit_zshrc>, supplement: "рисунке").

#picture(
  path: img("flutter_bin.png"),
  caption: [Добавление flutter в PATH]
) <edit_zshrc>

Проверим, что исполняемые файлы доступны из консоли, используя команду flutter --version, результат выполнения представлен на #ref(<flutter_version>, supplement: "рисунке").

#picture(
  path: img("flutter_version.png"),
  caption: "Результат исполнения команды flutter --version"
) <flutter_version>

Так же для запуска приложения на платформах Web и MacOS, необходимо установить XCode, это можно сделать через AppStore, как показано #ref(<xcode_install>, supplement: "рисунке").

#picture(
  path: img("xcode_install.png"),
  caption: "Установка xcode через appstore"
) <xcode_install>

Как можно видеть на рисунке #ref(<xcode_version>, supplement: "рисунке"), была установлена последняя актуальная версия 16.4.

#picture( 
  path: img("xcode_version.png"),
  caption: "Версия XCode"
) <xcode_version>

== Установка интегрированной среды разработки Android Studio

Далее необходимо установить Android Studio. Для этого я воспользовался инструментом JetBrains Toolbox. Как видно на #ref(<toolbox>, supplement: "рисунке"), была установлена версия 2025.1.3. 

#picture(
  path: img("android_studio_toolbox.png"),
  caption: "Установка Android Studio через JetBrains Toolbox",
  width: 30%,
) <toolbox>

После этого в Android Sudio Setup Wizard, как показано на #ref(<as_params>, supplement: "рисунке") были устсновлены:
- Andriod Emulator
- Android SDK Build-Tools 36
- Android SDK Platform 36
- Android SDK Platform-Tools
- Sources for Android 36
#picture(
  path: img("android_studio_parameters.png"),
  caption: "Параметры установки в Android Sudio Setup Wizard",
  width: 80%
) <as_params>


== Установка браузера Google Chrome

Для запуска на платформе Web, необходимо установить браузер Google Chrome, последнюю стабильную версию которого можно скачать с сайта Google #link("https://www.google.com/chrome/"), страница загрузки представлена на #ref(<download_chrome>, supplement: "рисунке")  

#picture(
  path: img("download_chrome.png"),
  caption: "Страница загрузки браузера Google Chrome",
  width: 70%
) <download_chrome>

После установки проверим версию браузера, в данный момент это 140.0.7339.133, как можно увидеть на #ref(<chrome_version>, supplement: "рисунке")  

#picture(
  path: img("chrome_version.png"),
  caption: "Версия браузера Google Chrome",
  width: 70%
) <chrome_version>

== Установка и настройка требуемых расширений для Android Studio

После запуска Android Studio необходимо плагины Flutter версии 87.1 и Dart версии 251.27623.5, результат установки представлен на #ref(<flutter_plugin>, supplement: "рисунке").

#picture(
  path: img("flutter_plugin.png"),
  caption: "Установка плагинов Flutter и Dart",
  width: 70%
) <flutter_plugin>


== Проверка корректности настройки системы

Для проверки корректности установки системы воспользуемся командой flutter doctor, как это сделано на #ref(<flutter_doctor>, supplement: "рисунке") 

#picture(
  path: img("flutter_doctor.png"),
  caption: "Результат выполнения команды flutter doctor",
  width: 70%
) <flutter_doctor>

== Создание проекта

После настройки всех необходимых компонентов, можно создать проект. Для этого воспользуемся Android Studio и создадим проект на flutter со следующими параметрами (#ref(<new_project>)):
- Название проекта: practice1
- Тип проекта: Application
- Организация: ru.mirea (для java пакета)
- Платформы: Android, MacOS и Web с параметрами


#picture(
  path: img("new_project.png"),
  caption: "Создание flutter проекта в Android Studio",
  width: 70%
) <new_project>


== Запуск приложения на платформах: Android, MacOS и Web.

После создания проекта запустим его на всех платформах, Android (#ref(<run_android>)), Web (#ref(<run_web>)) и MacOS (#ref(<run_macos>)), конфигурации для запуска указаны соответсвенно на #ref(<config_android>, supplement: "рисунке"), #ref(<config_web>, supplement: "рисунке") и #ref(<config_macos>, supplement: "рисунке").


#picture(
  path: img("config_mobile.png"),
  caption: "Конфигурация для запуска на платформе Android",
) <config_android>

#picture(
  path: img("run_android.png"),
  caption: "Запуск тестового приложения на платформе Android",
  width: 40%
) <run_android>

#picture(
  path: img("config_web.png"),
  caption: "Конфигурация для запуска на платформе Web",
) <config_web>

#picture(
  path: img("run_web.png"),
  caption: "Запуск тестового приложения на платформе Web",
  width: 40%
) <run_web>

#picture(
  path: img("config_macos.png"),
  caption: "Конфигурация для запуска на платформе MacOS",
) <config_macos>



#picture(
  path: img("run_macos.png"),
  caption: "Запуск тестового приложения на платформе MacOS",
  width: 60%
) <run_macos>

#pagebreak()

= Вывод

В результате выполнения практической работы №1, была произведена настройка IDE Android Studio для разработки кроссплатформенных приложений на Flutter, а также был создан первый проект и проверен на трех платформах: Web, MacOS, Android.