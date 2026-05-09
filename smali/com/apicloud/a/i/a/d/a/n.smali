.class Lcom/apicloud/a/i/a/d/a/n;
.super Lcom/apicloud/a/i/a/d/a/j;


# instance fields
.field private final a:Landroid/view/TextureView;

.field private b:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/j;-><init>()V

    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    new-instance p2, Lcom/apicloud/a/i/a/d/a/n$1;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/d/a/n$1;-><init>(Lcom/apicloud/a/i/a/d/a/n;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method a()Landroid/view/Surface;
    .locals 2

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/n;->b:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/n;->k()V

    return-void
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    return-object v0
.end method

.method c()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/n;->j()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method j()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget v1, v0, Lcom/apicloud/a/i/a/d/a/n;->b:I

    rem-int/lit16 v2, v1, 0xb4

    const/16 v3, 0x5a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/d/a/n;->h()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/d/a/n;->i()I

    move-result v2

    const/16 v5, 0x8

    new-array v6, v5, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v10, 0x1

    aput v9, v6, v10

    int-to-float v1, v1

    aput v1, v6, v4

    const/4 v11, 0x3

    aput v9, v6, v11

    const/4 v12, 0x4

    aput v9, v6, v12

    int-to-float v2, v2

    const/4 v13, 0x5

    aput v2, v6, v13

    const/4 v14, 0x6

    aput v1, v6, v14

    const/4 v15, 0x7

    aput v2, v6, v15

    const/16 v16, 0x0

    iget v15, v0, Lcom/apicloud/a/i/a/d/a/n;->b:I

    if-ne v15, v3, :cond_0

    new-array v3, v5, [F

    aput v9, v3, v8

    aput v2, v3, v10

    aput v9, v3, v4

    aput v9, v3, v11

    aput v1, v3, v12

    aput v2, v3, v13

    aput v1, v3, v14

    const/4 v15, 0x7

    aput v9, v3, v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x7

    new-array v3, v5, [F

    aput v1, v3, v8

    aput v9, v3, v10

    aput v1, v3, v4

    aput v2, v3, v11

    aput v9, v3, v12

    aput v9, v3, v13

    aput v9, v3, v14

    aput v2, v3, v15

    :goto_0
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v8, 0x4

    move-object v1, v7

    move-object v2, v6

    move/from16 v3, v16

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    goto :goto_1

    :cond_1
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/d/a/n;->h()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/d/a/n;->i()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/apicloud/a/i/a/d/a/n;->a:Landroid/view/TextureView;

    invoke-virtual {v1, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
