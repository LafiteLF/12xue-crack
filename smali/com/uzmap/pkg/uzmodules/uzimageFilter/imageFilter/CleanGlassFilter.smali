.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/CleanGlassFilter;
.super Ljava/lang/Object;
.source "CleanGlassFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/CleanGlassFilter;->Size:F

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/CleanGlassFilter;->Size:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 19

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v2

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    const v5, 0x8000

    if-le v3, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    mul-int/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    mul-int/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    :goto_0
    div-int/2addr v3, v4

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v6

    shr-int/2addr v6, v5

    mul-int v7, v4, v4

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 51
    iget v10, v9, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/CleanGlassFilter;->Size:F

    sub-float/2addr v8, v10

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    move v15, v8

    :goto_1
    if-lt v15, v0, :cond_1

    return-object p1

    :cond_1
    move v14, v8

    :goto_2
    if-lt v14, v1, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    sub-int v10, v4, v15

    sub-int v11, v6, v14

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_3

    mul-int/2addr v11, v3

    shr-int/lit8 v11, v11, 0xe

    goto :goto_3

    :cond_3
    mul-int/2addr v10, v3

    shr-int/lit8 v10, v10, 0xe

    :goto_3
    mul-int/2addr v10, v10

    mul-int/2addr v11, v11

    add-int/2addr v10, v11

    if-le v10, v7, :cond_6

    const v10, 0x1e240

    .line 73
    invoke-static {v5, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v10

    .line 74
    rem-int/lit8 v10, v10, 0x13

    add-int v11, v15, v10

    add-int/2addr v10, v14

    if-lt v11, v0, :cond_4

    add-int/lit8 v11, v0, -0x1

    :cond_4
    if-lt v10, v1, :cond_5

    add-int/lit8 v10, v1, -0x1

    .line 84
    :cond_5
    invoke-virtual {v2, v11, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v13

    .line 85
    invoke-virtual {v2, v11, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v16

    .line 86
    invoke-virtual {v2, v11, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v17

    move-object/from16 v10, p1

    move v11, v15

    move v12, v14

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v17

    .line 87
    invoke-virtual/range {v10 .. v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_4

    :cond_6
    move/from16 v18, v14

    move/from16 v16, v15

    :goto_4
    add-int/lit8 v14, v18, 0x1

    move/from16 v15, v16

    goto :goto_2
.end method
