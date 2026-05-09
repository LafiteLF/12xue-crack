.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;
.super Ljava/lang/Object;
.source "TextileTexture.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;


# instance fields
.field private noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fc0000000000000L    # 0.125

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    const/4 v7, 0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    .line 39
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->Reset()V

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

    .line 55
    const-class v5, F

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_0

    return-object v3

    :cond_0
    move v6, v4

    :goto_1
    if-lt v6, v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    aget-object v7, v3, v5

    int-to-double v10, v6

    .line 64
    iget-object v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->r:I

    add-int v14, v6, v13

    int-to-double v14, v14

    add-int/2addr v13, v5

    int-to-double v8, v13

    invoke-virtual {v12, v14, v15, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v8

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-double v9, v5

    .line 65
    iget-object v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->r:I

    add-int v13, v6, v12

    int-to-double v13, v13

    add-int/2addr v12, v5

    move/from16 v16, v5

    int-to-double v4, v12

    invoke-virtual {v11, v13, v14, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v4

    add-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v8, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v8, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v8, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 61
    aput v4, v7, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public Reset()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 83
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TextileTexture;->r:I

    return-void
.end method
