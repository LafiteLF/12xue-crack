.class final Lcom/apicloud/a/i/a/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/b/z;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/e/b/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/Shader;

.field private k:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/h;->k:Lcom/apicloud/a/d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/h;->g:Ljava/util/List;

    return-void
.end method

.method private d()Landroid/graphics/Shader;
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [F

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget v3, p0, Lcom/apicloud/a/i/a/e/h;->a:F

    iget v4, p0, Lcom/apicloud/a/i/a/e/h;->b:F

    iget v5, p0, Lcom/apicloud/a/i/a/e/h;->c:F

    iget v6, p0, Lcom/apicloud/a/i/a/e/h;->d:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/h;->f:F

    new-instance v1, Landroid/graphics/RadialGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, v5

    move v4, v6

    move v5, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/e/b/z$a;

    iget v3, v2, Lcom/apicloud/a/i/a/e/b/z$a;->a:F

    aput v3, v8, v1

    iget v2, v2, Lcom/apicloud/a/i/a/e/b/z$a;->b:I

    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()Landroid/graphics/Shader;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->k:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/apicloud/a/i/a/g/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/a/i/a/g/a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/g/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    const-string v2, "repeat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    const-string v3, "repeat-x"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_2
    iget-object v3, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    const-string v3, "repeat-y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_4
    new-instance v3, Landroid/graphics/BitmapShader;

    invoke-direct {v3, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v3

    :cond_5
    return-object v2
.end method


# virtual methods
.method public a(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/h;->a:F

    iput p2, p0, Lcom/apicloud/a/i/a/e/h;->b:F

    iput p3, p0, Lcom/apicloud/a/i/a/e/h;->e:F

    iput p4, p0, Lcom/apicloud/a/i/a/e/h;->c:F

    iput p5, p0, Lcom/apicloud/a/i/a/e/h;->d:F

    iput p6, p0, Lcom/apicloud/a/i/a/e/h;->f:F

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/e/b/z$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/h;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/e/h;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/h;->f:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/graphics/Shader;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->j:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/e/h;->e()Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/a/e/h;->d()Landroid/graphics/Shader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/apicloud/a/i/a/e/h;->j:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/h;->j:Landroid/graphics/Shader;

    return-object v0
.end method
