.class public abstract Lcom/artifex/mupdf/PageView;
.super Landroid/view/ViewGroup;
.source "PageView.java"


# static fields
.field private static final BACKGROUND_COLOR:I = -0x1

.field private static final HIGHLIGHT_COLOR:I = -0x7faaaa01

.field private static final LINK_COLOR:I = -0x7f003378

.field private static final PROGRESS_DIALOG_DELAY:I = 0xc8


# instance fields
.field private mBusyIndicator:Landroid/widget/ProgressBar;

.field private final mContext:Landroid/content/Context;

.field private mDrawEntire:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Lcom/artifex/mupdf/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawPatch:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Lcom/artifex/mupdf/PatchInfo;",
            "Ljava/lang/Void;",
            "Lcom/artifex/mupdf/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEntire:Landroid/widget/ImageView;

.field private mEntireBm:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightLinks:Z

.field private mIsBlank:Z

.field private mLinks:[Lcom/artifex/mupdf/LinkInfo;

.field protected mPageNumber:I

.field private mParentSize:Landroid/graphics/Point;

.field private mPatch:Landroid/widget/ImageView;

.field private mPatchArea:Landroid/graphics/Rect;

.field private mPatchViewSize:Landroid/graphics/Point;

.field private mSearchBoxes:[Landroid/graphics/RectF;

.field private mSearchView:Landroid/view/View;

.field protected mSize:Landroid/graphics/Point;

.field protected mSourceScale:F

.field private mUsingHardwareAcceleration:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/PageView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView;->setBackgroundColor(I)V

    .line 82
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xe

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/artifex/mupdf/PageView;->mUsingHardwareAcceleration:Z

    return-void
.end method

.method static synthetic access$000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mEntireBm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/artifex/mupdf/PageView;)Landroid/graphics/Rect;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/artifex/mupdf/PageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/artifex/mupdf/PageView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/artifex/mupdf/PageView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/artifex/mupdf/PageView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/artifex/mupdf/PageView;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/artifex/mupdf/PageView;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/artifex/mupdf/PageView;)[Lcom/artifex/mupdf/LinkInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mLinks:[Lcom/artifex/mupdf/LinkInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/artifex/mupdf/PageView;[Lcom/artifex/mupdf/LinkInfo;)[Lcom/artifex/mupdf/LinkInfo;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mLinks:[Lcom/artifex/mupdf/LinkInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/artifex/mupdf/PageView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/artifex/mupdf/PageView;->mIsBlank:Z

    return p0
.end method

.method static synthetic access$700(Lcom/artifex/mupdf/PageView;)[Landroid/graphics/RectF;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/artifex/mupdf/PageView;->mSearchBoxes:[Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lcom/artifex/mupdf/PageView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/artifex/mupdf/PageView;->mHighlightLinks:Z

    return p0
.end method

.method static synthetic access$902(Lcom/artifex/mupdf/PageView;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    return-object p1
.end method


# virtual methods
.method public addHq()V
    .locals 7

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 300
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_5

    .line 301
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 302
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 309
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 312
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mDrawPatch:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/artifex/mupdf/PageView;->mDrawPatch:Landroid/os/AsyncTask;

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 323
    new-instance v0, Lcom/artifex/mupdf/OpaqueImageView;

    iget-object v4, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/artifex/mupdf/OpaqueImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    .line 324
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 325
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/PageView;->addView(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 329
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    new-instance v4, Lcom/artifex/mupdf/PageView$3;

    invoke-direct {v4, p0}, Lcom/artifex/mupdf/PageView$3;-><init>(Lcom/artifex/mupdf/PageView;)V

    iput-object v4, p0, Lcom/artifex/mupdf/PageView;->mDrawPatch:Landroid/os/AsyncTask;

    new-array v3, v3, [Lcom/artifex/mupdf/PatchInfo;

    .line 351
    new-instance v6, Lcom/artifex/mupdf/PatchInfo;

    invoke-direct {v6, v0, v1, v2}, Lcom/artifex/mupdf/PatchInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void
.end method

.method public blank(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mDrawEntire:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 93
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mDrawEntire:Landroid/os/AsyncTask;

    .line 96
    :cond_0
    iput-boolean v2, p0, Lcom/artifex/mupdf/PageView;->mIsBlank:Z

    .line 97
    iput p1, p0, Lcom/artifex/mupdf/PageView;->mPageNumber:I

    .line 99
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-nez p1, :cond_4

    .line 109
    new-instance p1, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const-string p1, "busy"

    .line 112
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 114
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected abstract drawPage(Landroid/graphics/Bitmap;IIIIII)V
.end method

.method protected abstract getLinkInfo()[Lcom/artifex/mupdf/LinkInfo;
.end method

.method public getPage()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/artifex/mupdf/PageView;->mPageNumber:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 269
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 278
    iget p1, p1, Landroid/graphics/Point;->x:I

    if-ne p1, p4, :cond_3

    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eq p1, p5, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    .line 281
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    .line 282
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 283
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    .line 290
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p1

    .line 291
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result p2

    .line 293
    iget-object p3, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    sub-int v0, p4, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p5, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p3, v0, v1, p4, p5}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 241
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 248
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 250
    :cond_1
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 256
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/artifex/mupdf/PageView;->setMeasuredDimension(II)V

    .line 258
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 260
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mBusyIndicator:Landroid/widget/ProgressBar;

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    invoke-virtual {p2, p1, p1}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_2
    return-void
.end method

.method public removeHq()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mDrawPatch:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 358
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 359
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mDrawPatch:Landroid/os/AsyncTask;

    .line 363
    :cond_0
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mPatchViewSize:Landroid/graphics/Point;

    .line 364
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mPatchArea:Landroid/graphics/Rect;

    .line 365
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mPatch:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setLinkHighlighting(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/artifex/mupdf/PageView;->mHighlightLinks:Z

    .line 234
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPage(ILandroid/graphics/PointF;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/artifex/mupdf/PageView;->mDrawEntire:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 122
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mDrawEntire:Landroid/os/AsyncTask;

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/artifex/mupdf/PageView;->mIsBlank:Z

    .line 127
    iput p1, p0, Lcom/artifex/mupdf/PageView;->mPageNumber:I

    .line 128
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    .line 129
    new-instance p1, Lcom/artifex/mupdf/OpaqueImageView;

    iget-object v2, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/artifex/mupdf/OpaqueImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    .line 130
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView;->addView(Landroid/view/View;)V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/artifex/mupdf/PageView;->mParentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/artifex/mupdf/PageView;->mSourceScale:F

    .line 137
    new-instance p1, Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/artifex/mupdf/PageView;->mSourceScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/artifex/mupdf/PageView;->mSourceScale:F

    mul-float/2addr p2, v3

    float-to-int p2, p2

    invoke-direct {p1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 138
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    .line 140
    iget-boolean p2, p0, Lcom/artifex/mupdf/PageView;->mUsingHardwareAcceleration:Z

    if-eqz p2, :cond_2

    .line 144
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mEntire:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    iput-object v1, p0, Lcom/artifex/mupdf/PageView;->mEntireBm:Landroid/graphics/Bitmap;

    .line 148
    :cond_2
    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mEntireBm:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mEntireBm:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eq p2, p1, :cond_4

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mEntireBm:Landroid/graphics/Bitmap;

    .line 154
    :cond_4
    new-instance p1, Lcom/artifex/mupdf/PageView$1;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/PageView$1;-><init>(Lcom/artifex/mupdf/PageView;)V

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mDrawEntire:Landroid/os/AsyncTask;

    new-array p2, v0, [Ljava/lang/Void;

    .line 188
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    if-nez p1, :cond_5

    .line 191
    new-instance p1, Lcom/artifex/mupdf/PageView$2;

    iget-object p2, p0, Lcom/artifex/mupdf/PageView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/artifex/mupdf/PageView$2;-><init>(Lcom/artifex/mupdf/PageView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    .line 221
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/PageView;->addView(Landroid/view/View;)V

    .line 223
    :cond_5
    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView;->requestLayout()V

    return-void
.end method

.method public setSearchBoxes([Landroid/graphics/RectF;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchBoxes:[Landroid/graphics/RectF;

    .line 228
    iget-object p1, p0, Lcom/artifex/mupdf/PageView;->mSearchView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
