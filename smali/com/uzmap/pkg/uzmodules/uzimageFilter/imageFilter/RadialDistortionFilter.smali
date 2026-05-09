.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.super Ljava/lang/Object;
.source "RadialDistortionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;
    }
.end annotation


# instance fields
.field public Center:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

.field public Distortion:F

.field public Radius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Radius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 37
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Distortion:F

    .line 38
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    invoke-direct {v1, v0, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Center:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 24

    move-object/from16 v0, p0

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    int-to-float v3, v1

    .line 45
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Center:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v2

    .line 46
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Center:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Radius:F

    mul-float/2addr v5, v6

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v6

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    if-lt v15, v2, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    sub-int v8, v14, v3

    mul-int v9, v8, v8

    sub-int v10, v15, v4

    mul-int v11, v10, v10

    add-int/2addr v9, v11

    int-to-double v11, v9

    .line 53
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v9, v11

    div-float/2addr v9, v5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v11, v9

    const/4 v12, 0x0

    cmpl-float v13, v9, v12

    if-lez v13, :cond_c

    .line 56
    iget v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;->Distortion:F

    mul-float/2addr v13, v9

    mul-float/2addr v13, v9

    sub-float v9, v11, v13

    int-to-float v8, v8

    mul-float/2addr v8, v9

    int-to-float v13, v3

    add-float/2addr v8, v13

    int-to-float v10, v10

    mul-float/2addr v10, v9

    int-to-float v9, v4

    add-float/2addr v10, v9

    float-to-int v9, v8

    int-to-float v13, v9

    sub-float/2addr v8, v13

    cmpl-float v13, v8, v12

    if-lez v13, :cond_2

    add-int/lit8 v13, v9, 0x1

    goto :goto_2

    :cond_2
    move v13, v9

    :goto_2
    float-to-int v7, v10

    int-to-float v11, v7

    sub-float/2addr v10, v11

    cmpl-float v11, v10, v12

    if-lez v11, :cond_3

    add-int/lit8 v11, v7, 0x1

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    if-gez v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    if-lt v9, v1, :cond_5

    add-int/lit8 v9, v1, -0x1

    :cond_5
    :goto_4
    if-gez v13, :cond_6

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    if-lt v13, v1, :cond_7

    add-int/lit8 v13, v1, -0x1

    :cond_7
    :goto_5
    if-gez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    if-lt v7, v2, :cond_9

    add-int/lit8 v7, v2, -0x1

    :cond_9
    :goto_6
    if-gez v11, :cond_a

    const/4 v11, 0x0

    goto :goto_7

    :cond_a
    if-lt v11, v2, :cond_b

    add-int/lit8 v11, v2, -0x1

    .line 89
    :cond_b
    :goto_7
    invoke-virtual {v6, v9, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v12

    .line 90
    invoke-virtual {v6, v9, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v0

    move/from16 v17, v1

    .line 91
    invoke-virtual {v6, v9, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v1

    move/from16 v18, v2

    .line 93
    invoke-virtual {v6, v13, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v2

    move/from16 v19, v3

    .line 94
    invoke-virtual {v6, v13, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    .line 95
    invoke-virtual {v6, v13, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v7

    move/from16 v20, v4

    .line 96
    invoke-virtual {v6, v13, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v4

    move/from16 v21, v5

    .line 97
    invoke-virtual {v6, v13, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v5

    .line 98
    invoke-virtual {v6, v13, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v13

    move/from16 v22, v14

    .line 99
    invoke-virtual {v6, v9, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v14

    move/from16 v23, v15

    .line 100
    invoke-virtual {v6, v9, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v15

    .line 101
    invoke-virtual {v6, v9, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    int-to-float v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v16, v12, v10

    mul-float v11, v11, v16

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    int-to-float v2, v2

    mul-float v2, v2, v16

    mul-float/2addr v2, v8

    add-float/2addr v11, v2

    int-to-float v2, v4

    mul-float/2addr v2, v10

    mul-float/2addr v2, v8

    add-float/2addr v11, v2

    int-to-float v2, v14

    mul-float/2addr v2, v10

    mul-float/2addr v2, v12

    add-float/2addr v11, v2

    float-to-int v2, v11

    int-to-float v0, v0

    mul-float v0, v0, v16

    mul-float/2addr v0, v12

    int-to-float v3, v3

    mul-float v3, v3, v16

    mul-float/2addr v3, v8

    add-float/2addr v0, v3

    int-to-float v3, v5

    mul-float/2addr v3, v10

    mul-float/2addr v3, v8

    add-float/2addr v0, v3

    int-to-float v3, v15

    mul-float/2addr v3, v10

    mul-float/2addr v3, v12

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v16

    mul-float/2addr v1, v12

    int-to-float v3, v7

    mul-float v3, v3, v16

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    int-to-float v3, v13

    mul-float/2addr v3, v10

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    int-to-float v3, v9

    mul-float/2addr v3, v10

    mul-float/2addr v3, v12

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v12, v0

    move v13, v1

    move v11, v2

    move/from16 v14, v22

    move/from16 v7, v23

    goto :goto_8

    :cond_c
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move v7, v15

    .line 107
    invoke-virtual {v6, v14, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v0

    .line 108
    invoke-virtual {v6, v14, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v1

    .line 109
    invoke-virtual {v6, v14, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v2

    move v11, v0

    move v12, v1

    move v13, v2

    :goto_8
    move-object/from16 v8, p1

    move v9, v14

    move v10, v7

    .line 111
    invoke-virtual/range {v8 .. v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    goto/16 :goto_1
.end method
