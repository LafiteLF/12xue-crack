.class public Lcom/uzmap/pkg/uzcore/i/b/h;
.super Lcom/uzmap/pkg/uzcore/i/b/g;


# instance fields
.field private g:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/webkit/WebChromeClient$FileChooserParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/b/g;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->b:Landroid/net/Uri;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->b:Landroid/net/Uri;

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->b:Landroid/net/Uri;

    invoke-static {p2, v0, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "captured_media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Folder cannot be created."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->c:Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

    const/16 v2, 0x4e8b

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "\u6587\u4ef6\u4e0a\u4f20\u529f\u80fd\u5df2\u505c\u7528"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

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
    move-object v2, v0

    :goto_1
    if-nez v2, :cond_3

    if-nez p2, :cond_3

    if-ne p1, v1, :cond_3

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->b:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->b:Landroid/net/Uri;

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/net/Uri;

    aput-object v2, v0, v3

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_7

    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    goto :goto_2

    :cond_5
    move p2, v3

    :goto_2
    if-lez p2, :cond_7

    new-array v1, p2, [Landroid/net/Uri;

    :goto_3
    if-lt v3, p2, :cond_6

    move-object v0, v1

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object v0
.end method

.method private c(Z)[Landroid/content/Intent;
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->h:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "*/*"

    :goto_0
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ".jpg"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    new-array v0, v4, [Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_1

    :cond_1
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v0, v4, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Z)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_1

    :cond_2
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v4, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->b(Z)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Z)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->b(Z)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, v0, v1

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->d:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->g:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/b/h;->b(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->g:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->g:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v1

    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->g:Landroid/webkit/ValueCallback;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/h;->h:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/i/b/h;->c(Z)[Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    array-length v1, p1

    if-ne v1, v4, :cond_3

    aget-object p1, p1, v3

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CHOOSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v0, :cond_4

    const-string p1, "android.intent.extra.TITLE"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method
