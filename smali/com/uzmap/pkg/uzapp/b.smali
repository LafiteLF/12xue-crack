.class public Lcom/uzmap/pkg/uzapp/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/uzmap/pkg/uzapp/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/uzapp/b;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzapp/b;->a:Lcom/uzmap/pkg/uzapp/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzapp/b;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzapp/b;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzapp/b;->a:Lcom/uzmap/pkg/uzapp/b;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzapp/b;->a:Lcom/uzmap/pkg/uzapp/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "extra_click_download_ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    invoke-static {p1}, Lcom/deepe/c/a/j;->n(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzapp/b;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzapp/b;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzapp/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p1}, Lcom/deepe/c/a/j;->n(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v0

    const-string v1, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "UZMAP.DOWNLOAD.COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "id"

    invoke-virtual {p2, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "mimeType"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-static {p1}, Lcom/deepe/f/a/d;->b(Landroid/content/Context;)Landroid/net/Uri;

    const-string v0, "intent.extra.alarm_raw"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, p2, v1, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p2, Lcom/deepe/f/a/b;->a:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepe/f/a/b;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/deepe/f/a/e;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    iget v2, p2, Lcom/deepe/f/a/b;->b:I

    invoke-static {p1, v2}, Lcom/deepe/f/a/e;->b(Landroid/content/Context;I)V

    iget-object v2, p2, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    invoke-virtual {v2}, Lcom/deepe/f/a/b$a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p2, Lcom/deepe/f/a/b;->b:I

    invoke-static {p1, v2, v1}, Lcom/deepe/f/a/e;->a(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/deepe/f/a/e;->a(Landroid/content/Context;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/deepe/f/a/b;->g:J

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    return-void

    :cond_3
    sget-object v2, Lcom/deepe/b;->ad:Ljava/lang/String;

    const-string v3, "{}"

    iget-object p2, p2, Lcom/deepe/f/a/b;->i:Ljava/lang/String;

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "title"

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "content"

    sget-object v6, Lcom/deepe/b;->ad:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "extra"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "openApp"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "soundUri"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object p2, v0

    :catch_1
    :goto_2
    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    new-instance v4, Lcom/uzmap/pkg/b/a/g$a;

    invoke-direct {v4}, Lcom/uzmap/pkg/b/a/g$a;-><init>()V

    iput-object v0, v4, Lcom/uzmap/pkg/b/a/g$a;->a:Ljava/lang/String;

    iput-object v2, v4, Lcom/uzmap/pkg/b/a/g$a;->b:Ljava/lang/String;

    iput-object v3, v4, Lcom/uzmap/pkg/b/a/g$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/uzmap/pkg/b/a/g$a;->e:Z

    iput-boolean v1, v4, Lcom/uzmap/pkg/b/a/g$a;->f:Z

    invoke-virtual {v4, p2}, Lcom/uzmap/pkg/b/a/g$a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/g;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/b/a/g;->a(Lcom/uzmap/pkg/b/a/g$a;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzapp/b;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzapp/b;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.appclock.notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzapp/b;->d(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
