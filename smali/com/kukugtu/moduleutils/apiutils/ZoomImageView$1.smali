.class Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 89
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$000(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 96
    iget-object v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-virtual {v2}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v3}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$100(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    const-wide/16 v3, 0x10

    if-gez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v2, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$002(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;Z)Z

    .line 99
    iget-object v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    new-instance v5, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;

    iget-object v6, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v6}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$100(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;-><init>(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v2, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$002(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;Z)Z

    .line 103
    iget-object v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    new-instance v5, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;

    iget-object v6, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;->this$0:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-static {v6}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->access$200(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)F

    move-result v7

    invoke-direct {v5, v6, v7, v0, p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;-><init>(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;FFF)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v1
.end method
