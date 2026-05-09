.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;
.super Ljava/lang/Object;
.source "PerlinNoise.java"


# instance fields
.field private initAmplitude:D

.field private initFrequency:D

.field private octaves:I

.field private persistance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fb0000000000000L    # 0.0625

    .line 30
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initFrequency:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 31
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initAmplitude:D

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->persistance:D

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->octaves:I

    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fb0000000000000L    # 0.0625

    .line 30
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initFrequency:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 31
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initAmplitude:D

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->persistance:D

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->octaves:I

    .line 53
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initFrequency:D

    .line 54
    iput-wide p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initAmplitude:D

    .line 55
    iput-wide p5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->persistance:D

    const/4 p1, 0x1

    .line 56
    invoke-static {p1, p7}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->octaves:I

    return-void
.end method

.method private CosineInterpolate(DDD)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p5, v0

    .line 167
    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p5, v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p5, v2

    sub-double/2addr v0, p5

    mul-double/2addr p1, v0

    mul-double/2addr p3, p5

    add-double/2addr p1, p3

    return-wide p1
.end method

.method private Noise(I)D
    .locals 4

    shl-int/lit8 v0, p1, 0xd

    xor-int/2addr p1, v0

    mul-int v0, p1, p1

    mul-int/lit16 v0, v0, 0x3d73

    const v1, 0xc0ae5

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    const v0, 0x5208dd0d

    add-int/2addr p1, v0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method private Noise(II)D
    .locals 2

    mul-int/lit8 p2, p2, 0x39

    add-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    mul-int p2, p1, p1

    mul-int/lit16 p2, p2, 0x3d73

    const v0, 0xc0ae5

    add-int/2addr p2, v0

    mul-int/2addr p1, p2

    const p2, 0x5208dd0d

    add-int/2addr p1, p2

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    return-wide v0
.end method

.method private SmoothedNoise(D)D
    .locals 10

    double-to-int v0, p1

    int-to-double v1, v0

    sub-double v8, p1, v1

    .line 138
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(I)D

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(I)D

    move-result-wide v6

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->CosineInterpolate(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method private SmoothedNoise(DD)D
    .locals 18

    move-object/from16 v7, p0

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    double-to-int v4, v0

    double-to-int v5, v2

    int-to-double v8, v4

    sub-double v8, v0, v8

    int-to-double v0, v5

    sub-double v10, v2, v0

    .line 149
    invoke-direct {v7, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(II)D

    move-result-wide v1

    add-int/lit8 v0, v4, 0x1

    .line 150
    invoke-direct {v7, v0, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(II)D

    move-result-wide v12

    add-int/lit8 v5, v5, 0x1

    .line 151
    invoke-direct {v7, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(II)D

    move-result-wide v14

    .line 152
    invoke-direct {v7, v0, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Noise(II)D

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v3, v12

    move-wide v5, v8

    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->CosineInterpolate(DDD)D

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    .line 156
    invoke-direct/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->CosineInterpolate(DDD)D

    move-result-wide v3

    move-wide v1, v12

    move-wide v5, v10

    .line 158
    invoke-direct/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->CosineInterpolate(DDD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public Function(D)D
    .locals 9

    .line 69
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initFrequency:D

    .line 70
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initAmplitude:D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 74
    :goto_0
    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->octaves:I

    if-lt v6, v7, :cond_0

    return-wide v4

    :cond_0
    mul-double v7, p1, v0

    .line 76
    invoke-direct {p0, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->SmoothedNoise(D)D

    move-result-wide v7

    mul-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v7

    .line 79
    iget-wide v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->persistance:D

    mul-double/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public Function2D(DD)D
    .locals 11

    .line 95
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initFrequency:D

    .line 96
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->initAmplitude:D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 100
    :goto_0
    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->octaves:I

    if-lt v6, v7, :cond_0

    return-wide v4

    :cond_0
    mul-double v7, p1, v0

    mul-double v9, p3, v0

    .line 102
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->SmoothedNoise(DD)D

    move-result-wide v7

    mul-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v7

    .line 105
    iget-wide v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->persistance:D

    mul-double/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
