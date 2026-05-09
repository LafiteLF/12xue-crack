.class public Lcom/apicloud/imagerotation/ImageRotationModule;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "ImageRotationModule.java"


# instance fields
.field private final filePath:Ljava/lang/String;

.field private linkedHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 26
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    .line 34
    invoke-virtual {p0}, Lcom/apicloud/imagerotation/ImageRotationModule;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/imagerotation/utils/ImageUtil;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->filePath:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public jsmethod_getImageWidthAndHeight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "path"

    .line 37
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/apicloud/imagerotation/ImageRotationModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 43
    iget-object v2, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "width"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "height"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Lcom/apicloud/imagerotation/MouleUtil;->successResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/LinkedHashMap;)V

    .line 46
    iget-object p1, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public jsmethod_rotateImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    const-string v0, "path"

    .line 52
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    .line 53
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/apicloud/imagerotation/ImageRotationModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".png"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ".jpg"

    :goto_0
    move-object v8, v2

    .line 56
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v0, -0x1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "rightMirrored"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v2, "upMirrored"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "leftMirrored"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_6
    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_7
    const-string v2, "downMirrored"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_1
    const/16 v1, 0x5a

    const/16 v2, -0x5a

    const/16 v6, 0xb4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v6, v3

    move v7, v6

    goto :goto_4

    :pswitch_1
    move v6, v1

    goto :goto_2

    :pswitch_2
    move v6, v2

    goto :goto_2

    :pswitch_3
    move v6, v3

    :goto_2
    :pswitch_4
    move v7, v4

    goto :goto_4

    :pswitch_5
    move v6, v1

    goto :goto_3

    :pswitch_6
    move v6, v2

    :goto_3
    :pswitch_7
    move v7, v3

    .line 92
    :goto_4
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/apicloud/imagerotation/ImageRotationModule$1;

    move-object v3, v1

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/apicloud/imagerotation/ImageRotationModule$1;-><init>(Lcom/apicloud/imagerotation/ImageRotationModule;Landroid/graphics/Bitmap;IZLjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71bab4a0 -> :sswitch_7
        0xe9b -> :sswitch_6
        0x2f24a2 -> :sswitch_5
        0x32a007 -> :sswitch_4
        0x677c21c -> :sswitch_3
        0x3b9d91c5 -> :sswitch_2
        0x3dad2c59 -> :sswitch_1
        0x6d3dceda -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public jsmethod_rotatedImageByDegree(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "path"

    .line 109
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "degree"

    const/16 v2, 0x2d

    .line 110
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 111
    invoke-virtual {p0}, Lcom/apicloud/imagerotation/ImageRotationModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ".jpg"

    :goto_0
    move-object v7, v1

    .line 113
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 114
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/apicloud/imagerotation/ImageRotationModule$2;

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/apicloud/imagerotation/ImageRotationModule$2;-><init>(Lcom/apicloud/imagerotation/ImageRotationModule;Landroid/graphics/Bitmap;ILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
