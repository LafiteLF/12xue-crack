.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;
.super Ljava/lang/Object;
.source "PaintBorderFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public B:I

.field public G:I

.field public R:I

.field public Size:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->Size:F

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    .line 38
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->R:I

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    .line 39
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->G:I

    and-int/lit16 p1, p1, 0xff

    .line 40
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->B:I

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;-><init>(I)V

    .line 46
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->Size:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 18

    move-object/from16 v0, p0

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    const v3, 0x8000

    if-le v1, v2, :cond_0

    mul-int/2addr v3, v2

    .line 55
    div-int/2addr v3, v1

    goto :goto_0

    :cond_0
    mul-int/2addr v3, v1

    div-int/2addr v3, v2

    :goto_0
    shr-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0x1

    mul-int v6, v4, v4

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    .line 61
    iget v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->Size:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v7

    const/4 v15, 0x0

    :goto_1
    if-lt v15, v1, :cond_1

    .line 86
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    .line 87
    sget v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Additive:I

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    move-object/from16 v14, p1

    .line 88
    invoke-virtual {v1, v7, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v1

    return-object v1

    :cond_1
    move-object/from16 v14, p1

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v2, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    sub-int v9, v4, v15

    sub-int v10, v5, v13

    if-le v1, v2, :cond_3

    mul-int/2addr v9, v3

    shr-int/lit8 v9, v9, 0xf

    goto :goto_3

    :cond_3
    mul-int/2addr v10, v3

    shr-int/lit8 v10, v10, 0xf

    :goto_3
    mul-int/2addr v9, v9

    mul-int/2addr v10, v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    .line 77
    iget v10, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->R:I

    int-to-float v11, v10

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 78
    iget v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->G:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    .line 79
    iget v8, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->B:I

    int-to-float v8, v8

    mul-float/2addr v9, v8

    float-to-int v8, v9

    if-le v11, v10, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    if-gez v11, :cond_5

    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    move/from16 v16, v11

    .line 81
    :goto_4
    iget v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->G:I

    if-le v12, v9, :cond_6

    move/from16 v17, v9

    goto :goto_5

    :cond_6
    if-gez v12, :cond_7

    const/16 v17, 0x0

    goto :goto_5

    :cond_7
    move/from16 v17, v12

    .line 82
    :goto_5
    iget v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PaintBorderFilter;->B:I

    if-le v8, v9, :cond_8

    move v8, v9

    goto :goto_6

    :cond_8
    if-gez v8, :cond_9

    const/4 v8, 0x0

    :cond_9
    :goto_6
    move-object/from16 v9, p1

    move v10, v15

    move v11, v13

    move/from16 v12, v16

    move/from16 v16, v13

    move/from16 v13, v17

    move v14, v8

    .line 83
    invoke-virtual/range {v9 .. v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v16, 0x1

    move-object/from16 v14, p1

    goto :goto_2
.end method
