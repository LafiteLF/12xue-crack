.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;
.super Ljava/lang/Object;
.source "WoodTexture.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;


# instance fields
.field private noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

.field private r:I

.field private rings:D


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fa0000000000000L    # 0.03125

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/16 v7, 0x8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->rings:D

    .line 41
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->Reset()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fa0000000000000L    # 0.03125

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/16 v7, 0x8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->rings:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 52
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->rings:D

    .line 53
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->Reset()V

    return-void
.end method


# virtual methods
.method public Generate(II)[[F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 69
    const-class v5, F

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 70
    div-int/lit8 v5, v1, 0x2

    .line 71
    div-int/lit8 v6, v2, 0x2

    move v7, v4

    :goto_0
    if-lt v7, v2, :cond_0

    return-object v3

    :cond_0
    move v8, v4

    :goto_1
    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sub-int v9, v8, v5

    int-to-double v9, v9

    int-to-double v11, v1

    div-double/2addr v9, v11

    sub-int v11, v7, v6

    int-to-double v11, v11

    int-to-double v13, v2

    div-double/2addr v11, v13

    .line 80
    aget-object v13, v3, v7

    mul-double/2addr v9, v9

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    .line 83
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iget-object v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->r:I

    add-int v15, v8, v12

    move/from16 v16, v5

    int-to-double v4, v15

    add-int/2addr v12, v7

    int-to-double v14, v12

    invoke-virtual {v11, v4, v5, v14, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v4

    add-double/2addr v9, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v4

    .line 84
    iget-wide v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->rings:D

    mul-double/2addr v9, v4

    .line 82
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 80
    aput v4, v13, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public Reset()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 100
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/WoodTexture;->r:I

    return-void
.end method
