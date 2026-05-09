.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;
.super Ljava/lang/Object;
.source "GaussianBlurFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# static fields
.field protected static Padding:I = 0x3


# instance fields
.field public Sigma:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Sigma:F

    return-void
.end method


# virtual methods
.method ApplyBlur([FII)[F
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 37
    array-length v10, v0

    new-array v11, v10, [F

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    sget v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Padding:I

    mul-int/lit8 v1, v0, 0x2

    add-int v12, p2, v1

    mul-int/lit8 v0, v0, 0x2

    add-int v13, p3, v0

    .line 44
    iget v0, v9, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Sigma:F

    mul-float v1, v0, v0

    mul-float v2, v1, v0

    const v3, 0x401c6ca0

    mul-float/2addr v0, v3

    const v3, 0x3fca0419

    add-float/2addr v3, v0

    const v4, 0x3fb6cbfb    # 1.4281f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const v5, 0x3ed82b41

    mul-float v14, v2, v5

    add-float v15, v3, v14

    const v3, 0x4036cbd1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    const v1, 0x3fa22047

    mul-float/2addr v2, v1

    add-float v16, v0, v2

    add-float/2addr v4, v2

    neg-float v8, v4

    add-float v0, v16, v8

    add-float/2addr v0, v14

    div-float/2addr v0, v15

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v17, v1, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v5, v16

    move v6, v8

    move v7, v14

    move/from16 v18, v8

    move/from16 v8, v17

    .line 56
    invoke-virtual/range {v0 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->ApplyPass([FIIFFFFF)V

    .line 59
    new-array v10, v10, [F

    .line 60
    invoke-virtual {v9, v11, v10, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Transpose([F[FII)V

    move-object v1, v10

    move v2, v13

    move v3, v12

    move/from16 v6, v18

    .line 63
    invoke-virtual/range {v0 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->ApplyPass([FIIFFFFF)V

    .line 66
    invoke-virtual {v9, v10, v11, v13, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Transpose([F[FII)V

    return-object v11
.end method

.method ApplyPass([FIIFFFFF)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p4

    mul-int/lit8 p2, p2, 0x3

    const/4 p4, 0x0

    :goto_0
    if-lt p4, p3, :cond_0

    return-void

    :cond_0
    mul-int v1, p4, p2

    add-int/lit8 v2, v1, 0x9

    :goto_1
    add-int v3, v1, p2

    if-lt v2, v3, :cond_2

    add-int/lit8 v3, v3, -0x9

    add-int/lit8 v3, v3, -0x3

    :goto_2
    if-ge v3, v1, :cond_1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    aget v2, p1, v3

    mul-float/2addr v2, p8

    add-int/lit8 v4, v3, 0x3

    aget v4, p1, v4

    mul-float/2addr v4, p5

    add-int/lit8 v5, v3, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, p7

    add-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    aput v2, p1, v3

    add-int/lit8 v2, v3, 0x1

    .line 84
    aget v4, p1, v2

    mul-float/2addr v4, p8

    add-int/lit8 v5, v2, 0x3

    aget v5, p1, v5

    mul-float/2addr v5, p5

    add-int/lit8 v6, v2, 0x6

    aget v6, p1, v6

    mul-float/2addr v6, p6

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, p1, v6

    mul-float/2addr v6, p7

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v2

    add-int/lit8 v2, v3, 0x2

    .line 85
    aget v4, p1, v2

    mul-float/2addr v4, p8

    add-int/lit8 v5, v2, 0x3

    aget v5, p1, v5

    mul-float/2addr v5, p5

    add-int/lit8 v6, v2, 0x6

    aget v6, p1, v6

    mul-float/2addr v6, p6

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x9

    aget v6, p1, v6

    mul-float/2addr v6, p7

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v2

    add-int/lit8 v3, v3, -0x3

    goto :goto_2

    .line 78
    :cond_2
    aget v3, p1, v2

    mul-float/2addr v3, p8

    add-int/lit8 v4, v2, -0x3

    aget v4, p1, v4

    mul-float/2addr v4, p5

    add-int/lit8 v5, v2, -0x6

    aget v5, p1, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/lit8 v5, v2, -0x9

    aget v5, p1, v5

    mul-float/2addr v5, p7

    add-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v3, v2, 0x1

    .line 79
    aget v4, p1, v3

    mul-float/2addr v4, p8

    add-int/lit8 v5, v3, -0x3

    aget v5, p1, v5

    mul-float/2addr v5, p5

    add-int/lit8 v6, v3, -0x6

    aget v6, p1, v6

    mul-float/2addr v6, p6

    add-float/2addr v5, v6

    add-int/lit8 v6, v3, -0x9

    aget v6, p1, v6

    mul-float/2addr v6, p7

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x2

    .line 80
    aget v4, p1, v3

    mul-float/2addr v4, p8

    add-int/lit8 v5, v3, -0x3

    aget v5, p1, v5

    mul-float/2addr v5, p5

    add-int/lit8 v6, v3, -0x6

    aget v6, p1, v6

    mul-float/2addr v6, p6

    add-float/2addr v5, v6

    add-int/lit8 v6, v3, -0x9

    aget v6, p1, v6

    mul-float/2addr v6, p7

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_1
.end method

.method ConvertImageWithPadding(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;II)[F
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 107
    sget v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Padding:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    mul-int v5, v4, v3

    mul-int/lit8 v5, v5, 0x3

    .line 109
    new-array v5, v5, [F

    const/4 v7, -0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-lt v8, v4, :cond_0

    return-object v5

    :cond_0
    if-gez v7, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    if-lt v7, v2, :cond_2

    add-int/lit8 v10, v2, -0x1

    goto :goto_1

    :cond_2
    move v10, v7

    .line 122
    :goto_1
    sget v11, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Padding:I

    mul-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    :goto_2
    if-lt v12, v3, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-gez v11, :cond_4

    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    if-lt v11, v1, :cond_5

    add-int/lit8 v13, v1, -0x1

    goto :goto_3

    :cond_5
    move v13, v11

    .line 131
    :goto_3
    invoke-virtual {v0, v13, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3b808081

    mul-float/2addr v14, v15

    aput v14, v5, v9

    add-int/lit8 v14, v9, 0x1

    .line 132
    invoke-virtual {v0, v13, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    aput v6, v5, v14

    add-int/lit8 v6, v9, 0x2

    .line 133
    invoke-virtual {v0, v13, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v15

    aput v13, v5, v6

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x3

    goto :goto_2
.end method

.method Transpose([F[FII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p4, :cond_0

    return-void

    :cond_0
    move v2, v0

    :goto_1
    if-lt v2, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int v3, v2, p4

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    mul-int v4, v1, p3

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v4, v5

    .line 97
    aget v5, p1, v4

    aput v5, p2, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    .line 98
    aget v6, p1, v6

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 99
    aget v4, p1, v4

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 14

    .line 145
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 146
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 147
    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->ConvertImageWithPadding(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;II)[F

    move-result-object v2

    .line 148
    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->ApplyBlur([FII)[F

    move-result-object v2

    .line 149
    sget v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Padding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_0
    if-lt v11, v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v5, v11, 0x3

    mul-int/2addr v5, v3

    add-int/lit8 v12, v5, 0x3

    move v13, v4

    :goto_1
    if-lt v13, v0, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    add-int v5, v12, v13

    mul-int/lit8 v5, v5, 0x3

    .line 155
    aget v6, v2, v5

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v8, v6

    add-int/lit8 v6, v5, 0x1

    aget v6, v2, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-byte v9, v6

    add-int/lit8 v5, v5, 0x2

    aget v5, v2, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    int-to-byte v10, v5

    move-object v5, p1

    move v6, v13

    move v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method
