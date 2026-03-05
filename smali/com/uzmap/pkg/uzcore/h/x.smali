.class public Lcom/uzmap/pkg/uzcore/h/x;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# instance fields
.field a:I

.field b:I

.field c:I

.field private e:Lcom/uzmap/pkg/uzcore/h/m;

.field private f:Lcom/uzmap/pkg/uzcore/h/l;

.field private g:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/x;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->b:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->c:I

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "bold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/h/x;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/x;->g:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    return-void
.end method

.method public a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

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

.method public b()Z
    .locals 1

    const-string v0, "hideNavigationBar"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/x;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    const-string v0, "hideTabBar"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/x;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/uzmap/pkg/uzcore/h/m;
    .locals 9

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tabBar"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/x;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v2, Lcom/uzmap/pkg/uzcore/h/m;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/h/m;-><init>(Lcom/uzmap/pkg/uzcore/h/x;)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "background"

    const-string v4, "#FFF"

    invoke-interface {v0, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "shadow"

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0x222223

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->b:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "color"

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->c:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "selectedColor"

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->d:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "index"

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/uzmap/pkg/uzcore/h/m;->m:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const/4 v4, 0x1

    const-string v5, "scrollEnabled"

    invoke-interface {v0, v5, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/uzmap/pkg/uzcore/h/m;->j:Z

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const/4 v4, 0x0

    const-string v5, "preload"

    invoke-interface {v0, v5, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/m;->k:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v5, "animated"

    invoke-interface {v0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/uzmap/pkg/uzcore/h/m;->l:Z

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->m:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const/16 v3, 0x36

    const-string v5, "height"

    invoke-interface {v0, v5, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->h:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const/16 v3, 0xa

    const-string v5, "fontSize"

    invoke-interface {v0, v5, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/uzmap/pkg/uzcore/h/m;->e:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v3, "fontFamily"

    invoke-interface {v0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/uzmap/pkg/uzcore/h/m;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const-string v2, "fontWeight"

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/uzmap/pkg/uzcore/h/m;->f:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    const/4 v2, -0x1

    const-string v3, "textOffset"

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/uzmap/pkg/uzcore/h/m;->n:I

    const-string v1, "list"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_0
    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v5

    if-lt v3, v5, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iput-object v2, v1, Lcom/uzmap/pkg/uzcore/h/m;->p:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v5

    new-instance v6, Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {v6, p0}, Lcom/uzmap/pkg/uzcore/h/k;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const-string v7, "text"

    invoke-interface {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v7, v7, Lcom/uzmap/pkg/uzcore/h/m;->h:I

    iput v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->h:I

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v7, v7, Lcom/uzmap/pkg/uzcore/h/m;->e:I

    iput v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget-object v7, v7, Lcom/uzmap/pkg/uzcore/h/m;->g:Ljava/lang/String;

    iput-object v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v7, v7, Lcom/uzmap/pkg/uzcore/h/m;->f:I

    iput v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v7, v7, Lcom/uzmap/pkg/uzcore/h/m;->n:I

    iput v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->l:I

    const-string v7, "iconPath"

    invoke-interface {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    const-string v7, "selectedIconPath"

    invoke-interface {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/uzmap/pkg/uzcore/h/k;->k:Ljava/lang/String;

    const/4 v7, 0x4

    const-string v8, "scale"

    invoke-interface {v5, v8, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v5, v5, Lcom/uzmap/pkg/uzcore/h/m;->c:I

    iput v5, v6, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iget v5, v5, Lcom/uzmap/pkg/uzcore/h/m;->d:I

    iput v5, v6, Lcom/uzmap/pkg/uzcore/h/k;->d:I

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v1, "frames"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v2

    if-lt v4, v2, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    goto :goto_3

    :cond_4
    invoke-interface {v0, v4}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v2

    new-instance v3, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-direct {v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    const-string v5, "title"

    invoke-interface {v2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->X:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/x;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->setJsBridge(Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->e:Lcom/uzmap/pkg/uzcore/h/m;

    return-object v0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public e()Lcom/uzmap/pkg/uzcore/h/l;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "navigationBar"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/x;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Lcom/uzmap/pkg/uzcore/h/l;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/uzcore/h/l;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v4, "background"

    const-string v5, "#FFF"

    invoke-interface {v1, v4, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uzmap/pkg/uzcore/h/l;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v4, "shadow"

    invoke-interface {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, -0x222223

    invoke-static {v4, v5}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/uzmap/pkg/uzcore/h/l;->b:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v4, "color"

    invoke-interface {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-static {v5, v6}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v5, "blurEffect"

    invoke-interface {v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/uzmap/pkg/uzcore/h/l;->k:Z

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v5, "hideBackButton"

    invoke-interface {v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const/16 v5, 0x2d

    const-string v6, "height"

    invoke-interface {v1, v6, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/uzmap/pkg/uzcore/h/l;->h:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const/16 v5, 0x11

    const-string v6, "fontSize"

    invoke-interface {v1, v6, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/uzmap/pkg/uzcore/h/l;->e:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v7, "fontFamily"

    invoke-interface {v1, v7, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/uzmap/pkg/uzcore/h/l;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v8, "fontWeight"

    invoke-interface {v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/uzmap/pkg/uzcore/h/l;->f:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    const-string v9, "title"

    invoke-virtual {v0, v9}, Lcom/uzmap/pkg/uzcore/h/x;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/uzmap/pkg/uzcore/h/l;->i:Ljava/lang/String;

    const-string v3, "backButtonTitle"

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/uzmap/pkg/uzcore/h/l;->j:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iget-object v9, v0, Lcom/uzmap/pkg/uzcore/h/x;->W:Ljava/lang/String;

    iput-object v9, v3, Lcom/uzmap/pkg/uzcore/h/l;->j:Ljava/lang/String;

    :goto_0
    const-string v3, "backButton"

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v3

    const-string v9, "iconPath"

    if-eqz v3, :cond_3

    new-instance v10, Lcom/uzmap/pkg/uzcore/h/j;

    invoke-direct {v10, v0}, Lcom/uzmap/pkg/uzcore/h/j;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v3, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/uzmap/pkg/uzcore/h/j;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object v10, v3, Lcom/uzmap/pkg/uzcore/h/l;->m:Lcom/uzmap/pkg/uzcore/h/j;

    :cond_3
    const-string v3, "leftButtons"

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v3

    const-string v11, "scale"

    const-string v12, "text"

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v14

    if-lez v14, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v13

    if-lt v15, v13, :cond_4

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object v14, v3, Lcom/uzmap/pkg/uzcore/h/l;->n:Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-interface {v3, v15}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v13

    new-instance v10, Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {v10, v0}, Lcom/uzmap/pkg/uzcore/h/k;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v13, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    invoke-interface {v13, v6, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v10, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    const/4 v2, 0x0

    invoke-interface {v13, v7, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    invoke-interface {v13, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    invoke-interface {v13, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iget v5, v5, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-static {v2, v5}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v10, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    invoke-interface {v13, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v13, v11, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v10, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x11

    goto :goto_1

    :cond_5
    :goto_2
    const-string v2, "rightButtons"

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v2

    if-lez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v3

    if-lt v13, v3, :cond_6

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object v2, v1, Lcom/uzmap/pkg/uzcore/h/l;->o:Ljava/util/List;

    goto :goto_4

    :cond_6
    invoke-interface {v1, v13}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v3

    new-instance v5, Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzcore/h/k;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v3, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    const/16 v10, 0x11

    invoke-interface {v3, v6, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v5, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    const/4 v14, 0x0

    invoke-interface {v3, v7, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    invoke-interface {v3, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v15

    iput v15, v5, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    iget v10, v10, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-static {v15, v10}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v10

    iput v10, v5, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    invoke-interface {v3, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-interface {v3, v11, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v5, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/x;->f:Lcom/uzmap/pkg/uzcore/h/l;

    return-object v1
.end method

.method public makeRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/x;->g:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/h/x;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

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
