.class public Lcom/uzmap/pkg/a/d;
.super Lcom/uzmap/pkg/uzcore/f;

# interfaces
.implements Lcom/apicloud/b/a/e;


# static fields
.field static a:I


# instance fields
.field private h:Lcom/uzmap/pkg/uzcore/d/i;

.field private i:Lcom/deepe/c/i/i;

.field private j:Z

.field private k:Lcom/apicloud/b/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/f;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/a/d;->j:Z

    iput-object p2, p0, Lcom/uzmap/pkg/a/d;->h:Lcom/uzmap/pkg/uzcore/d/i;

    new-instance p2, Lcom/deepe/c/i/i;

    invoke-direct {p2}, Lcom/deepe/c/i/i;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/d;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/a/d;)Lcom/apicloud/b/a/g;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/a/d;->k:Lcom/apicloud/b/a/g;

    return-object p0
.end method

.method private w()V
    .locals 5

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/d;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/d;->j:Z

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->h:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    iget-object v2, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    invoke-virtual {v2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/a/a;->a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    iget-object v2, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameGroup_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/uzmap/pkg/a/d;->a:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/uzmap/pkg/a/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/a/d;->h:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/d/i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->setBaseUrl(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v2, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/a/d;->b(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->l:Z

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/a/d;->a(Z)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/a/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/a/d;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->h:Lcom/uzmap/pkg/uzcore/d/i;

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/uzmap/pkg/uzcore/d/i;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/b;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/d;->i()V

    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->k:Lcom/apicloud/b/a/g;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/a/d;->b(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lcom/apicloud/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/d;->k:Lcom/apicloud/b/a/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/apicloud/b/a/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    const-string v1, "frames"

    invoke-virtual {p2, v1, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/uzmap/pkg/a/d;->h:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p2

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    iget-object v1, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/a/a;->a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->setBaseUrl(Ljava/lang/String;)V

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    new-instance p1, Lcom/uzmap/pkg/a/d$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/a/d$1;-><init>(Lcom/uzmap/pkg/a/d;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/d;->a(Lcom/uzmap/pkg/b/c/i$a;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/a/d;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/b/a/b;

    invoke-interface {v1}, Lcom/apicloud/b/a/b;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/f;->a(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    const-string v1, "scrollEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/d;->i:Lcom/deepe/c/i/i;

    const-string v1, "preload"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/f;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/a/d;->w()V

    return-void
.end method
