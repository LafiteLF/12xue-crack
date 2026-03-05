.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SharpFilter;
.super Ljava/lang/Object;
.source "SharpFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SharpFilter;->_step:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SharpFilter;->_step:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 21

    move-object/from16 v6, p1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v7

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v9

    const v0, 0xffffff

    .line 39
    invoke-virtual {v6, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clearImage(I)V

    const/16 v0, 0x9

    new-array v10, v0, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v13, 0x1

    aput v12, v10, v13

    const/4 v0, 0x2

    aput v12, v10, v0

    const/4 v0, 0x3

    aput v12, v10, v0

    move-object/from16 v14, p0

    .line 41
    iget v0, v14, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SharpFilter;->_step:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    const/4 v2, 0x4

    aput v0, v10, v2

    const/4 v0, 0x5

    aput v12, v10, v0

    const/4 v0, 0x6

    aput v12, v10, v0

    const/4 v0, 0x7

    aput v12, v10, v0

    aput v12, v10, v1

    move v15, v13

    :goto_0
    add-int/lit8 v0, v8, -0x1

    if-lt v15, v0, :cond_0

    return-object v6

    :cond_0
    move v5, v13

    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-lt v5, v0, :cond_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    move v2, v1

    move v3, v2

    move v4, v3

    move v0, v12

    :goto_2
    if-le v0, v13, :cond_2

    add-int/lit8 v4, v15, -0x1

    add-int/lit8 v16, v5, -0x1

    .line 62
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v17

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v18

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v19

    move-object/from16 v0, p1

    move v1, v4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v16, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v5, v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v5

    move v5, v12

    :goto_3
    if-le v5, v13, :cond_3

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v16

    goto :goto_2

    :cond_3
    add-int v11, v15, v5

    add-int v12, v16, v0

    .line 52
    invoke-virtual {v9, v11, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v19

    .line 53
    invoke-virtual {v9, v11, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v20

    .line 54
    invoke-virtual {v9, v11, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v11

    .line 56
    aget v12, v10, v4

    mul-int v19, v19, v12

    add-int v1, v1, v19

    .line 57
    aget v12, v10, v4

    mul-int v20, v20, v12

    add-int v2, v2, v20

    .line 58
    aget v12, v10, v4

    mul-int/2addr v11, v12

    add-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_3
.end method
