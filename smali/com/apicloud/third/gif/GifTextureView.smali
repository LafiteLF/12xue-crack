.class public Lcom/apicloud/third/gif/GifTextureView;
.super Landroid/view/TextureView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/third/gif/GifTextureView$PlaceholderDrawListener;,
        Lcom/apicloud/third/gif/GifTextureView$RenderThread;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mInputSource:Lcom/apicloud/third/gif/InputSource;

.field private mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSpeedFactor:F

.field private final mTransform:Landroid/graphics/Matrix;

.field private viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .locals 3

    sget-object v0, Lcom/apicloud/third/gif/GifTextureView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lcom/apicloud/third/gif/GifTextureView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/apicloud/third/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p1}, Lcom/apicloud/third/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/apicloud/third/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/third/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    invoke-direct {p0, p2, p3, p4}, Lcom/apicloud/third/gif/GifTextureView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$0(Lcom/apicloud/third/gif/GifTextureView;)Lcom/apicloud/third/gif/InputSource;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/third/gif/GifTextureView;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    return-object p0
.end method

.method static synthetic access$1(Lcom/apicloud/third/gif/GifTextureView;)Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/third/gif/GifTextureView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    return-object p0
.end method

.method static synthetic access$2(Lcom/apicloud/third/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/apicloud/third/gif/GifTextureView;Lcom/apicloud/third/gif/GifInfoHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->updateTextureViewSize(Lcom/apicloud/third/gif/GifInfoHandle;)V

    return-void
.end method

.method static synthetic access$4(Lcom/apicloud/third/gif/GifTextureView;)F
    .locals 0

    iget p0, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    return p0
.end method

.method static findSource(Landroid/content/res/TypedArray;)Lcom/apicloud/third/gif/InputSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "scaleType"

    invoke-interface {p1, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v2, Lcom/apicloud/third/gif/GifTextureView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apicloud/third/gif/GifTextureView;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    goto :goto_0

    :cond_1
    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance p1, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    invoke-direct {p1}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>()V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextureView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-direct {p1, p0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;-><init>(Lcom/apicloud/third/gif/GifTextureView;)V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    iget-object p2, p0, Lcom/apicloud/third/gif/GifTextureView;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->start()V

    :cond_2
    return-void
.end method

.method private setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private updateTextureViewSize(Lcom/apicloud/third/gif/GifInfoHandle;)V
    .locals 10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/apicloud/third/gif/GifTextureView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v7

    iget-object v8, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    div-float p1, v8, v3

    div-float/2addr v8, v4

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v8, p1

    :goto_0
    mul-float/2addr v3, v8

    mul-float/2addr v8, v4

    div-float/2addr v1, v9

    div-float/2addr v2, v9

    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_3

    :pswitch_2
    div-float/2addr v1, v9

    div-float/2addr v2, v9

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_3

    :pswitch_3
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    goto :goto_1

    :pswitch_4
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    goto :goto_1

    :pswitch_5
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    :goto_1
    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    :pswitch_6
    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_3
    invoke-super {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$1(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$1(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/gif/GifIOException;->fromCode(I)Lcom/apicloud/third/gif/GifIOException;

    move-result-object v0

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->dispose(Lcom/apicloud/third/gif/GifTextureView;Lcom/apicloud/third/gif/GifTextureView$PlaceholderDrawListener;)V

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/apicloud/third/gif/GifViewSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/third/gif/GifViewSavedState;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    iget-object p1, p1, Lcom/apicloud/third/gif/GifViewSavedState;->mStates:[[J

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, v0, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->mSavedState:[J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getSavedState()[J

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->mSavedState:[J

    new-instance v0, Lcom/apicloud/third/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/third/gif/GifTextureView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iget-boolean v2, v2, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    iget-object v2, v2, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->mSavedState:[J

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/apicloud/third/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v0
.end method

.method public setFreezesAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->viewAttributes:Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;

    iput-boolean p1, v0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public declared-synchronized setInputSource(Lcom/apicloud/third/gif/InputSource;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/third/gif/GifTextureView;->setInputSource(Lcom/apicloud/third/gif/InputSource;Lcom/apicloud/third/gif/GifTextureView$PlaceholderDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInputSource(Lcom/apicloud/third/gif/InputSource;Lcom/apicloud/third/gif/GifTextureView$PlaceholderDrawListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-virtual {v0, p0, p2}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->dispose(Lcom/apicloud/third/gif/GifTextureView;Lcom/apicloud/third/gif/GifTextureView$PlaceholderDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    new-instance p2, Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-direct {p2, p0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;-><init>(Lcom/apicloud/third/gif/GifTextureView;)V

    iput-object p2, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOpaque(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mInputSource:Lcom/apicloud/third/gif/InputSource;

    invoke-virtual {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->setInputSource(Lcom/apicloud/third/gif/InputSource;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {p1}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->updateTextureViewSize(Lcom/apicloud/third/gif/GifInfoHandle;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iput p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mSpeedFactor:F

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v0}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->setSpeedFactor(F)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTexture is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTextureListener is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/apicloud/third/gif/GifTextureView;->mRenderThread:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {p1}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifTextureView;->updateTextureViewSize(Lcom/apicloud/third/gif/GifInfoHandle;)V

    return-void
.end method
