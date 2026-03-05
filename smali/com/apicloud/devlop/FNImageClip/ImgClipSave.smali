.class public Lcom/apicloud/devlop/FNImageClip/ImgClipSave;
.super Ljava/lang/Object;
.source "ImgClipSave.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSaveBitmap(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;Lcom/apicloud/devlop/FNImageClip/ClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getmLeft()F

    move-result v0

    float-to-int v0, v0

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getmTop()F

    move-result v1

    float-to-int v1, v1

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getmRight()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getmBottom()F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 80
    sget-boolean v6, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mHighDefinition:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmImgBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmImageView()Landroid/widget/ImageView;

    move-result-object v8

    .line 83
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    const/16 v9, 0x9

    new-array v9, v9, [F

    .line 85
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 87
    aget v8, v9, v7

    const/4 v10, 0x0

    mul-float/2addr v8, v10

    const/4 v11, 0x1

    aget v12, v9, v11

    mul-float/2addr v12, v10

    add-float/2addr v8, v12

    const/4 v12, 0x2

    aget v13, v9, v12

    add-float/2addr v8, v13

    const/4 v13, 0x3

    .line 88
    aget v14, v9, v13

    mul-float/2addr v14, v10

    const/4 v15, 0x4

    aget v16, v9, v15

    mul-float v16, v16, v10

    add-float v14, v14, v16

    const/16 v16, 0x5

    aget v17, v9, v16

    add-float v14, v14, v17

    .line 89
    aget v17, v9, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v17, v17, v7

    aget v7, v9, v11

    mul-float/2addr v7, v10

    add-float v17, v17, v7

    aget v7, v9, v12

    add-float v17, v17, v7

    .line 90
    aget v7, v9, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    aget v7, v9, v15

    aget v7, v9, v16

    const/16 v18, 0x0

    .line 91
    aget v7, v9, v18

    aget v7, v9, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    aget v7, v9, v12

    .line 92
    aget v7, v9, v13

    mul-float/2addr v7, v10

    aget v10, v9, v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v10, v15

    add-float/2addr v7, v10

    aget v10, v9, v16

    add-float/2addr v7, v10

    const/16 v18, 0x0

    .line 93
    aget v10, v9, v18

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    aget v10, v9, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    aget v10, v9, v12

    .line 94
    aget v10, v9, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aget v9, v9, v16

    add-float/2addr v10, v9

    float-to-int v9, v8

    float-to-int v11, v14

    sub-float v12, v17, v8

    float-to-int v13, v12

    sub-float/2addr v7, v14

    float-to-int v7, v7

    .line 99
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v12, v15

    add-int v15, v0, v2

    move/from16 v16, v2

    int-to-float v2, v15

    cmpl-float v2, v8, v2

    if-gtz v2, :cond_6

    cmpg-float v2, v17, v3

    if-ltz v2, :cond_6

    add-int v2, v1, v4

    int-to-float v3, v2

    cmpl-float v3, v14, v3

    if-gtz v3, :cond_6

    cmpg-float v3, v10, v5

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    if-le v0, v9, :cond_1

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    if-le v1, v11, :cond_2

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    add-int/2addr v13, v9

    if-le v15, v13, :cond_3

    move v15, v13

    :cond_3
    add-int/2addr v7, v11

    if-le v2, v7, :cond_4

    move v2, v7

    :cond_4
    sub-int v3, v0, v9

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-int v3, v3

    sub-int v4, v1, v11

    int-to-float v4, v4

    div-float/2addr v4, v12

    float-to-int v4, v4

    sub-int/2addr v15, v0

    int-to-float v0, v15

    div-float/2addr v0, v12

    float-to-int v0, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v12

    float-to-int v1, v1

    move v2, v0

    move v0, v3

    move/from16 v19, v4

    move v4, v1

    move/from16 v1, v19

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    move/from16 v18, v7

    :cond_6
    :goto_2
    move-object/from16 v6, p3

    move/from16 v2, v16

    .line 118
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 119
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 121
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v4, v3, :cond_8

    .line 122
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_8
    add-int v3, v1, v4

    .line 125
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v3, v5, :cond_9

    move/from16 v1, v18

    :cond_9
    add-int v3, v0, v2

    .line 129
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v3, v5, :cond_a

    move/from16 v7, v18

    goto :goto_4

    :cond_a
    move v7, v0

    .line 132
    :goto_4
    invoke-static {v6, v7, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveScan(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;

    invoke-direct {v0, p2}, Lcom/apicloud/devlop/FNImageClip/MediaScanner;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const-string v4, "png"

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p2

    .line 66
    invoke-virtual {v0, v1, p1}, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception==="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public save(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/apicloud/devlop/FNImageClip/UzImgClip;)V
    .locals 11

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmClipView()Lcom/apicloud/devlop/FNImageClip/ClipView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 31
    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setVisibility(I)V

    .line 33
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/apicloud/devlop/FNImageClip/ScreenShot;->createSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setVisibility(I)V

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;->createSaveBitmap(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;Lcom/apicloud/devlop/FNImageClip/ClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "quality"

    .line 36
    invoke-virtual {p3, v3, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 37
    new-instance v1, Lcom/apicloud/devlop/FNImageClip/SaveUtil;

    move-object v4, v1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/apicloud/devlop/FNImageClip/UzImgClip;Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;D)V

    .line 39
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->isCircle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->saveOutput(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1, v0}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->saveOutput(Landroid/graphics/Bitmap;)V

    .line 45
    :goto_0
    iget-object p1, v1, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mAlbumPath:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;->saveScan(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 145
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v3, v0

    move v4, v2

    move v5, v3

    goto :goto_0

    .line 156
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-int v4, v0, v1

    .line 157
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v5, v1

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    .line 169
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 174
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v9, v2

    float-to-int v3, v3

    float-to-int v10, v5

    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v2, v2

    float-to-int v9, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 178
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v2, -0xbdbdbe

    .line 182
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {v6, v1, v1, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 189
    invoke-virtual {v6, p1, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method
