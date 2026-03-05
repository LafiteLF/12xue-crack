.class public Lcom/uzmap/pkg/uzcore/ak;
.super Lcom/uzmap/pkg/uzcore/j;


# instance fields
.field private b:Lcom/uzmap/pkg/uzcore/h/aa;

.field private c:Lcom/uzmap/pkg/uzcore/h/z;

.field private d:Lcom/uzmap/pkg/uzcore/h/x;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/uzmap/pkg/uzcore/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    return-void
.end method

.method private L()V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/ak;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/d;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Lcom/uzmap/pkg/uzcore/h/y$a;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/uzmap/pkg/uzcore/h/y$a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/y$a;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Lcom/uzmap/pkg/uzcore/h/d;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v4

    iget v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->a(I)V

    :cond_4
    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/aa;->a()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v4

    iget v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->c(I)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;)Lcom/uzmap/pkg/uzcore/h/x;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    return-object p0
.end method

.method private a(ILandroid/view/View;)V
    .locals 0

    sget p2, Lcom/uzmap/pkg/uzcore/h/z;->b:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/g;->a(Landroid/view/ViewGroup;)Z

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 3

    sget v0, Lcom/uzmap/pkg/uzcore/h/z;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const-string p1, "navbackbtn"

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/uzmap/pkg/uzcore/h/z;->b:I

    if-ne p1, v0, :cond_4

    const-string p1, "navtitle"

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "navitembtn"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "type"

    invoke-virtual {v1, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    :cond_5
    return-void
.end method

.method private a(IZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/ak;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eq v2, v3, :cond_7

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/d;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Lcom/uzmap/pkg/uzcore/h/y$a;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/uzmap/pkg/uzcore/h/y$a;

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v4

    iget v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    if-eqz p2, :cond_4

    sub-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->b(I)V

    goto :goto_1

    :cond_4
    add-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->a(I)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    if-ne v4, p1, :cond_7

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v4

    iget v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    if-eqz p2, :cond_6

    sub-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->d(I)V

    goto :goto_1

    :cond_6
    add-int/2addr v5, v4

    iput v5, v2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/d;->c(I)V

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p2, Lcom/uzmap/pkg/uzcore/h/y$a;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/uzmap/pkg/uzcore/h/y$a;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/h/y$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/d;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/h/d;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v1

    iget v2, p2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    add-int/2addr v2, v1

    iput v2, p2, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/d;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/aa;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v1

    iget v2, p2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    add-int/2addr v2, v1

    iput v2, p2, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/d;->c(I)V

    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/ak;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/ak;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/h/m;)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 4

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    iput-object v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    const-string v0, "tab_frames"

    iput-object v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    iget v0, p1, Lcom/uzmap/pkg/uzcore/h/m;->m:I

    iput v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/h/m;->j:Z

    iput-boolean v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->l:Z

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/h/m;->l:Z

    iput-boolean v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->h:Z

    iget v0, p1, Lcom/uzmap/pkg/uzcore/h/m;->k:I

    iput v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->j:I

    new-instance v0, Lcom/uzmap/pkg/uzcore/ak$6;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/ak$6;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    iput-object v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->n:Lcom/uzmap/pkg/b/c/i$a;

    invoke-static {}, Lcom/deepe/c/b/e;->c()Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/h/y$a;->a(Z)V

    new-instance v3, Lcom/uzmap/pkg/uzcore/q;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/uzcore/q;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    iput-object v3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    iget p1, p1, Lcom/uzmap/pkg/uzcore/h/m;->m:I

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/deepe/c/i/i;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v1, p1, p2}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/ak;->a(IZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/z;->a(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/ak;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->g(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/ak;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->h(I)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/ak;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->f(Landroid/view/View;)V

    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    const/4 v1, 0x1

    const-string v2, "animated"

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzcore/h/z;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "hideNavigationBar"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzcore/ak;->a(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz v0, :cond_2

    const-string v0, "hideTabBar"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/ak;->b(ZZ)V

    :cond_2
    return-void
.end method

.method private b(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/aa;->a()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/ak;->a(IZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/aa;->a(ZZ)V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/ak;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->i(I)V

    return-void
.end method

.method private c(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method private d(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->l(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Lcom/uzmap/pkg/uzcore/d/f$a;)V

    return-void
.end method

.method private d(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/h/d;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/d;->b(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-void
.end method

.method private e(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->l(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/f;

    move-result-object v0

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/aa;->bringToFront()V

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/z;->bringToFront()V

    :cond_2
    :goto_0
    return-void
.end method

.method private g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/c;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzcore/h/z;->a(ZI)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/z;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/ak;->L()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/uzmap/pkg/uzcore/ak;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/uzmap/pkg/uzcore/ak;->setPadding(IIII)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->j:Ljava/lang/Boolean;

    return-void
.end method

.method private g(I)Z
    .locals 3

    const-string v0, "tabitembtn"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private h(I)V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    const-string v2, "tab_frames"

    iput-object v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v2

    iget-boolean v2, v2, Lcom/uzmap/pkg/uzcore/h/m;->l:Z

    iput-boolean v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->h:Z

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/ak;->c(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i(I)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->c(I)V

    const-string v0, "tabframe"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v2

    iget-object v2, v2, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    iget-object v2, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private l(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/f;
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "event_empty_host"

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/d/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public B()I
    .locals 2

    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/j;->B()I

    move-result v0

    sget v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->v:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/j;->F()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/j;->H()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/f;->d()V

    goto :goto_0
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget v1, p1, Lcom/uzmap/pkg/uzcore/p$a;->h:I

    const-string v2, "keyCode"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v1, "longPress"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/p$a;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/ak;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/uzmap/pkg/uzcore/h/x;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/x;->e()Lcom/uzmap/pkg/uzcore/h/l;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/x;->e()Lcom/uzmap/pkg/uzcore/h/l;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/l;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;->setId(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v0

    invoke-static {v3, v0}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzcore/h/z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/h/x;->K:Z

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->e(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    new-instance v4, Lcom/uzmap/pkg/uzcore/ak$1;

    invoke-direct {v4, p0}, Lcom/uzmap/pkg/uzcore/ak$1;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/p$a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    new-instance v4, Lcom/uzmap/pkg/uzcore/ak$2;

    invoke-direct {v4, p0}, Lcom/uzmap/pkg/uzcore/ak$2;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/p$b;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/uzmap/pkg/uzcore/h/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/aa;->setId(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    new-instance v4, Lcom/uzmap/pkg/uzcore/ak$3;

    invoke-direct {v4, p0}, Lcom/uzmap/pkg/uzcore/ak$3;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Lcom/uzmap/pkg/uzcore/h/aa$a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Lcom/uzmap/pkg/uzcore/h/m;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/aa;->d()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/x;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/ak;->b(ZZ)V

    :cond_1
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/uzmap/pkg/uzcore/ak$4;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/ak$4;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    const-wide/16 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/ak$5;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/ak$5;-><init>(Lcom/uzmap/pkg/uzcore/ak;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 1

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->e(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->d(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    aget-object v0, p1, v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    if-ne v0, p1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    :cond_4
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object v0, p1, v1

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    return v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/b/e;->c()Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzcore/h/y$a;->a(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/ak;->addView(Landroid/view/View;I)V

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    return v1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 2

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->d(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/ak;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->d(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/uzmap/pkg/uzcore/ak;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 1

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/ak;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->e(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/aa;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/aa;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/aa;->getTop()I

    move-result v4

    sub-int v0, v4, v0

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/ak;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/z;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/z;->getBottom()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/ak;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak;->d:Lcom/uzmap/pkg/uzcore/h/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/x;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/ak;->g(Z)V

    return-void
.end method

.method public f()Lcom/uzmap/pkg/uzcore/h/u;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/u;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/h/u;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzcore/h/u;->a:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->d()I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzcore/h/u;->b:I

    return-object v0
.end method

.method public w()I
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->d(Z)I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ak;->c:Lcom/uzmap/pkg/uzcore/h/z;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/z;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/aa;->a()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ak;->b:Lcom/uzmap/pkg/uzcore/h/aa;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v2

    :cond_1
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method
