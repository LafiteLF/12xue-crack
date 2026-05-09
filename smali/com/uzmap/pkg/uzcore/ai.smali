.class public Lcom/uzmap/pkg/uzcore/ai;
.super Lcom/uzmap/pkg/b/c/h;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/d/c;


# instance fields
.field private b:Lcom/uzmap/pkg/uzcore/g;

.field private c:Lcom/uzmap/pkg/uzcore/d/h;

.field private d:Lcom/uzmap/pkg/uzcore/d/h;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lcom/uzmap/pkg/uzcore/af;

.field private k:Lcom/uzmap/pkg/uzcore/b;

.field private l:Z

.field private m:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/b/c/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->n:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->o:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->p:Z

    new-instance p1, Lcom/uzmap/pkg/uzcore/ai$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/ai$1;-><init>(Lcom/uzmap/pkg/uzcore/ai;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->r:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/ai;->m:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ai;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/ai;->g()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->m:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->i:Z

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->j:Lcom/uzmap/pkg/uzcore/af;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/af;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->a(Lcom/uzmap/pkg/uzcore/af;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->k:Lcom/uzmap/pkg/uzcore/b;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ai;->g:I

    return v0
.end method

.method public D()Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->E()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ai;->n:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->H()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->H()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->removeAllViews()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->m:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->l:Z

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    const-string v1, "left"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "event"

    const-string v1, "slide"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ai;->a(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ai;->l:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/af;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->j:Lcom/uzmap/pkg/uzcore/af;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->k:Lcom/uzmap/pkg/uzcore/b;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;Z)V
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->c()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/h;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;

    const-string v0, "slidLayout"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->g(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/g;->n()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    new-instance v2, Lcom/uzmap/pkg/uzcore/j;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-direct {v2, v3, v4}, Lcom/uzmap/pkg/uzcore/j;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    invoke-virtual {v2, p0}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    new-instance v3, Lcom/deepe/c/b/b/a$c;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lcom/deepe/c/b/b/a$c;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Lcom/deepe/c/b/b/a$c;->a:F

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/b/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/ai;->addView(Landroid/view/View;)V

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    new-instance v2, Lcom/uzmap/pkg/uzcore/j;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/ai;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-direct {v2, v3, v5}, Lcom/uzmap/pkg/uzcore/j;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    invoke-virtual {v2, p0}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    new-instance v3, Lcom/deepe/c/b/b/a$c;

    invoke-direct {v3, v4, v4}, Lcom/deepe/c/b/b/a$c;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzcore/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/b/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/ai;->addView(Landroid/view/View;)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    const/16 p1, 0xf

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/ai;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/h;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/h;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/h;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/h;->a(ZLcom/deepe/b/b/c;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/h;->a(ZLcom/deepe/b/b/c;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/h;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public varargs a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    array-length v1, p1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/d/h;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    new-array v2, v1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aget-object p1, p1, v1

    aput-object p1, v2, v3

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/d/h;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ai;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->a_(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->a_(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ai;->h:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ai;->h:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->b(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->b(Z)V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b_(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/uzmap/pkg/b/c/h;->setVisibility(I)V

    return-void
.end method

.method public b_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->b_(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->b_(Z)V

    return-void
.end method

.method public c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->c(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->c(Z)V

    return-void
.end method

.method public c(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ai;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(I)Z
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/h;->k_()Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e_()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/uzmap/pkg/uzcore/d/d;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/d/h;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/uzmap/pkg/uzcore/d/d;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/d/h;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public f()Lcom/uzmap/pkg/uzcore/h/u;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ai;->g:I

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    const-string v0, "slidLayout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->g(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->g(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ai;->f:I

    return-void
.end method

.method public h(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ai;->h:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ai;->h:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ai;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->h(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/h;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->i()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->i()V

    return-void
.end method

.method public i_()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->j()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->j()V

    return-void
.end method

.method public j_()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ai;->l:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->k()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->k()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->l()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->l()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->m()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->m()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->n()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->n()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->o()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->o()V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/h;->onAnimationEnd()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->e(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/ai;->g()V

    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/h;->onAnimationStart()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ai;->e(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/b/c/h;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ai;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->p()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->c:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->p()V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->d:Lcom/uzmap/pkg/uzcore/d/h;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/h;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ai;->o:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ai;->p:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slidwin["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ai;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ai;->e:Ljava/lang/String;

    return-object v0
.end method
