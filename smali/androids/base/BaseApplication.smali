.class public Landroids/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field public static VERSION_CODE:I = -0x1

.field public static VERSION_NAME:Ljava/lang/String; = ""

.field public static sContext:Landroid/content/Context;

.field public static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getStringById(I)Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Landroids/base/BaseApplication;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 28
    sput-object p0, Landroids/base/BaseApplication;->sContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, ""

    .line 29
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Landroids/base/BaseApplication;->sToast:Landroid/widget/Toast;

    .line 31
    :try_start_0
    sget-object p0, Landroids/base/BaseApplication;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 32
    sget-object v1, Landroids/base/BaseApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 33
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Landroids/base/BaseApplication;->VERSION_CODE:I

    .line 34
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Landroids/base/BaseApplication;->VERSION_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static showToast(I)V
    .locals 0

    .line 58
    invoke-static {p0}, Landroids/base/BaseApplication;->getStringById(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroids/base/BaseApplication;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Landroids/base/BaseApplication;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v0, Landroids/base/BaseApplication;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget-object p0, Landroids/base/BaseApplication;->sToast:Landroid/widget/Toast;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 54
    sget-object p0, Landroids/base/BaseApplication;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    invoke-static {p0}, Landroids/base/BaseApplication;->init(Landroid/content/Context;)V

    return-void
.end method
