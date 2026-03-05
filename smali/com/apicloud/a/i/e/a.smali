.class Lcom/apicloud/a/i/e/a;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/d/b/a;->b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)Lcom/apicloud/a/i/d/b/a;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/apicloud/a/g/b;->g(Ljava/lang/String;)Lcom/apicloud/a/g/a/g;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/b/d;

    iget-object v1, p2, Lcom/apicloud/a/g/a/g;->b:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object p2, p2, Lcom/apicloud/a/g/a/g;->a:[I

    invoke-direct {v0, v1, p2}, Lcom/apicloud/a/i/d/b/d;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {p1}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/d/b/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/a/i/d/b/a;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/b;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 4

    invoke-virtual {p2}, Lcom/apicloud/a/c;->e()Lcom/apicloud/a/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "backgroundRepeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->f(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "backgroundSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->h(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v3, "backgroundImage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->e(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v3, "backgroundColor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->d(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v3, "backgroundPosition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->g(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v3, "background"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;Lcom/apicloud/a/c;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_5
        0x262c4477 -> :sswitch_4
        0x4cb7f6d5 -> :sswitch_3
        0x4d0b70cd -> :sswitch_2
        0x5515624f -> :sswitch_1
        0x63545469 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/apicloud/a/i/d/b/a;->g(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/apicloud/a/g/n;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 5

    const-string v0, "background"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/e/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/a;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1}, Lcom/apicloud/a/g/e/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/a;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/apicloud/a/g/e/a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/a;->b(Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apicloud/a/g/e/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apicloud/a/c;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/a;->a()Lcom/apicloud/a/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v4

    invoke-interface {v4, p2, v1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->d(Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lcom/apicloud/a/g/e/a;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/apicloud/a/g/e/a;->c([Ljava/lang/String;)[Lcom/apicloud/a/g/l;

    move-result-object p2

    if-eqz p2, :cond_5

    aget-object v0, p2, v2

    aget-object p2, p2, v3

    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/a/i/e/a;->a(Landroid/view/View;Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    :cond_5
    return-void
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "repeat-y"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :sswitch_1
    const-string v0, "repeat-x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move-object v1, p2

    move-object p2, v2

    goto :goto_0

    :sswitch_2
    const-string p1, "no-repeat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :sswitch_3
    const-string v0, "repeat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_3
    sget-object p2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/apicloud/a/i/d/b/a;->a(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)Lcom/apicloud/a/i/d/b/a;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37b3d265 -> :sswitch_3
        -0x2b3140d9 -> :sswitch_2
        -0x1a08c73a -> :sswitch_1
        -0x1a08c739 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/deepe/c/c/s;->g:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/a;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/e/a$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/e/a$1;-><init>(Lcom/apicloud/a/i/e/a;Landroid/view/View;)V

    invoke-virtual {v0, p2, v1}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    return-void
.end method

.method private e(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "backgroundImage"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/g/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->d(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "backgroundRepeat"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 4

    const-string v0, "backgroundPosition"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/g/m;->a(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object v0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    aget-object p2, v0, p2

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v1, v0, v3

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/apicloud/a/i/e/a;->a(Landroid/view/View;Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    :cond_2
    return-void
.end method

.method private h(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 3

    invoke-static {p1}, Lcom/apicloud/a/i/e/a;->c(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object p1

    const-string v0, "backgroundSize"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/g/m;->a(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    aget-object p2, p2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/d/b/a;->a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)Lcom/apicloud/a/i/d/b/a;

    goto :goto_0

    :cond_0
    aget-object v0, p2, v1

    aget-object p2, p2, v2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/d/b/a;->a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)Lcom/apicloud/a/i/d/b/a;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/a;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method
