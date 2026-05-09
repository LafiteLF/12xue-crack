.class public Lcom/uzmap/pkg/b/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/a/g$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field static final c:[J

.field private static e:Lcom/uzmap/pkg/b/a/g;


# instance fields
.field private d:Landroid/os/Vibrator;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uzmap/pkg/b/a/g;->c:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0x1f4
        0x64
        0x1f4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/deepe/c/a/j;->c(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Z)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const-string v1, "last_notifyId"

    const v2, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/a;->b(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    const-string p1, "last_notifyId"

    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/a;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;ZIZ)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    const-class v2, Lcom/uzmap/pkg/EntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    if-eqz p4, :cond_0

    sget p4, Lcom/uzmap/pkg/b/a/g;->b:I

    goto :goto_0

    :cond_0
    sget p4, Lcom/uzmap/pkg/b/a/g;->a:I

    :goto_0
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "value"

    invoke-virtual {v1, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "api_arguments"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const/high16 p1, 0x8000000

    goto :goto_1

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1f

    if-lt p2, p4, :cond_3

    const/high16 p2, 0x4000000

    or-int/2addr p1, p2

    :cond_3
    iget-object p2, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {p2, p3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/g;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/a/g;->e:Lcom/uzmap/pkg/b/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/a/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/b/a/g;->e:Lcom/uzmap/pkg/b/a/g;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/a/g;->e:Lcom/uzmap/pkg/b/a/g;

    return-object p0
.end method

.method private a(Ljava/lang/String;Z[J)Ljava/lang/String;
    .locals 5

    const-string v0, "default"

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u65b0\u6d88\u606f\u901a\u77e5"

    const-string v2, "app_no_channel_1"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "\u5e94\u7528\u6d88\u606f\u901a\u77e5"

    const-string v2, "app_no_channel_2"

    :goto_1
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "\u5e94\u7528\u6536\u5230\u65b0\u6d88\u606f\u65f6\u4f7f\u7528\u7684\u901a\u77e5\u7c7b\u522b"

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "file://"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v3, p1, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const p2, -0xffff01

    invoke-virtual {v3, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_4
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    if-eqz p3, :cond_5

    invoke-virtual {v3, p3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/uzmap/pkg/b/a/g;->c:[J

    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :goto_3
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v2
.end method

.method private a()V
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/g;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a(Landroid/net/Uri;)V

    sget-object v0, Lcom/uzmap/pkg/b/a/g;->c:[J

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a([J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uzmap/pkg/b/a/g;->c:[J

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a([J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a([J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->d:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->p(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/g;->d:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->d:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->d:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_2
    return-void
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/a/d/g;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    const-class v2, Lcom/uzmap/pkg/EntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "api_arguments"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private b(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)V
    .locals 2

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a(Landroid/net/Uri;)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a([J)V

    :cond_2
    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->d:Z

    return-void
.end method

.method private c(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I
    .locals 7

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->d:Z

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    invoke-direct {p0, v0, v1, v2}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;Z[J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/deepe/b;->ad:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    if-nez v0, :cond_3

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_3
    invoke-direct {v4, v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    const-string v5, "file://"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_5
    move v0, v2

    :goto_4
    iget-boolean v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->d:Z

    if-eqz v3, :cond_6

    or-int/lit8 v0, v0, 0x4

    :cond_6
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/uzmap/pkg/b/a/g;->c:[J

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_8
    :goto_5
    invoke-static {}, Lcom/uzmap/pkg/b/c/g;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->g()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/b/a/g;->a(Z)I

    move-result v2

    goto :goto_6

    :cond_9
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/b/a/g;->a(Z)I

    move-result v2

    :goto_6
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;ZIZ)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return v2
.end method

.method private c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I
    .locals 13

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->e:Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    const-string v4, "time"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x0

    const-string v7, "hour"

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "minutes"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    cmp-long v2, v2, v5

    const/4 v9, -0x1

    if-nez v2, :cond_2

    if-ltz v7, :cond_1

    const/16 v2, 0x17

    if-le v7, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v8, :cond_1

    const/16 v2, 0x3b

    if-le v8, v2, :cond_2

    :cond_1
    :goto_0
    return v9

    :cond_2
    const-string v2, "daysOfWeek"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    new-array v10, v3, [I

    move v11, v4

    :goto_2
    if-lt v11, v3, :cond_7

    const-string v2, "openApp"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    const/4 v4, 0x0

    iget-object v11, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :try_start_0
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v4, :cond_6

    const-string p1, "soundUri"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    move v2, v7

    move v3, v8

    move-object v4, v10

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/deepe/f/a/e;->a(Landroid/content/Context;II[IJLjava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v9

    :cond_7
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/b/a/g$a;)I
    .locals 9

    iget-boolean v0, p1, Lcom/uzmap/pkg/b/a/g$a;->f:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/uzmap/pkg/b/a/g$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/g;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/g;->c()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g$a;->a(Lcom/uzmap/pkg/b/a/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3, v2}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;Z[J)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-boolean v0, p1, Lcom/uzmap/pkg/b/a/g$a;->d:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/g;->a(Z)I

    move-result v0

    invoke-static {}, Lcom/uzmap/pkg/b/c/g;->c()I

    move-result v4

    iget-object v5, p1, Lcom/uzmap/pkg/b/a/g$a;->c:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/uzmap/pkg/b/a/g$a;->d:Z

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v0, v7}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;ZIZ)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    if-nez v2, :cond_2

    invoke-direct {v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-direct {v6, v8, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v5, p1, Lcom/uzmap/pkg/b/a/g$a;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v4, p1, Lcom/uzmap/pkg/b/a/g$a;->a:Ljava/lang/String;

    :cond_3
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v4, p1, Lcom/uzmap/pkg/b/a/g$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/g$a;->a()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/uzmap/pkg/b/a/g$a;->h:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lcom/uzmap/pkg/b/a/g$a;->e:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v1, p1, Lcom/uzmap/pkg/b/a/g$a;->e:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    iget-boolean v1, p1, Lcom/uzmap/pkg/b/a/g$a;->h:Z

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v7

    :goto_1
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g$a;->a(Lcom/uzmap/pkg/b/a/g$a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g$a;->a(Lcom/uzmap/pkg/b/a/g$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/g;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_7
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return v0
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/g;->d(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->empty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/g;->a()V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/g;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/g;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const v1, 0x3fffffff    # 1.9999999f

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/deepe/f/a/e;->a(Landroid/content/Context;I)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/g;->f:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void
.end method
