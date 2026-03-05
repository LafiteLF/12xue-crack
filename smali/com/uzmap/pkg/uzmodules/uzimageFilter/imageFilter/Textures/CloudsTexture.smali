.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;
.super Ljava/lang/Object;
.source "CloudsTexture.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;


# instance fields
.field private noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    const-wide/high16 v1, 0x3fa0000000000000L    # 0.03125

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/16 v7, 0x8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    .line 38
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;->Reset()V

    return-void
.end method


# virtual methods
.method public Generate(II)[[F
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 54
    const-class v2, F

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    return-object v0

    :cond_0
    move v3, v1

    :goto_1
    if-lt v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    aget-object v4, v0, v2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;->r:I

    add-int v9, v3, v8

    int-to-double v9, v9

    add-int/2addr v8, v2

    int-to-double v11, v8

    invoke-virtual {v7, v9, v10, v11, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v7, v8

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 60
    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public Reset()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 78
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/CloudsTexture;->r:I

    return-void
.end method
