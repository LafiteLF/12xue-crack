.class Lcom/uzmap/pkg/uzcore/i/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/b/a$a;,
        Lcom/uzmap/pkg/uzcore/i/b/a$b;,
        Lcom/uzmap/pkg/uzcore/i/b/a$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/i/b/a$a;)Landroid/webkit/DownloadListener;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/a$c;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/a$c;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/i/b/a$a;)V

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/i/b/a;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1, p3, p4}, Lcom/deepe/c/i/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/deepe/c/f/c;->d(Landroid/content/Context;)Z

    move-result v1

    const/4 v6, 0x0

    const v7, 0x1080027

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b58\u50a8\u6743\u9650\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u4e3a\u672c\u5e94\u7528\u5f00\u542f\u5b58\u50a8\u6743\u9650"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/a/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v8, "mounted"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v0, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SD \u5361\u6b63\u5fd9\u3002\u8981\u5141\u8bb8\u4e0b\u8f7d\uff0c\u8bf7\u5728\u901a\u77e5\u4e2d\u89e6\u6478\u201c\u5173\u95ed USB \u5b58\u50a8\u8bbe\u5907\u201d\u3002"

    const-string v1, "SD \u5361\u4e0d\u53ef\u7528"

    goto :goto_0

    :cond_1
    const-string v0, "\u9700\u8981\u6709 SD \u5361\u624d\u80fd\u4e0b\u8f7d"

    const-string v1, "\u65e0 SD \u5361"

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    new-instance v6, Landroid/app/DownloadManager$Request;

    invoke-direct {v6, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v7, 0x1

    invoke-static {p0, v6, v5, v7}, Lcom/uzmap/pkg/uzcore/i/b/a;->b(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    return-void

    :cond_3
    invoke-virtual {v6}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v1, "cookie"

    invoke-virtual {v6, v1, v8}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :cond_4
    if-eqz p5, :cond_5

    const-string v1, "Referer"

    invoke-virtual {v6, v1, p5}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :cond_5
    const-string v1, "User-Agent"

    invoke-virtual {v6, v1, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    if-nez p4, :cond_7

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    new-instance v7, Lcom/uzmap/pkg/uzcore/i/b/a$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/i/b/a$b;-><init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/i/b/a$b;->start()V

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/deepe/c/a/j;->n(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v3

    new-instance v7, Lcom/uzmap/pkg/uzcore/i/b/a$1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-WebResDownload-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v7

    move-object v2, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/i/b/a$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/i/b/a$1;->start()V

    :goto_1
    return-void

    :catch_0
    const-string v0, "\u53ea\u80fd\u4ece\u201chttp\u201d\u6216\u201chttps\u201d\u7f51\u5740\u4e0b\u8f7d\u3002"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b/a;->b(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/b/a;->b(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const-string v5, "attachment"

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p3, :cond_0

    :try_start_0
    sget-object p3, Lcom/deepe/c/a/k;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, p3, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepe/c/a/k;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ACDownloadHandler"

    const-string p2, "Exception trying to create Download dir:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "SD \u5361\u6b63\u5fd9\u3002\u8981\u5141\u8bb8\u4e0b\u8f7d\uff0c\u8bf7\u5728\u901a\u77e5\u4e2d\u89e6\u6478\u201c\u5173\u95ed USB \u5b58\u50a8\u8bbe\u5907\u201d\u3002"

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    new-instance p2, Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;

    invoke-direct {p2}, Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;-><init>()V

    iput-wide v0, p2, Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;->a:J

    iput-object p1, p2, Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;->b:Landroid/app/DownloadManager;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;->c:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/uzmap/pkg/uzapp/UPExtraBridge;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
