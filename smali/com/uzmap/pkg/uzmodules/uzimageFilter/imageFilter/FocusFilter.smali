.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;
.source "FocusFilter.java"


# instance fields
.field public Size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->Size:F

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->Size:F

    const/high16 v0, 0x41c80000    # 25.0f

    .line 34
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->Sigma:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    const v3, 0x8000

    if-le v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    mul-int/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    mul-int/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    :goto_0
    div-int/2addr v1, v2

    move v8, v1

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v9, v1, 0x1

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    shr-int/lit8 v10, v1, 0x1

    mul-int v1, v9, v9

    mul-int v2, v10, v10

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->Size:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v12

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v13

    .line 51
    invoke-virtual {v0, v7, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->ConvertImageWithPadding(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;II)[F

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->ApplyBlur([FII)[F

    move-result-object v14

    .line 53
    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FocusFilter;->Padding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v15, v12, v1

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_1
    if-lt v6, v13, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v1, v6, 0x3

    mul-int/2addr v1, v15

    add-int/lit8 v17, v1, 0x3

    move/from16 v5, v16

    :goto_2
    if-lt v5, v12, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sub-int v1, v9, v5

    sub-int v2, v10, v6

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    mul-int/2addr v2, v8

    shr-int/lit8 v2, v2, 0xe

    goto :goto_3

    :cond_3
    mul-int/2addr v1, v8

    shr-int/lit8 v1, v1, 0xe

    :goto_3
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    if-le v1, v11, :cond_4

    add-int v1, v17, v5

    mul-int/lit8 v1, v1, 0x3

    .line 75
    aget v2, v14, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v4, v2

    add-int/lit8 v2, v1, 0x1

    aget v2, v14, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x2

    aget v1, v14, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-byte v3, v1

    move-object/from16 v1, p1

    move/from16 v18, v2

    move v2, v5

    move/from16 v19, v3

    move v3, v6

    move/from16 v20, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_4

    :cond_4
    move/from16 v20, v5

    move/from16 v18, v6

    :goto_4
    add-int/lit8 v5, v20, 0x1

    move/from16 v6, v18

    goto :goto_2
.end method
