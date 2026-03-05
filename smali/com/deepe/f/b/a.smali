.class public Lcom/deepe/f/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/f/b/a$a;,
        Lcom/deepe/f/b/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;

.field private c:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/f/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "sms_body"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(ILandroid/content/Intent;Lcom/deepe/f/b/a$a;)V
    .locals 3

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p1, "unkonwn error"

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-string p1, "no serice"

    goto :goto_0

    :cond_2
    const-string p1, "null pdu"

    goto :goto_0

    :cond_3
    const-string p1, "radio off"

    goto :goto_0

    :cond_4
    const-string p1, "generic failure"

    goto :goto_0

    :cond_5
    const-string p1, "success"

    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "APICLOUD.SMS.SEND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/deepe/f/b/a$b;

    invoke-direct {v0, p0}, Lcom/deepe/f/b/a$b;-><init>(Lcom/deepe/f/b/a;)V

    iput-boolean v1, v0, Lcom/deepe/f/b/a$b;->a:Z

    iput-object p1, v0, Lcom/deepe/f/b/a$b;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/deepe/f/b/a$a;->a(Lcom/deepe/f/b/a$b;)V

    :cond_6
    const-string p1, "APICLOUD.SMS.DELIVERED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/deepe/f/b/a;ILandroid/content/Intent;Lcom/deepe/f/b/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/f/b/a;->a(ILandroid/content/Intent;Lcom/deepe/f/b/a$a;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/j;->j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/f/b/a;->c:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/f/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/f/b/a;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/f/b/a;->c:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;Ljava/lang/String;Lcom/deepe/f/b/a$a;)Lcom/deepe/f/b/a$b;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/deepe/f/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/f/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "SIM card do not work"

    move v5, v4

    goto :goto_0

    :cond_0
    const-string v0, ""

    move v5, v3

    :goto_0
    const-string v6, "YW5kcm9pZC50ZWxlcGhvbnkuU21zTWFuYWdlcg=="

    invoke-static {v6}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v6}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v8, "getDefault"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v6, v7

    :catch_1
    move-object v8, v7

    :goto_1
    if-nez v8, :cond_1

    const-string v0, "can not get device smsManager"

    move v5, v4

    :cond_1
    new-instance v9, Lcom/deepe/f/b/a$b;

    invoke-direct {v9, v1}, Lcom/deepe/f/b/a$b;-><init>(Lcom/deepe/f/b/a;)V

    if-nez v5, :cond_2

    iput-boolean v5, v9, Lcom/deepe/f/b/a$b;->a:Z

    iput-object v0, v9, Lcom/deepe/f/b/a$b;->b:Ljava/lang/String;

    return-object v9

    :cond_2
    iget-object v0, v1, Lcom/deepe/f/b/a;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/deepe/f/b/a$1;

    move-object/from16 v5, p3

    invoke-direct {v0, v1, v5}, Lcom/deepe/f/b/a$1;-><init>(Lcom/deepe/f/b/a;Lcom/deepe/f/b/a$a;)V

    iput-object v0, v1, Lcom/deepe/f/b/a;->a:Landroid/content/BroadcastReceiver;

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "APICLOUD.SMS.SEND"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "APICLOUD.SMS.DELIVERED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/deepe/f/b/a;->b:Landroid/content/Context;

    iget-object v11, v1, Lcom/deepe/f/b/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v12, 0x4000000

    const/high16 v13, 0x8000000

    const/16 v14, 0x17

    if-lt v11, v14, :cond_4

    invoke-static {v10, v4, v0, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {v10, v4, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    move-object v11, v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_5

    invoke-static {v10, v4, v0, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v10, v4, v0, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_3
    move-object v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    const-string v9, "ZGl2aWRlTWVzc2FnZQ=="

    invoke-static {v9}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v4

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p2, v10, v4

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-object v9, v0

    :goto_4
    array-length v10, v2

    move v0, v4

    move v12, v0

    :goto_5
    if-lt v12, v10, :cond_7

    if-eqz v0, :cond_6

    new-instance v0, Lcom/deepe/f/b/a$b;

    invoke-direct {v0, v1}, Lcom/deepe/f/b/a$b;-><init>(Lcom/deepe/f/b/a;)V

    iput-boolean v4, v0, Lcom/deepe/f/b/a$b;->a:Z

    const-string v2, "exception"

    iput-object v2, v0, Lcom/deepe/f/b/a$b;->b:Ljava/lang/String;

    return-object v0

    :cond_6
    return-object v7

    :cond_7
    aget-object v13, v2, v12

    invoke-static {v13}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    :try_start_3
    const-string v14, "c2VuZFRleHRNZXNzYWdl"

    invoke-static {v14}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v15, 0x5

    :try_start_4
    new-array v7, v15, [Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    aput-object v17, v7, v4

    const-class v17, Ljava/lang/String;

    aput-object v17, v7, v3

    const-class v17, Ljava/lang/String;

    const/16 v18, 0x2

    aput-object v17, v7, v18

    const-class v17, Landroid/app/PendingIntent;

    const/16 v19, 0x3

    aput-object v17, v7, v19

    const-class v17, Landroid/app/PendingIntent;

    const/16 v20, 0x4

    aput-object v17, v7, v20

    invoke-virtual {v6, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_8

    move/from16 v21, v3

    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-array v3, v15, [Ljava/lang/Object;

    aput-object v13, v3, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v16, 0x0

    const/16 v21, 0x1

    :try_start_6
    aput-object v16, v3, v21

    aput-object v17, v3, v18

    aput-object v11, v3, v19

    aput-object v5, v3, v20

    invoke-virtual {v7, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v3, v21

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    const/16 v21, 0x1

    goto :goto_7

    :catch_5
    move-exception v0

    move/from16 v21, v3

    const/16 v16, 0x0

    goto :goto_7

    :catch_6
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v16, v7

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v0, v21

    goto :goto_8

    :cond_9
    move/from16 v21, v3

    move-object/from16 v16, v7

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    move/from16 v3, v21

    goto/16 :goto_5
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/f/b/a;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepe/f/b/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/f/b/a;->a:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/deepe/f/b/a;->b()V

    return-void
.end method
