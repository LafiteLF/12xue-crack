.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/r;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

.field public f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->a(Lcom/uzmap/pkg/uzcore/a/d;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->d:Lcom/uzmap/pkg/uzcore/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b;->b()V

    :cond_0
    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "leftEdge"

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->b:I

    const-string v2, "rightEdge"

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->c:I

    const-string v3, "type"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->a:I

    const-string v3, "fixedPane"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v5, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v5, v3, p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    iput-object v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    :cond_1
    const-string v3, "slidPane"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v5, v3, p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    iput-object v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    :cond_2
    const-string p1, "slidPaneStyle"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->b:I

    invoke-interface {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->c:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    return-void
.end method
