.class public Lcompile/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# static fields
.field static final APPID:Ljava/lang/String; = "A6942495244818"

.field static final AUTH:Z = false

.field static final CERT_PSW:Ljava/lang/String; = null

.field static final CLOUD_KEY:Ljava/lang/String; = "E6mh9AOtCa2z0A4TI31S"

.field static final CLOUD_STAMP:J = 0x19bebd6b7fbL

.field static final DESCRIPTOR:Ljava/lang/String; = "{descriptor}"

.field static final DEVELOPER_MODE:Z = false

.field static final LOADER:Z = false

.field static final LOADER_VER:Ljava/lang/String; = "3.0.0"

.field static final MAM_HOST:Ljava/lang/String; = "https://iuap-yonbuilder-mamservice.yyuap.com/iuap-yonbuilder-mobile/v2"

.field static final MCM_HOST:Ljava/lang/String; = "{mcmhost}"

.field static final MSM_HOST:Ljava/lang/String; = "{msmhost}"

.field static final PUSH_HOST:Ljava/lang/String; = "{pushhost}"

.field static final REPORT_HOST:Ljava/lang/String; = "https://iuap-yonbuilder-mamservice.yyuap.com/iuap-yonbuilder-mobile/v2"

.field static final SAND_BOX:Ljava/lang/String; = null

.field static final STORE_HOST:Ljava/lang/String; = "{storehost}"

.field static final S_MODE:Z = false

.field static final WIDGET_KEY:Ljava/lang/String; = "z0NE1rsmtLlotHaS7oVQKOAPcq+tKh9BkbyeJdctxNeCmOtt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analysisHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://iuap-yonbuilder-mamservice.yyuap.com/iuap-yonbuilder-mobile/v2"

    .line 54
    invoke-static {v0}, Lcompile/Properties;->validUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static appId()Ljava/lang/String;
    .locals 1

    const-string v0, "A6942495244818"

    return-object v0
.end method

.method public static certPsw()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcompile/Properties;->CERT_PSW:Ljava/lang/String;

    return-object v0
.end method

.method public static cloudKey()Ljava/lang/String;
    .locals 1

    const-string v0, "E6mh9AOtCa2z0A4TI31S"

    return-object v0
.end method

.method public static cloudStamp()J
    .locals 2

    const-wide v0, 0x19bebd6b7fbL

    return-wide v0
.end method

.method public static descriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "{descriptor}"

    return-object v0
.end method

.method public static developerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static loader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static loaderVer()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.0"

    return-object v0
.end method

.method public static mamHost()Ljava/lang/String;
    .locals 1

    const-string v0, "https://iuap-yonbuilder-mamservice.yyuap.com/iuap-yonbuilder-mobile/v2"

    .line 49
    invoke-static {v0}, Lcompile/Properties;->validUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sandbox()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcompile/Properties;->SAND_BOX:Ljava/lang/String;

    return-object v0
.end method

.method public static smode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static validUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "http"

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static widgetKey()Ljava/lang/String;
    .locals 1

    const-string v0, "z0NE1rsmtLlotHaS7oVQKOAPcq+tKh9BkbyeJdctxNeCmOtt"

    return-object v0
.end method
