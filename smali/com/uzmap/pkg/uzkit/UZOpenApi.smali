.class public Lcom/uzmap/pkg/uzkit/UZOpenApi;
.super Ljava/lang/Object;


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "ac_token"

.field public static final ACTION:Ljava/lang/String; = "UZMAP.UPUSH"

.field public static final ACTION_BIND:Ljava/lang/String; = "UZMAP.UPUSH.BIND"

.field public static final ACTION_JOIN:Ljava/lang/String; = "UZMAP.UPUSH.JOIN"

.field public static final ACTION_LEAVE:Ljava/lang/String; = "UZMAP.UPUSH.LEAVE"

.field public static final API_ARGUMENTS:Ljava/lang/String; = "api_arguments"

.field public static final APP_PARAM:Ljava/lang/String; = "appParam"

.field public static final CID:Ljava/lang/String; = "cid"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final GROUP_NAME:Ljava/lang/String; = "groupName"

.field public static final NET_ALIVE:Ljava/lang/String; = "netAlive"

.field public static final OPERATE:Ljava/lang/String; = "operate"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final TKN:Ljava/lang/String; = "tkn"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UNAME:Ljava/lang/String; = "uname"

.field public static final UPNS_BIND:Ljava/lang/String; = "upns_bind"

.field public static final UPNS_UID:Ljava/lang/String; = "upns_uid"

.field public static final UPNS_UNAME:Ljava/lang/String; = "upns_uname"

.field public static final UPNS_WID:Ljava/lang/String; = "upns_wid"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VERSION:Ljava/lang/String; = "cur_wgt_version"

.field public static final WID:Ljava/lang/String; = "wid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analysisHost()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzapp/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzapp/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzapp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mamHost()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryWidgetInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
