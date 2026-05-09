.class public Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;
.super Ljava/lang/Object;
.source "FocusRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/FocusRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusBox"
.end annotation


# instance fields
.field private boxMaxSize:I

.field private boxMinSize:I

.field private boxRect:Landroid/graphics/Rect;

.field private boxRectBitmap:Landroid/graphics/Bitmap;

.field public isClear:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mView:Landroid/view/View;

.field private startBoxSize:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIIF)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    .line 181
    iput p3, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMaxSize:I

    .line 182
    iput p4, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMinSize:I

    .line 183
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mView:Landroid/view/View;

    .line 184
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 189
    iget p4, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMaxSize:I

    const/4 p5, 0x0

    aput p4, p1, p5

    iget p4, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMinSize:I

    aput p4, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p4, 0x12c

    .line 190
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iput p3, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startBoxSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;II)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mView:Landroid/view/View;

    .line 199
    iput p3, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMaxSize:I

    .line 200
    iput p4, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMinSize:I

    const/4 p1, 0x0

    .line 201
    invoke-static {p2, p3, p3, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRectBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 202
    iget p4, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMaxSize:I

    int-to-float p4, p4

    aput p4, p2, p1

    iget p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxMinSize:I

    int-to-float p1, p1

    const/4 p4, 0x1

    aput p1, p2, p4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    iput p3, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startBoxSize:I

    return-void
.end method

.method static synthetic access$102(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startBoxSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)Landroid/view/View;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public drawBox(Landroid/graphics/Canvas;Landroid/graphics/Point;I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 211
    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 212
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 213
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 214
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 215
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->boxRectBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 218
    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v1, p3

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget-object p3, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getBoxSize()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startBoxSize:I

    return v0
.end method

.method public startFocusRender()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startFocusRender(I)V

    return-void
.end method

.method public startFocusRender(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 229
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->isClear:Z

    .line 230
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 232
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;

    invoke-direct {v1, p0}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;-><init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;-><init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
