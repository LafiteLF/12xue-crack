.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;
.super Ljava/lang/Object;
.source "IllusionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _amount:D

.field _offset:D

.field _scale:D


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    .line 30
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_amount:D

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    int-to-double v8, v1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    int-to-double v10, v1

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v12

    const/4 v14, 0x0

    :goto_0
    int-to-double v5, v14

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v3, v8, v15

    cmpg-double v1, v5, v3

    if-ltz v1, :cond_0

    return-object v7

    :cond_0
    move/from16 v17, v14

    const/4 v2, 0x0

    :goto_1
    int-to-double v13, v2

    move-wide/from16 v18, v3

    sub-double v3, v10, v15

    cmpg-double v1, v13, v3

    if-ltz v1, :cond_1

    add-int/lit8 v14, v17, 0x1

    goto :goto_0

    :cond_1
    move/from16 v1, v17

    .line 41
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v15

    move-object/from16 v16, v12

    .line 42
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v12

    move/from16 v17, v12

    .line 43
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v12

    mul-double v20, v8, v8

    mul-double v22, v10, v10

    add-double v20, v20, v22

    .line 45
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    move/from16 v25, v1

    move/from16 v24, v2

    div-double v1, v20, v22

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_scale:D

    move-wide/from16 v20, v3

    div-double v3, v1, v22

    double-to-int v3, v3

    int-to-double v3, v3

    .line 46
    iput-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_offset:D

    div-double v3, v8, v22

    sub-double v3, v5, v3

    div-double/2addr v3, v1

    div-double v26, v10, v22

    sub-double v26, v13, v26

    div-double v1, v26, v1

    .line 49
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    div-double v26, v26, v22

    move-wide/from16 v28, v8

    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_amount:D

    div-double v26, v26, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    mul-double v7, v7, v22

    move-wide/from16 v22, v10

    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_amount:D

    mul-double/2addr v7, v9

    add-double/2addr v7, v9

    mul-double/2addr v3, v3

    mul-double/2addr v1, v1

    add-double/2addr v3, v1

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 51
    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_offset:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v3, v9

    sub-double v3, v5, v3

    double-to-int v3, v3

    .line 52
    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IllusionFilter;->_offset:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    sub-double/2addr v13, v9

    double-to-int v4, v13

    move-wide/from16 v8, v18

    double-to-int v7, v8

    const/4 v10, 0x0

    .line 53
    invoke-static {v3, v10, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v3

    move-wide/from16 v13, v20

    double-to-int v7, v13

    .line 54
    invoke-static {v4, v10, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v4

    int-to-double v13, v15

    move-object/from16 v7, v16

    .line 56
    invoke-virtual {v7, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v11

    sub-int/2addr v11, v15

    int-to-double v10, v11

    mul-double/2addr v10, v1

    add-double/2addr v13, v10

    invoke-static {v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v10

    move/from16 v11, v17

    int-to-double v13, v11

    .line 57
    invoke-virtual {v7, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v15

    sub-int/2addr v15, v11

    move-wide/from16 v17, v5

    int-to-double v5, v15

    mul-double/2addr v5, v1

    add-double/2addr v13, v5

    invoke-static {v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v5

    int-to-double v13, v12

    .line 58
    invoke-virtual {v7, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    sub-int/2addr v3, v12

    int-to-double v3, v3

    mul-double/2addr v1, v3

    add-double/2addr v13, v1

    invoke-static {v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v6

    move/from16 v14, v25

    move-object/from16 v1, p1

    move/from16 v13, v24

    move v2, v14

    move v3, v13

    move v4, v10

    move-wide/from16 v10, v17

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v2, v13, 0x1

    move-object v12, v7

    move-wide v3, v8

    move-wide v5, v10

    move/from16 v17, v14

    move-wide/from16 v10, v22

    move-wide/from16 v8, v28

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object/from16 v7, p1

    goto/16 :goto_1
.end method
