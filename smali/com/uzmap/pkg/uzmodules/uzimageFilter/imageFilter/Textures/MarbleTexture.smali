.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;
.super Ljava/lang/Object;
.source "MarbleTexture.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;


# instance fields
.field private noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

.field private r:I

.field private xPeriod:D

.field private yPeriod:D


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fa0000000000000L    # 0.03125

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    const/4 v7, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->xPeriod:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 33
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->yPeriod:D

    .line 43
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->Reset()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fa0000000000000L    # 0.03125

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    const/4 v7, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->xPeriod:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 33
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->yPeriod:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 55
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->xPeriod:D

    .line 56
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->yPeriod:D

    .line 57
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->Reset()V

    return-void
.end method


# virtual methods
.method public Generate(II)[[F
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 73
    const-class v5, F

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 74
    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->xPeriod:D

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 75
    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->yPeriod:D

    int-to-double v9, v2

    div-double/2addr v7, v9

    move v9, v4

    :goto_0
    if-lt v9, v2, :cond_0

    return-object v3

    :cond_0
    move v10, v4

    :goto_1
    if-lt v10, v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 81
    :cond_1
    aget-object v11, v3, v9

    int-to-double v13, v10

    mul-double/2addr v13, v5

    move-wide v15, v5

    int-to-double v4, v9

    mul-double/2addr v4, v7

    add-double/2addr v13, v4

    .line 84
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->r:I

    add-int v6, v10, v5

    move-wide/from16 v17, v13

    int-to-double v12, v6

    add-int/2addr v5, v9

    int-to-double v5, v5

    invoke-virtual {v4, v12, v13, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v4

    add-double v13, v17, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v4

    .line 83
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 82
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 81
    aput v4, v11, v10

    add-int/lit8 v10, v10, 0x1

    move-wide v5, v15

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public Reset()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 103
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/MarbleTexture;->r:I

    return-void
.end method
