if (A_IsAdmin = false) {
    Run *RunAs "%A_ScriptFullPath%" ,, UseErrorLevel
}
#NoTrayIcon
#SingleInstance force
updurl := "https://github.com/sd-scripts/MinDefence-AHK/blob/master/Ministry%20of%20Defence%20-%20Remastered.exe?raw=true" ; ссылка на сам скрипт
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nНастраиваем систему обновления.
RegRead, put2, HKEY_CURRENT_USER, SoftWare\SAMP, BINDER
sleep, 3000
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nСкачиваем обновленную версию.
URLDownloadToFile, %updurl%, %put2%
SplashTextOn, , 60,Автообновление, Обновление. Ожидайте..`nЗапускаем обновленную версию.
sleep, 1000
Run, % put2
ExitApp