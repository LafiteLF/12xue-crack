.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;
.super Ljava/lang/Object;
.source "uzimageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->jsmethod_compress(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

.field private final synthetic val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 389
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "img"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    .line 391
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    .line 394
    :cond_0
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-wide v5, 0x3fb999999999999aL    # 0.1

    const-string v7, "quality"

    invoke-virtual {v2, v7, v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const/high16 v2, -0x40800000    # -1.0f

    .line 396
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v6, "scale"

    invoke-virtual {v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "size"

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v6, v8, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v2, v5

    :cond_1
    move v15, v2

    const/4 v2, 0x0

    .line 400
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 401
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v2, "w"

    .line 403
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "h"

    .line 404
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 405
    new-instance v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;

    invoke-direct {v6, v2, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;-><init>(II)V

    move-object/from16 v17, v6

    goto :goto_0

    :cond_2
    move-object/from16 v17, v2

    .line 408
    :goto_0
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v5, "save"

    invoke-virtual {v2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "album"

    .line 416
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 417
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v6, "imgPath"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "imgName"

    .line 418
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 420
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 427
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 428
    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    .line 430
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    .line 433
    :cond_3
    iget-object v8, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual/range {v8 .. v17}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->compressImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;DFZLcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;)V

    return-void

    .line 423
    :cond_4
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;->val$context:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void
.end method
