.class public Lcom/uzmap/pkg/uzcore/ad;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ad;->c:I

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ad;->a:I

    return-void
.end method

.method public static a(ZLcom/uzmap/pkg/uzcore/uzmodule/b;)Lcom/uzmap/pkg/uzcore/ad;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string p0, "type"

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance v2, Lcom/uzmap/pkg/uzcore/ad;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/ad;-><init>(I)V

    const-string p0, "title"

    invoke-interface {p1, p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/uzmap/pkg/uzcore/ad;->d:Ljava/lang/String;

    const-string p0, "text"

    invoke-interface {p1, p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/uzmap/pkg/uzcore/ad;->e:Ljava/lang/String;

    const-string p0, "modal"

    invoke-interface {p1, p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v2, Lcom/uzmap/pkg/uzcore/ad;->f:Z

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/ad;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/ad;-><init>(I)V

    const-string p0, "color"

    const-string v1, "#33B5E5"

    invoke-interface {p1, p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/uzmap/pkg/uzcore/ad;->b:I

    const-string p0, "height"

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/uzmap/pkg/uzcore/ad;->c:I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/ad;->b()Lcom/uzmap/pkg/uzcore/ad;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static b()Lcom/uzmap/pkg/uzcore/ad;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/ad;-><init>(I)V

    return-object v0
.end method

.method public static c()Lcom/uzmap/pkg/uzcore/ad;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/ad;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ad;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
