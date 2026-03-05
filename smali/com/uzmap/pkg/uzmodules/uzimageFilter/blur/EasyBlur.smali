.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
.super Ljava/lang/Object;
.source "EasyBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;
    }
.end annotation


# static fields
.field private static final SCALE:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "EasyBlur"

.field private static volatile singleton:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

.field private mRadius:I

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    const/high16 v0, 0x3e000000    # 0.125f

    .line 25
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mScale:F

    .line 27
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mPolicy:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 40

    move/from16 v0, p2

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 191
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ge v0, v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 200
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v2, v13

    .line 202
    new-array v15, v14, [I

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "pix"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v15

    move v8, v2

    move-object/from16 v16, v11

    move v11, v2

    move-object/from16 v17, v12

    move v12, v13

    .line 204
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v13, -0x1

    add-int v7, v0, v0

    add-int/2addr v7, v4

    .line 211
    new-array v8, v14, [I

    .line 212
    new-array v9, v14, [I

    .line 213
    new-array v10, v14, [I

    .line 215
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    add-int/lit8 v12, v7, 0x1

    shr-int/2addr v12, v4

    mul-int/2addr v12, v12

    mul-int/lit16 v3, v12, 0x100

    .line 219
    new-array v4, v3, [I

    move/from16 v18, v12

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v3, :cond_c

    const/4 v3, 0x3

    const/4 v12, 0x2

    move/from16 v19, v5

    new-array v5, v12, [I

    const/16 v18, 0x1

    aput v3, v5, v18

    const/4 v3, 0x0

    aput v7, v5, v3

    .line 226
    const-class v3, I

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [[I

    add-int/lit8 v20, v0, 0x1

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_1
    if-lt v3, v13, :cond_7

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v2, :cond_1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v15

    move v8, v2

    move v11, v2

    move v12, v13

    .line 390
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1

    :cond_1
    neg-int v12, v0

    mul-int v19, v12, v2

    move-object/from16 v28, v1

    move v1, v12

    move/from16 v29, v14

    move/from16 v14, v19

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_3
    if-le v1, v0, :cond_4

    move/from16 v30, v0

    move v14, v3

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v13, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v28

    move/from16 v14, v29

    const/4 v12, 0x2

    goto :goto_2

    :cond_2
    const/high16 v31, -0x1000000

    .line 344
    aget v32, v15, v14

    and-int v31, v32, v31

    aget v32, v4, v12

    shl-int/lit8 v32, v32, 0x10

    or-int v31, v31, v32

    aget v32, v4, v19

    shl-int/lit8 v32, v32, 0x8

    or-int v31, v31, v32

    aget v32, v4, v21

    or-int v31, v31, v32

    aput v31, v15, v14

    sub-int v12, v12, v22

    sub-int v19, v19, v23

    sub-int v21, v21, v24

    sub-int v31, v30, v0

    add-int v31, v31, v7

    .line 351
    rem-int v31, v31, v7

    aget-object v31, v5, v31

    const/16 v32, 0x0

    .line 353
    aget v33, v31, v32

    sub-int v22, v22, v33

    const/16 v32, 0x1

    .line 354
    aget v33, v31, v32

    sub-int v23, v23, v33

    const/16 v18, 0x2

    .line 355
    aget v32, v31, v18

    sub-int v24, v24, v32

    move/from16 v32, v13

    if-nez v3, :cond_3

    add-int v13, v1, v20

    .line 358
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    mul-int/2addr v13, v2

    aput v13, v11, v1

    .line 360
    :cond_3
    aget v13, v11, v1

    add-int/2addr v13, v3

    .line 362
    aget v33, v8, v13

    const/16 v34, 0x0

    aput v33, v31, v34

    .line 363
    aget v33, v9, v13

    const/16 v35, 0x1

    aput v33, v31, v35

    .line 364
    aget v13, v10, v13

    const/16 v18, 0x2

    aput v13, v31, v18

    .line 366
    aget v13, v31, v34

    add-int v25, v25, v13

    .line 367
    aget v13, v31, v35

    add-int v26, v26, v13

    .line 368
    aget v13, v31, v18

    add-int v27, v27, v13

    add-int v12, v12, v25

    add-int v19, v19, v26

    add-int v21, v21, v27

    add-int/lit8 v30, v30, 0x1

    .line 374
    rem-int v30, v30, v7

    .line 375
    aget-object v13, v5, v30

    move-object/from16 v31, v15

    const/4 v15, 0x0

    .line 377
    aget v33, v13, v15

    add-int v22, v22, v33

    const/16 v33, 0x1

    .line 378
    aget v34, v13, v33

    add-int v23, v23, v34

    const/16 v18, 0x2

    .line 379
    aget v34, v13, v18

    add-int v24, v24, v34

    .line 381
    aget v34, v13, v15

    sub-int v25, v25, v34

    .line 382
    aget v34, v13, v33

    sub-int v26, v26, v34

    .line 383
    aget v13, v13, v18

    sub-int v27, v27, v13

    add-int/2addr v14, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v31

    move/from16 v13, v32

    goto/16 :goto_4

    :cond_4
    move/from16 v32, v13

    move-object/from16 v31, v15

    const/4 v15, 0x0

    .line 312
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v13, v3

    add-int v30, v1, v0

    .line 314
    aget-object v30, v5, v30

    .line 316
    aget v33, v8, v13

    aput v33, v30, v15

    .line 317
    aget v15, v9, v13

    const/16 v33, 0x1

    aput v15, v30, v33

    .line 318
    aget v15, v10, v13

    const/16 v18, 0x2

    aput v15, v30, v18

    .line 320
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int v15, v20, v15

    .line 322
    aget v33, v8, v13

    mul-int v33, v33, v15

    add-int v12, v12, v33

    .line 323
    aget v33, v9, v13

    mul-int v33, v33, v15

    add-int v19, v19, v33

    .line 324
    aget v13, v10, v13

    mul-int/2addr v13, v15

    add-int v21, v21, v13

    if-lez v1, :cond_5

    const/4 v13, 0x0

    .line 327
    aget v15, v30, v13

    add-int v25, v25, v15

    const/4 v15, 0x1

    .line 328
    aget v33, v30, v15

    add-int v26, v26, v33

    const/16 v18, 0x2

    .line 329
    aget v30, v30, v18

    add-int v27, v27, v30

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x2

    .line 331
    aget v33, v30, v13

    add-int v22, v22, v33

    .line 332
    aget v13, v30, v15

    add-int v23, v23, v13

    .line 333
    aget v13, v30, v18

    add-int v24, v24, v13

    :goto_5
    if-ge v1, v6, :cond_6

    add-int/2addr v14, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v31

    move/from16 v13, v32

    goto/16 :goto_3

    :cond_7
    move-object/from16 v28, v1

    move/from16 v32, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    neg-int v1, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_6
    const v30, 0xff00

    const/high16 v33, 0xff0000

    if-le v1, v0, :cond_a

    move/from16 v34, v0

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v2, :cond_8

    add-int v22, v22, v2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v28

    move/from16 v14, v29

    move-object/from16 v15, v31

    move/from16 v13, v32

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 261
    :cond_8
    aget v35, v4, v12

    aput v35, v8, v21

    .line 262
    aget v35, v4, v13

    aput v35, v9, v21

    .line 263
    aget v35, v4, v14

    aput v35, v10, v21

    sub-int/2addr v12, v15

    sub-int v13, v13, v23

    sub-int v14, v14, v24

    sub-int v35, v34, v0

    add-int v35, v35, v7

    .line 270
    rem-int v35, v35, v7

    aget-object v35, v5, v35

    const/16 v36, 0x0

    .line 272
    aget v37, v35, v36

    sub-int v15, v15, v37

    const/16 v36, 0x1

    .line 273
    aget v37, v35, v36

    sub-int v23, v23, v37

    const/16 v18, 0x2

    .line 274
    aget v37, v35, v18

    sub-int v24, v24, v37

    if-nez v3, :cond_9

    add-int v37, v1, v0

    move/from16 v38, v2

    add-int/lit8 v2, v37, 0x1

    move/from16 v37, v3

    move/from16 v3, v19

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v11, v1

    goto :goto_8

    :cond_9
    move/from16 v38, v2

    move/from16 v37, v3

    move/from16 v3, v19

    .line 279
    :goto_8
    aget v2, v11, v1

    add-int v2, v22, v2

    aget v2, v31, v2

    and-int v19, v2, v33

    shr-int/lit8 v19, v19, 0x10

    const/16 v36, 0x0

    .line 281
    aput v19, v35, v36

    and-int v19, v2, v30

    shr-int/lit8 v19, v19, 0x8

    const/16 v39, 0x1

    .line 282
    aput v19, v35, v39

    and-int/lit16 v2, v2, 0xff

    const/16 v18, 0x2

    .line 283
    aput v2, v35, v18

    .line 285
    aget v2, v35, v36

    add-int v25, v25, v2

    .line 286
    aget v2, v35, v39

    add-int v26, v26, v2

    .line 287
    aget v2, v35, v18

    add-int v27, v27, v2

    add-int v12, v12, v25

    add-int v13, v13, v26

    add-int v14, v14, v27

    add-int/lit8 v34, v34, 0x1

    .line 293
    rem-int v34, v34, v7

    .line 294
    rem-int v2, v34, v7

    aget-object v2, v5, v2

    move/from16 v19, v6

    const/4 v6, 0x0

    .line 296
    aget v35, v2, v6

    add-int v15, v15, v35

    const/16 v35, 0x1

    .line 297
    aget v36, v2, v35

    add-int v23, v23, v36

    const/16 v18, 0x2

    .line 298
    aget v36, v2, v18

    add-int v24, v24, v36

    .line 300
    aget v36, v2, v6

    sub-int v25, v25, v36

    .line 301
    aget v36, v2, v35

    sub-int v26, v26, v36

    .line 302
    aget v2, v2, v18

    sub-int v27, v27, v2

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v19

    move/from16 v2, v38

    move/from16 v19, v3

    move/from16 v3, v37

    goto/16 :goto_7

    :cond_a
    move/from16 v38, v2

    move/from16 v37, v3

    move/from16 v3, v19

    move/from16 v19, v6

    const/4 v6, 0x0

    .line 238
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v21, v2

    aget v2, v31, v2

    add-int v34, v1, v0

    .line 239
    aget-object v34, v5, v34

    and-int v33, v2, v33

    shr-int/lit8 v33, v33, 0x10

    .line 240
    aput v33, v34, v6

    and-int v30, v2, v30

    shr-int/lit8 v30, v30, 0x8

    const/16 v33, 0x1

    .line 241
    aput v30, v34, v33

    and-int/lit16 v2, v2, 0xff

    const/16 v18, 0x2

    .line 242
    aput v2, v34, v18

    .line 243
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v20, v2

    .line 244
    aget v30, v34, v6

    mul-int v30, v30, v2

    add-int v12, v12, v30

    .line 245
    aget v30, v34, v33

    mul-int v30, v30, v2

    add-int v13, v13, v30

    .line 246
    aget v30, v34, v18

    mul-int v30, v30, v2

    add-int v14, v14, v30

    if-lez v1, :cond_b

    .line 248
    aget v2, v34, v6

    add-int v25, v25, v2

    .line 249
    aget v2, v34, v33

    add-int v26, v26, v2

    .line 250
    aget v2, v34, v18

    add-int v27, v27, v2

    goto :goto_9

    .line 252
    :cond_b
    aget v2, v34, v6

    add-int/2addr v15, v2

    .line 253
    aget v2, v34, v33

    add-int v23, v23, v2

    .line 254
    aget v2, v34, v18

    add-int v24, v24, v2

    :goto_9
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v19

    move/from16 v2, v38

    move/from16 v19, v3

    move/from16 v3, v37

    goto/16 :goto_6

    :cond_c
    move-object/from16 v28, v1

    move/from16 v38, v2

    move v1, v3

    move v3, v5

    move/from16 v19, v6

    move/from16 v32, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    const/4 v6, 0x0

    const/16 v33, 0x1

    .line 221
    div-int v2, v12, v18

    aput v2, v4, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v19

    move/from16 v2, v38

    move v3, v1

    move-object/from16 v1, v28

    goto/16 :goto_0
.end method

.method private static rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EasyBlur"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v3, 0x0

    .line 128
    invoke-static {p1, v0, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 131
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object p0

    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "scale size:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object p3

    .line 138
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 141
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    int-to-float p2, p2

    .line 145
    invoke-virtual {v1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 148
    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    return-object p1
.end method

.method public static with(Landroid/content/Context;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
    .locals 2

    .line 40
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->singleton:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->singleton:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->singleton:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->singleton:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    return-object p0
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blur()Landroid/graphics/Bitmap;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 58
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    if-eqz v0, :cond_2

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const-string v2, "blur fast algorithm"

    const-string v3, "EasyBlur"

    if-le v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mPolicy:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->FAST_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mScale:F

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "blur render script  algorithm"

    .line 66
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mScale:F

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mScale:F

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "radius must > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public policy(Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mPolicy:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    return-object p0
.end method

.method public radius(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
    .locals 0

    .line 113
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mRadius:I

    return-object p0
.end method

.method public scale(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 103
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->mScale:F

    return-object p0
.end method
