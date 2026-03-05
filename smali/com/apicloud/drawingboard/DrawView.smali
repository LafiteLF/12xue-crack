.class public Lcom/apicloud/drawingboard/DrawView;
.super Landroid/view/View;
.source "DrawView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/drawingboard/DrawView$DrawPath;
    }
.end annotation


# instance fields
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

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgColor:I

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBitmapRectF:Landroid/graphics/RectF;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheCanvas:Landroid/graphics/Canvas;

.field private mDrawPath:Lcom/apicloud/drawingboard/DrawView$DrawPath;

.field private mHeight:I

.field private mIsReDraw:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/drawingboard/DrawView$DrawPath;",
            ">;"
        }
    .end annotation
.end field

.field private mPreX:F

.field private mPreY:F

.field private mStorePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/drawingboard/DrawView$DrawPath;",
            ">;"
        }
    .end annotation
.end field

.field private mUzDrawingBoard:Lcom/apicloud/drawingboard/UzDrawingBoard;

.field private mWidth:I

.field private openContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private createCacheBitmap()V
    .locals 3

    .line 227
    iget v0, p0, Lcom/apicloud/drawingboard/DrawView;->mWidth:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iget v1, p0, Lcom/apicloud/drawingboard/DrawView;->mHeight:I

    .line 228
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 227
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private removeAllList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apicloud/drawingboard/DrawView$DrawPath;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 202
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/apicloud/drawingboard/DrawView;->removeAllList(Ljava/util/List;)V

    .line 132
    iget v0, p0, Lcom/apicloud/drawingboard/DrawView;->mWidth:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iget v1, p0, Lcom/apicloud/drawingboard/DrawView;->mHeight:I

    .line 133
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 132
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 134
    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {p0}, Lcom/apicloud/drawingboard/DrawView;->invalidate()V

    return-void
.end method

.method public initStyles(Lcom/apicloud/drawingboard/UzDrawingBoard;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V
    .locals 2

    .line 72
    iput-object p2, p0, Lcom/apicloud/drawingboard/DrawView;->openContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 73
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mUzDrawingBoard:Lcom/apicloud/drawingboard/UzDrawingBoard;

    .line 74
    iput p3, p0, Lcom/apicloud/drawingboard/DrawView;->mWidth:I

    .line 75
    iput p4, p0, Lcom/apicloud/drawingboard/DrawView;->mHeight:I

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    iget p3, p0, Lcom/apicloud/drawingboard/DrawView;->mWidth:I

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/apicloud/drawingboard/DrawView;->mHeight:I

    .line 77
    invoke-static {p4}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mBitmapRectF:Landroid/graphics/RectF;

    const-string p1, "styles"

    .line 78
    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "#000"

    .line 79
    invoke-static {p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x6

    if-eqz p1, :cond_2

    const-string v0, "brush"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p3, "color"

    .line 85
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-static {p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p3

    const-string p2, "width"

    .line 86
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    :cond_0
    const-string p2, "bgColor"

    const-string v0, "#fff"

    .line 88
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "://"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    :try_start_0
    iget-object p2, p0, Lcom/apicloud/drawingboard/DrawView;->mUzDrawingBoard:Lcom/apicloud/drawingboard/UzDrawingBoard;

    .line 93
    invoke-virtual {p2, p1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 94
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/apicloud/drawingboard/DrawView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mBitmapRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apicloud/drawingboard/DrawView;->mBgColor:I

    .line 103
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/apicloud/drawingboard/DrawView;->createCacheBitmap()V

    .line 104
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 105
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    .line 106
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    .line 108
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 112
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p4}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 210
    iget v0, p0, Lcom/apicloud/drawingboard/DrawView;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mBitmapRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 214
    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/drawingboard/DrawView;->mIsReDraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/apicloud/drawingboard/DrawView;->createCacheBitmap()V

    .line 216
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    invoke-virtual {p0}, Lcom/apicloud/drawingboard/DrawView;->onRevoke()V

    .line 218
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public onRevoke()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/drawingboard/DrawView$DrawPath;

    .line 249
    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/apicloud/drawingboard/DrawView$DrawPath;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/apicloud/drawingboard/DrawView$DrawPath;->width:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v1, v1, Lcom/apicloud/drawingboard/DrawView$DrawPath;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/apicloud/drawingboard/DrawView;->mIsReDraw:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v2, "eventType"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/apicloud/drawingboard/DrawView;->mPreX:F

    iget v4, p0, Lcom/apicloud/drawingboard/DrawView;->mPreY:F

    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 176
    iput v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPreX:F

    .line 177
    iput v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPreY:F

    .line 178
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v0, "up"

    invoke-virtual {p1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->openContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Lcom/apicloud/drawingboard/ModuleUtils;->successResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/LinkedHashMap;)V

    .line 184
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 186
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    new-instance p1, Lcom/apicloud/drawingboard/DrawView$DrawPath;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    .line 188
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/apicloud/drawingboard/DrawView$DrawPath;-><init>(Lcom/apicloud/drawingboard/DrawView;Landroid/graphics/Path;II)V

    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mDrawPath:Lcom/apicloud/drawingboard/DrawView$DrawPath;

    .line 189
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/apicloud/drawingboard/DrawView;->removeAllList(Ljava/util/List;)V

    .line 192
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    const-string v4, "down"

    invoke-virtual {p1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->openContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, v2}, Lcom/apicloud/drawingboard/ModuleUtils;->successResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/LinkedHashMap;)V

    .line 163
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->linkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 165
    iget-object p1, p0, Lcom/apicloud/drawingboard/DrawView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    iput v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPreX:F

    .line 167
    iput v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPreY:F

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/drawingboard/DrawView;->invalidate()V

    return v3
.end method

.method public resetBrush(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "color"

    .line 118
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#000"

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const-string v0, "width"

    .line 123
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public restore()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/apicloud/drawingboard/DrawView;->mIsReDraw:Z

    .line 242
    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/drawingboard/DrawView$DrawPath;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0}, Lcom/apicloud/drawingboard/DrawView;->invalidate()V

    :cond_0
    return-void
.end method

.method public revoke()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/apicloud/drawingboard/DrawView;->mIsReDraw:Z

    .line 234
    iget-object v1, p0, Lcom/apicloud/drawingboard/DrawView;->mStorePaths:Ljava/util/List;

    iget-object v2, p0, Lcom/apicloud/drawingboard/DrawView;->mPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/drawingboard/DrawView$DrawPath;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0}, Lcom/apicloud/drawingboard/DrawView;->invalidate()V

    :cond_0
    return-void
.end method

.method public save()Landroid/graphics/Bitmap;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setCacheBitmap()V
    .locals 3

    .line 149
    iget v0, p0, Lcom/apicloud/drawingboard/DrawView;->mWidth:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iget v1, p0, Lcom/apicloud/drawingboard/DrawView;->mHeight:I

    .line 150
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/drawingboard/DrawView;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
