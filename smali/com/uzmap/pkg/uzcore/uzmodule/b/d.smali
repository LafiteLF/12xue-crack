.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/d;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# instance fields
.field public a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

.field public b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

.field public c:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->f:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->g:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->f:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->g:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->h:Z

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a(Lcom/uzmap/pkg/uzcore/a/d;)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "slidToOpenPane"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->f:Z

    const-string v1, "slidToClosePane"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->g:Z

    const-string v1, "tapToClosePane"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->h:Z

    const-string v0, "leftPane"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3c

    const-string v3, "edge"

    if-eqz v0, :cond_1

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->dipToPix(I)I

    move-result v4

    iput v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->c:I

    new-instance v4, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v4, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    iput-object v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    :cond_1
    const-string v0, "rightPane"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->dipToPix(I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->e:I

    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v2, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->e:I

    return v0

    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->c:I

    return v0
.end method

.method public a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    :cond_1
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
