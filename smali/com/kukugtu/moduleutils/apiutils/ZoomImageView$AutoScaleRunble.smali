.class Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunble"
.end annotation


# instance fields
.field private BIGGER:F

.field private SMALLER:F

.field private mTrgetScale:F

.field private tempScale:F

.field final synthetic this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;FFF)V
    .locals 1

    .line 452
    iput-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f88f5c3    # 1.07f

    .line 448
    iput v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->BIGGER:F

    const v0, 0x3f6e147b    # 0.93f

    .line 449
    iput v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->SMALLER:F

    .line 453
    iput p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->mTrgetScale:F

    .line 454
    iput p3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->x:F

    .line 455
    iput p4, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->y:F

    .line 456
    invoke-virtual {p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getScale()F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_0

    .line 458
    iget p3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->BIGGER:F

    iput p3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->tempScale:F

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getScale()F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 462
    iget p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->SMALLER:F

    iput p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->tempScale:F

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    iget-object v0, v0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->tempScale:F

    iget v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->x:F

    iget v3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 471
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$300(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)V

    .line 472
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    iget-object v1, v0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 474
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-virtual {v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getScale()F

    move-result v0

    .line 477
    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->tempScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->mTrgetScale:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->tempScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->mTrgetScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 486
    :cond_2
    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->mTrgetScale:F

    div-float/2addr v1, v0

    .line 487
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    iget-object v0, v0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->x:F

    iget v3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 488
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$300(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)V

    .line 489
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    iget-object v1, v0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 491
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$002(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;Z)Z

    :goto_0
    return-void
.end method
