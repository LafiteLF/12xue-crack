.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;
.super Ljava/lang/Object;
.source "LabyrinthTexture.java"

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

    const-wide/high16 v1, 0x3fb0000000000000L    # 0.0625

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;-><init>(DDDI)V

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    .line 39
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;->Reset()V

    return-void
.end method


# virtual methods
.method public Generate(II)[[F
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 55
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

    .line 61
    :cond_1
    aget-object v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 63
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;->noise:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;->r:I

    add-int v8, v3, v7

    int-to-double v8, v8

    add-int/2addr v7, v2

    int-to-double v10, v7

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/PerlinNoise;->Function2D(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 61
    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public Reset()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 79
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/LabyrinthTexture;->r:I

    return-void
.end method
