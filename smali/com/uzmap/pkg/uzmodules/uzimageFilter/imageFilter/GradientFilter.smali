.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;
.super Ljava/lang/Object;
.source "GradientFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

.field public OriginAngleDegree:F

.field private palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->OriginAngleDegree:F

    .line 32
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    return-void
.end method


# virtual methods
.method public ClearCache()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    return-void
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 18

    move-object/from16 v0, p0

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    .line 44
    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->OriginAngleDegree:F

    float-to-double v3, v3

    const-wide v5, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double/2addr v3, v5

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    int-to-float v4, v1

    mul-float/2addr v4, v5

    int-to-float v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    mul-float v6, v5, v4

    mul-float/2addr v4, v3

    mul-float/2addr v6, v6

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    float-to-double v6, v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 51
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 53
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    if-eqz v6, :cond_0

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Length:I

    if-eq v4, v6, :cond_1

    .line 54
    :cond_0
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-virtual {v6, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->CreatePalette(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    move-result-object v4

    iput-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    .line 56
    :cond_1
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Red:[I

    .line 57
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Green:[I

    .line 58
    iget-object v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->palette:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    iget-object v7, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Blue:[I

    const/4 v8, 0x0

    move v15, v8

    :goto_0
    if-lt v15, v2, :cond_2

    return-object p1

    :cond_2
    move v14, v8

    :goto_1
    if-lt v14, v1, :cond_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    int-to-float v9, v14

    mul-float/2addr v9, v5

    int-to-float v10, v15

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    mul-float v10, v5, v9

    mul-float/2addr v9, v3

    mul-float/2addr v10, v10

    mul-float/2addr v9, v9

    add-float/2addr v10, v9

    float-to-double v9, v10

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 65
    aget v12, v4, v9

    aget v13, v6, v9

    aget v16, v7, v9

    move-object/from16 v9, p1

    move v10, v14

    move v11, v15

    move/from16 v17, v14

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v14, v17, 0x1

    goto :goto_1
.end method
