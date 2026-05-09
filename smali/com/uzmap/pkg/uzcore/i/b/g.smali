.class public Lcom/uzmap/pkg/uzcore/i/b/g;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/net/Uri;

.field protected c:Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

.field protected d:Z

.field protected e:Z

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private varargs a([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    const-string v1, "\u9009\u62e9\u8981\u4e0a\u4f20\u7684\u6587\u4ef6"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x4e8b

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->e:Z

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->b()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p1, "\u6587\u4ef6\u4e0a\u4f20\u529f\u80fd\u5df2\u505c\u7528"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/Intent;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->c()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Z)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/i/b/g;->b(Z)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method private c()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->a()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->b:Landroid/net/Uri;

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected a(Z)Landroid/content/Intent;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected a()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/deepe/c/a/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/a/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "browser-photos"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->e:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->e:Z

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    if-nez p2, :cond_4

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->b:Landroid/net/Uri;

    if-eqz p1, :cond_4

    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->f:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    move-object v2, p1

    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->a:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->d:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->e:Z

    return-void
.end method

.method protected b(Z)Landroid/content/Intent;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->a:Landroid/webkit/ValueCallback;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object v0, p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "filesystem"

    if-lez v1, :cond_1

    move-object v1, p3

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    array-length p3, p1

    move v3, p2

    :goto_1
    if-lt v3, p3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v4, p1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v4, p2

    const-string v6, "capture"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v1, v4, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/g;->b:Landroid/net/Uri;

    const-string p1, "image/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v3, "android.intent.extra.INTENT"

    if-eqz p3, :cond_6

    const-string p3, "camera"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->c()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_5
    new-array p3, v2, [Landroid/content/Intent;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->c()Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p3, p2

    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzcore/i/b/g;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_6
    const-string p1, "video/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "camcorder"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_7
    new-array p3, v2, [Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Z)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p3, p2

    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzcore/i/b/g;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_8
    const-string p1, "audio/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "microphone"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->b(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_9
    new-array p3, v2, [Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->b(Z)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p3, p2

    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzcore/i/b/g;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/g;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(Landroid/content/Intent;)V

    return-void
.end method
