.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/h;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/g;


# instance fields
.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/uzmodule/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/uzmap/pkg/b/c/i$a;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    return-void
.end method

.method private c()V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->h:Z

    const-string v0, "reload"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k:Z

    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    const/4 v0, 0x1

    const-string v1, "scrollEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->l:Z

    const-string v1, "background"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->G:Ljava/lang/String;

    const-string v1, "preload"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->j:I

    const-string v0, "frames"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-lez v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    :goto_1
    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-direct {v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->setJsBridge(Lcom/uzmap/pkg/uzcore/a/d;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-virtual {v1, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->setBaseUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
