.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;
.super Ljava/lang/Object;
.source "ConvolutionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private factor:I

.field private kernel:[[F

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 70
    fill-array-data v1, :array_0

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    .line 71
    aget-object v3, v1, v2

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 72
    aget-object v3, v1, v2

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 73
    aget-object v3, v1, v2

    aput v4, v3, v0

    .line 74
    aget-object v3, v1, v5

    aput v4, v3, v2

    .line 75
    aget-object v3, v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    .line 76
    aget-object v3, v1, v5

    aput v4, v3, v0

    .line 77
    aget-object v3, v1, v0

    aput v4, v3, v2

    .line 78
    aget-object v2, v1, v0

    aput v4, v2, v5

    .line 79
    aget-object v2, v1, v0

    const v3, 0x3ecccccd    # 0.4f

    aput v3, v2, v0

    .line 80
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    .line 81
    iput v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->factor:I

    .line 82
    iput v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->offset:I

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method protected GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I
    .locals 1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    if-lt p2, p4, :cond_1

    add-int/lit8 p2, p4, -0x1

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    if-lt p3, p5, :cond_3

    add-int/lit8 p3, p5, -0x1

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result p4

    mul-int/lit16 p4, p4, 0x1b36

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result p5

    mul-int/lit16 p5, p5, 0x5b8c

    add-int/2addr p4, p5

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0x93e

    add-int/2addr p4, p1

    shr-int/lit8 p1, p4, 0xf

    return p1
.end method

.method protected GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I
    .locals 1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    if-lt p2, p4, :cond_1

    add-int/lit8 p2, p4, -0x1

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    if-lt p3, p5, :cond_3

    add-int/lit8 p3, p5, -0x1

    :cond_3
    :goto_1
    const/high16 p4, -0x1000000

    .line 59
    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result p5

    shl-int/lit8 p5, p5, 0x10

    or-int/2addr p4, p5

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result p5

    shl-int/lit8 p5, p5, 0x8

    or-int/2addr p4, p5

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result p1

    or-int/2addr p1, p4

    return p1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 20

    move-object/from16 v6, p0

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v7

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-lt v10, v7, :cond_0

    return-object p1

    :cond_0
    move v11, v9

    :goto_1
    if-lt v11, v8, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v9

    aget v12, v0, v9

    const/4 v13, 0x0

    cmpl-float v0, v12, v13

    const v14, 0xff00

    const/high16 v15, 0xff0000

    const/16 v5, 0xff

    if-eqz v0, :cond_2

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move v13, v5

    move v5, v8

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v9

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float/2addr v2, v12

    add-float/2addr v2, v1

    float-to-int v2, v2

    and-int v3, v0, v14

    shr-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-float/2addr v3, v12

    add-float/2addr v3, v1

    float-to-int v3, v3

    and-int/2addr v0, v13

    int-to-float v0, v0

    mul-float/2addr v0, v12

    add-float/2addr v1, v0

    float-to-int v0, v1

    move v12, v0

    move v5, v2

    move v4, v3

    goto :goto_2

    :cond_2
    move v13, v5

    move v4, v9

    move v5, v4

    move v12, v5

    .line 105
    :goto_2
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v9

    const/16 v16, 0x1

    aget v17, v0, v16

    const/4 v0, 0x0

    cmpl-float v1, v17, v0

    if-eqz v1, :cond_3

    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v9, v4

    move v4, v7

    move v13, v5

    move v5, v8

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v1, v2

    float-to-int v5, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v1, v2

    float-to-int v4, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v17

    add-float/2addr v1, v0

    float-to-int v12, v1

    :cond_3
    move v9, v4

    move v13, v5

    .line 113
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v17, 0x2

    aget v19, v0, v17

    const/4 v0, 0x0

    cmpl-float v1, v19, v0

    if-eqz v1, :cond_4

    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move v5, v8

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v19

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 121
    :cond_4
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v16

    const/4 v1, 0x0

    aget v19, v0, v1

    const/4 v0, 0x0

    cmpl-float v1, v19, v0

    if-eqz v1, :cond_5

    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v11

    move v4, v7

    move v5, v8

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v19

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 129
    :cond_5
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v16

    aget v19, v0, v16

    const/4 v0, 0x0

    cmpl-float v1, v19, v0

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v4, v7

    move v5, v8

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v19

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 137
    :cond_6
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v16

    aget v19, v0, v17

    const/4 v0, 0x0

    cmpl-float v1, v19, v0

    if-eqz v1, :cond_7

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v11

    move v4, v7

    move v5, v8

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v19

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 145
    :cond_7
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v17

    const/16 v18, 0x0

    aget v19, v0, v18

    const/4 v0, 0x0

    cmpl-float v1, v19, v0

    if-eqz v1, :cond_8

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move v5, v8

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v19

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 153
    :cond_8
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v17

    aget v16, v0, v16

    const/4 v0, 0x0

    cmpl-float v1, v16, v0

    if-eqz v1, :cond_9

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v4, v7

    move v5, v8

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v16

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 161
    :cond_9
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->kernel:[[F

    aget-object v0, v0, v17

    aget v16, v0, v17

    const/4 v0, 0x0

    cmpl-float v0, v16, v0

    if-eqz v0, :cond_a

    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move v5, v8

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    int-to-float v1, v13

    and-int v2, v0, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    float-to-int v13, v1

    int-to-float v1, v9

    and-int v2, v0, v14

    shr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    float-to-int v9, v1

    int-to-float v1, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v16

    add-float/2addr v1, v0

    float-to-int v12, v1

    .line 168
    :cond_a
    iget v0, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->factor:I

    div-int/2addr v13, v0

    iget v1, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;->offset:I

    add-int v2, v13, v1

    .line 169
    div-int/2addr v9, v0

    add-int v3, v9, v1

    .line 170
    div-int/2addr v12, v0

    add-int/2addr v1, v12

    if-gez v2, :cond_b

    move/from16 v2, v18

    :cond_b
    const/16 v0, 0xff

    if-le v2, v0, :cond_c

    move v4, v0

    goto :goto_3

    :cond_c
    move v4, v2

    :goto_3
    if-gez v1, :cond_d

    move/from16 v1, v18

    :cond_d
    if-le v1, v0, :cond_e

    move v5, v0

    goto :goto_4

    :cond_e
    move v5, v1

    :goto_4
    if-gez v3, :cond_f

    move/from16 v1, v18

    goto :goto_5

    :cond_f
    move v1, v3

    :goto_5
    if-le v1, v0, :cond_10

    move v9, v0

    goto :goto_6

    :cond_10
    move v9, v1

    :goto_6
    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move v3, v4

    move v4, v9

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v18

    goto/16 :goto_1
.end method
