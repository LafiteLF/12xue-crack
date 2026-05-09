.class public Lapiplotting/APIPlotting;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "APIPlotting.java"


# static fields
.field public static final DEFAULT_BITMAP_SIZE:I = 0x50

.field public static final DEFAULT_COPY_SIZE:I = 0x14

.field public static final DEFAULT_TEXT_SIZE:I = 0x11

.field public static final PLOTTING_FILE_TAG:Ljava/lang/String; = "plotting_file_"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private detector:Ldoodle/DoodleTouchDetector;

.field private mDoodle:Ldoodle/core/IDoodle;

.field private mDoodleParams:Ldoodle/DoodleParams;

.field mDoodleView:Ldoodle/DoodleView;

.field private mPenSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldoodle/core/IDoodlePen;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

.field private saveModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lapiplotting/APIPlotting;->mPenSizeMap:Ljava/util/Map;

    const-string p1, ""

    .line 64
    iput-object p1, p0, Lapiplotting/APIPlotting;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lapiplotting/APIPlotting;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lapiplotting/APIPlotting;->loadBitmap(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method static synthetic access$100(Lapiplotting/APIPlotting;)Ldoodle/DoodleParams;
    .locals 0

    .line 47
    iget-object p0, p0, Lapiplotting/APIPlotting;->mDoodleParams:Ldoodle/DoodleParams;

    return-object p0
.end method

.method static synthetic access$102(Lapiplotting/APIPlotting;Ldoodle/DoodleParams;)Ldoodle/DoodleParams;
    .locals 0

    .line 47
    iput-object p1, p0, Lapiplotting/APIPlotting;->mDoodleParams:Ldoodle/DoodleParams;

    return-object p1
.end method

.method static synthetic access$200(Lapiplotting/APIPlotting;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lapiplotting/APIPlotting;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lapiplotting/APIPlotting;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 47
    iget-object p0, p0, Lapiplotting/APIPlotting;->saveModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method static synthetic access$302(Lapiplotting/APIPlotting;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 47
    iput-object p1, p0, Lapiplotting/APIPlotting;->saveModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p1
.end method

.method static synthetic access$400(Lapiplotting/APIPlotting;)Ldoodle/core/IDoodle;
    .locals 0

    .line 47
    iget-object p0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    return-object p0
.end method

.method static synthetic access$500(Lapiplotting/APIPlotting;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lapiplotting/APIPlotting;->mPenSizeMap:Ljava/util/Map;

    return-object p0
.end method

.method private loadBitmap(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 115
    invoke-virtual {p0, p1, p2}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Ldoodle/DoodleView;

    invoke-virtual {p0}, Lapiplotting/APIPlotting;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lapiplotting/APIPlotting$2;

    invoke-direct {v3, p0, p1, p2}, Lapiplotting/APIPlotting$2;-><init>(Lapiplotting/APIPlotting;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v0, v1, v2, v3}, Ldoodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;)V

    iput-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    iput-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    .line 199
    new-instance p1, Ldoodle/DoodleOnTouchGestureListener;

    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    new-instance v1, Lapiplotting/APIPlotting$3;

    invoke-direct {v1, p0}, Lapiplotting/APIPlotting$3;-><init>(Lapiplotting/APIPlotting;)V

    invoke-direct {p1, v0, v1}, Ldoodle/DoodleOnTouchGestureListener;-><init>(Ldoodle/DoodleView;Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;)V

    iput-object p1, p0, Lapiplotting/APIPlotting;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    .line 212
    new-instance p1, Ldoodle/DoodleTouchDetector;

    invoke-virtual {p0}, Lapiplotting/APIPlotting;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapiplotting/APIPlotting;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-direct {p1, v0, v1}, Ldoodle/DoodleTouchDetector;-><init>(Landroid/content/Context;Landroids/TouchGestureDetector$IOnTouchGestureListener;)V

    iput-object p1, p0, Lapiplotting/APIPlotting;->detector:Ldoodle/DoodleTouchDetector;

    .line 213
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {v0, p1}, Ldoodle/DoodleView;->setDefaultTouchDetector(Ldoodle/core/IDoodleTouchDetector;)V

    const-string p1, "x"

    .line 215
    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "y"

    .line 216
    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "w"

    .line 217
    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "h"

    .line 218
    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    :cond_1
    if-nez p2, :cond_2

    move p2, v2

    .line 225
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 227
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 228
    iget-object p1, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {p0, p1, v2}, Lapiplotting/APIPlotting;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public checkColor(Ljava/lang/String;)Z
    .locals 3

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^#([0-9a-fA-F]{6}|[0-9a-fA-F]{3})$"

    .line 405
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    .line 407
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 408
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 417
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    const-string v2, "fail"

    .line 418
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errMsg"

    .line 419
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 420
    invoke-virtual {p2, v0, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public jsmethod_addView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldoodle/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u8be5View\u5df2\u7ecf\u6dfb\u52a0\uff0c\u82e5\u8981\u518d\u6b21\u6dfb\u52a0\u8bf7\u5728\u4e4b\u524d\u9875\u9762\u79fb\u9664!"

    .line 79
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    :cond_0
    const-string v0, "url"

    .line 83
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapiplotting/APIPlotting;->url:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u56fe\u7247\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 85
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 90
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lapiplotting/APIPlotting;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lapiplotting/APIPlotting;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lapiplotting/APIPlotting$1;

    invoke-direct {v1, p0, p1}, Lapiplotting/APIPlotting$1;-><init>(Lapiplotting/APIPlotting;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u83b7\u53d6\u56fe\u7247\u5931\u8d25"

    .line 107
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method

.method public jsmethod_clear(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->clear()V

    .line 362
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_deleteFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "\u5220\u9664\u5931\u8d25"

    const-string v1, "filePath"

    .line 381
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5220\u9664\u6587\u4ef6\u4e0d\u80fd\u4e3a\u7a7a"

    .line 395
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method

.method public jsmethod_redo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->redo()Z

    .line 351
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->refresh()V

    .line 352
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_removeView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    .line 239
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {p0, v0}, Lapiplotting/APIPlotting;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->clear()V

    .line 241
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_save(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lapiplotting/APIPlotting;->saveModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 372
    iget-object p1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->save()V

    return-void
.end method

.method public jsmethod_setColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 301
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "#000000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object v1

    sget-object v2, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u6a61\u76ae\u4e0d\u80fd\u8bbe\u7f6e\u989c\u8272"

    .line 303
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, v0}, Lapiplotting/APIPlotting;->checkColor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    new-instance v2, Ldoodle/DoodleColor;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v2}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 308
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u989c\u8272\u503c\u9700\u8981\u5e26#\u6807\u51c6RGB\u683c\u5f0f"

    .line 310
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method

.method public jsmethod_setState(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    .line 249
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 251
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v5, "state"

    if-gtz v0, :cond_2

    .line 253
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    move v0, v2

    .line 261
    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsmethod_setState set :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DDDDD"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v0

    .line 262
    iget-object v6, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    const/high16 v6, 0x44340000    # 720.0f

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsmethod_setState get :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    int-to-float v0, v0

    invoke-interface {v6, v0}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 266
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "#000000"

    const-string v7, "color"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Lapiplotting/APIPlotting;->checkColor(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    iget-object v6, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    new-instance v7, Ldoodle/DoodleColor;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v7, v0}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v6, v7}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    new-instance v7, Ldoodle/DoodleColor;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v7, v6}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v0, v7}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 273
    :goto_1
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v6, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    invoke-interface {v0, v6}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 274
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    .line 275
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto/16 :goto_2

    .line 276
    :cond_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 277
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto/16 :goto_2

    .line 278
    :cond_5
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 279
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto/16 :goto_2

    .line 280
    :cond_6
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 281
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_2

    .line 282
    :cond_7
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 283
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 284
    new-instance v0, Ldoodle/DoodleText;

    iget-object v3, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getSize()F

    move-result v5

    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodleColor;->copy()Ldoodle/core/IDoodleColor;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42480000    # 50.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ldoodle/DoodleText;-><init>(Ldoodle/core/IDoodle;Ljava/lang/String;FLdoodle/core/IDoodleColor;FF)V

    .line 285
    iget-object v1, p0, Lapiplotting/APIPlotting;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1, v0}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    .line 286
    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1, v0}, Ldoodle/core/IDoodle;->addItem(Ldoodle/core/IDoodleItem;)V

    .line 287
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->refresh()V

    goto :goto_2

    .line 288
    :cond_8
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 289
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 290
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    new-instance v1, Ldoodle/DoodleColor;

    iget-object v2, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 292
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_setWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    .line 320
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->get()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsmethod_setWidth get :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DDDDD"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    int-to-float v0, v0

    .line 323
    iget-object v1, p0, Lapiplotting/APIPlotting;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsmethod_setWidth set :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    int-to-float v0, v0

    invoke-interface {v1, v0}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 326
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u5bbd\u5ea6\u503c\u662f\u5927\u4e8e0\u7684\u6570\u5b57"

    .line 328
    invoke-virtual {p0, v0, p1}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method

.method public jsmethod_undo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->undo()Z

    .line 340
    iget-object v0, p0, Lapiplotting/APIPlotting;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v0}, Ldoodle/core/IDoodle;->refresh()V

    .line 341
    invoke-virtual {p0, p1}, Lapiplotting/APIPlotting;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 428
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    const-string v2, "success"

    .line 429
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 430
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 438
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    const-string v2, "success"

    .line 439
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 443
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
