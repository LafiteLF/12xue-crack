.class public final Lcom/deepe/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/a/d$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, ":eng/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/deepe/c/a/d;->a:Z

    const-string v1, "/system/app/Superuser.apk"

    const-string v2, "/sbin/su"

    const-string v3, "/system/bin/su"

    const-string v4, "/system/xbin/su"

    const-string v5, "/data/local/xbin/su"

    const-string v6, "/data/local/bin/su"

    const-string v7, "/system/sd/xbin/su"

    const-string v8, "/system/bin/failsafe/su"

    const-string v9, "/data/local/su"

    const-string v10, "/su/bin/su"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/a/d;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/deepe/c/a/d;->d:Ljava/util/Properties;

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, ":userdebug/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
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

.method public static b()Lcom/deepe/c/a/d$a;
    .locals 3

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/deepe/c/a/d$a;->b:Lcom/deepe/c/a/d$a;

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_2

    invoke-static {v0}, Lcom/deepe/c/a/j;->k(Landroid/content/Context;)Landroid/app/UiModeManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepe/c/a/d$a;->a:Lcom/deepe/c/a/d$a;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/deepe/c/a/d$a;->h:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/deepe/c/a/d$a;->f:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/deepe/c/a/d$a;->g:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/deepe/c/a/d$a;->e:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/deepe/c/a/d$a;->d:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/deepe/c/a/d$a;->c:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/deepe/c/a/d$a;->a:Lcom/deepe/c/a/d$a;

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/deepe/c/a/d$a;->a:Lcom/deepe/c/a/d$a;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c()Z
    .locals 2

    sget-object v0, Lcom/deepe/c/a/d$a;->e:Lcom/deepe/c/a/d$a;

    invoke-static {}, Lcom/deepe/c/a/d;->b()Lcom/deepe/c/a/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final d()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    invoke-static {v1}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "harmony"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "hw_sc.build.platform.version"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static f()Z
    .locals 6

    sget-object v0, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/deepe/c/a/d;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v0, v3

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v4, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/deepe/c/a/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
