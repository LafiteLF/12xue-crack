.class public Lcom/deepe/c/a/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    const-string v0, "input_method"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .locals 1

    const-string v0, "appops"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "notification"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .locals 1

    const-string v0, "clipboard"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    const-string v0, "camera"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    const-string v0, "alarm"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "audio"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Landroid/app/UiModeManager;
    .locals 1

    const-string v0, "uimode"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    const-string v0, "wifi"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    const-string v0, "power"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1

    const-string v0, "download"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    const-string v0, "location"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    const-string v0, "vibrator"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1

    const-string v0, "sensor"

    invoke-static {p0, v0}, Lcom/deepe/c/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method
