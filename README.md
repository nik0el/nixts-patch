Патч для Thinstation (дистрибутив Linux, разработанный специально для создания тонких клиентов.)

Заметки:
1. В файле /ts/TS_ENV изменена локаль: export LANG=ru_RU.UTF-8

2. В файле /ts/build/packages/base/etc/profile добавлен русский шрифт для консоли: setfont /lib/kbd/consolefonts/LatArCyrHeb-16.psfu.gz

3. В файле /ts/build/packages/base/etc/dialog.functions изменен текст в меню на русском

4. В пакете messagebox заменен Xdialog (указал использовать локализацию ru) и добавлен русский перевод /ts/build/packages/messagebox/lib/locale/ru/LC_MESSAGES/Xdialog.mo

5. Пакет foo2zjs не проверялся, изменена только директория для прошивок.

6. Пакет locale-ru_RU, тут сам шрифт LatArCyrHeb-16.psfu.gz и файл с указанием локали.

7. В пакете rdesktop, в каталоге /ts/build/packages/rdesktop/lib/rdesktop/keymaps/
заменены следующие файлы: en-us, ru, modifiers, common
в каталоге /ts/build/packages/rdesktop/etc/cmd/ изменены два файла
rdesktop.global и rdesktop.window для простого указания опций в файлах конфигурации пользователей (опции можно посмотреть в файле /ts/build/thinstation.conf.buildtime)

8. В пакете freerdp тоже изменены два файла в /ts/build/packages/freerdp/etc/cmd/
freerdp.global и freerdp.window (опции можно посмотреть в файле /ts/build/thinstation.conf.buildtime). Удалены файлы в /ts/build/packages/freerdp/etc/cmd/freerdp.getpass и /ts/build/packages/freerdp/etc/cmd/freerdp.getuser, это дополнительное окно перед подключением к терминалу.

9. Добавлен пакет 915resolution (прописал поддержку чипсета G41)

10. Поправлена кодировка для флэшек в файле /ts/build/packages/automount/etc/udev/scripts/scsi.sh


Некоторые поправки под вопросом. Например - автоматический поиск конфигов при загрузки с флэшки, это два файла /ts/build/packages/base/bin/pkg и /ts/build/packages/base/etc/init.d/profile_setup
В результате сильно тормозит загрузку.

Добавлены пакеты mc (Файловый менеджер Midnight Commander) и testdisk (свободная программа для восстановления данных, предназначенная прежде всего для восстановления потерянных разделов на носителях информации, а также для восстановления загрузочного сектора, после программных или человеческих ошибок (например, потеря MBR) TestDisk). Но это не для тонкого клиента :-)
