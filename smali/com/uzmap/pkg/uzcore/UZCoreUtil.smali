.class public Lcom/uzmap/pkg/uzcore/UZCoreUtil;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field static e:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "a"

    const-string v27, "b"

    const-string v28, "c"

    const-string v29, "d"

    const-string v30, "e"

    const-string v31, "f"

    const-string v32, "g"

    const-string v33, "h"

    const-string v34, "i"

    const-string v35, "j"

    const-string v36, "k"

    const-string v37, "l"

    const-string v38, "m"

    const-string v39, "n"

    const-string v40, "o"

    const-string v41, "p"

    const-string v42, "q"

    const-string v43, "r"

    const-string v44, "s"

    const-string v45, "t"

    const-string v46, "u"

    const-string v47, "v"

    const-string v48, "w"

    const-string v49, "x"

    const-string v50, "y"

    const-string v51, "z"

    const-string v52, "0"

    const-string v53, "1"

    const-string v54, "2"

    const-string v55, "3"

    const-string v56, "4"

    const-string v57, "5"

    const-string v58, "6"

    const-string v59, "7"

    const-string v60, "8"

    const-string v61, "9"

    filled-new-array/range {v0 .. v61}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final SIMCardReady()Z
    .locals 3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->checkPermission()Z

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/j;->j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static activityToStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "global"

    :goto_0
    return-object p0
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u63d0\u793a\u6d88\u606f"

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/uzmap/pkg/uzcore/UZCoreUtil$1;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil$1;-><init>()V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static appExist(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static appExist(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public static assetExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/i/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkPermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static checkPermission(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final clearCookie()V
    .locals 1

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/k/d;->d()V

    return-void
.end method

.method public static computeDirOrFileSize(Ljava/io/File;)J
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final createShortCuts(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uzmap/pkg/b/c/g;->c()I

    move-result v1

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/io/File;)V

    return-void
.end method

.method public static delete(Ljava/io/File;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/c/i/h;->a(Ljava/io/File;J)V

    return-void
.end method

.method public static deviceBeRoot()Z
    .locals 1

    invoke-static {}, Lcom/deepe/f/c;->a()Z

    move-result v0

    return v0
.end method

.method public static dipToPix(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result p0

    return p0
.end method

.method public static execRootCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "result : "

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su "

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "exit\n"

    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    return-object v0

    :cond_0
    const-string v5, "result"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static execRootCmdSilent(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/deepe/f/c;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/al;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/al;

    move-result-object v0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->k()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->assetExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->fileExists(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->fileExists(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->fileExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/h;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/deepe/c/i/f;->b(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static formatNumber(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->e:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->e:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->e:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "0.00"

    :cond_1
    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatToDate(J)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/deepe/c/i/f;->c(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "app_name"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersionCode()I
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->h()I

    move-result v0

    return v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace()J
    .locals 2

    invoke-static {}, Lcom/deepe/a/f/a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getConnectedType()I
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->checkPermission()Z

    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/f/a;->b()I

    move-result v0

    return v0
.end method

.method public static getConnectedTypeString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->checkPermission()Z

    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectedTypeString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/f/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/k/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/w;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExternaStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/g/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->e()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileOperatorName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/f/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/f/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTotalSpace()J
    .locals 2

    invoke-static {}, Lcom/deepe/a/f/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUiMode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/d;->b()Lcom/deepe/c/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUzVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "uz_version"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getMetaStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static guessFileNameBuyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hexString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    return-void
.end method

.method public static installApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmptyIntent(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/a/e;->a(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isExtendScheme(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/w;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHtmlColor(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/e;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/p;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isRootSystem()Z
    .locals 1

    invoke-static {}, Lcom/deepe/f/c;->b()Z

    move-result v0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static makeFileNameWidthMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->random(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static networkEnable()Z
    .locals 1

    invoke-static {}, Lcom/deepe/f/a;->e()Z

    move-result v0

    return v0
.end method

.method public static parseAppParam(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/w;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final parseCssColor(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final parseCssPixel(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result p0

    return p0
.end method

.method public static final parseCssTime(Ljava/lang/String;)D
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final parseDateToMills(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/f;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p0, p0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseToJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    :cond_0
    return-object v0
.end method

.method public static pixToDip(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result p0

    return p0
.end method

.method public static random()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static random(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/q;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final randomChar(I)Ljava/lang/String;
    .locals 6

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->d:[Ljava/lang/String;

    array-length v0, v0

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    if-lt v2, p0, :cond_2

    return-object v3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->d:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static readByte(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->readByte(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static readByte(Ljava/io/InputStream;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/deepe/c/i/h;->a(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/i/h;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showSoftInput(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepe/c/a/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public static toMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transcoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uninstallApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/a/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static wifiEnable()Z
    .locals 1

    invoke-static {}, Lcom/deepe/f/a;->f()Z

    move-result v0

    return v0
.end method

.method public static writeString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/deepe/c/i/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
