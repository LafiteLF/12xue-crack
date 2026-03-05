.class public abstract Lcom/uzmap/pkg/uzcore/d/l;
.super Lcom/uzmap/pkg/uzcore/d/a;

# interfaces
.implements Lcom/deepe/c/b/c/e$b;


# instance fields
.field private a:Lcom/deepe/c/b/c/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/l;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/deepe/c/b/c/e;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/deepe/c/b/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/c/e;->a([I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p0}, Lcom/deepe/c/b/c/e;->a(Lcom/deepe/c/b/c/e$b;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/c/e;->setEnabled(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/d/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0xf062a8
        -0x24bbc9
        -0xbd7a0c
        -0xb4c00
    .end array-data
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/e;->b()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/l;->h(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/l;->l()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/c/e;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/l;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/e;->setEnabled(Z)V

    if-eqz p1, :cond_4

    const-string p2, "bgColor"

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/d/l;->c(I)V

    :cond_1
    const-string p2, "pathColor"

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p1

    new-array p2, v0, [I

    aput p1, p2, v1

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/d/l;->a([I)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [I

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/d/l;->a([I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected a([I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/c/e;->a([I)V

    return-void
.end method

.method protected c(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/c/e;->a(I)V

    return-void
.end method

.method protected h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/l;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/c/e;->a(Z)V

    return-void
.end method

.method public l_()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/l;->x()V

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/l;->h(Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/l;->w()V

    return-void
.end method
