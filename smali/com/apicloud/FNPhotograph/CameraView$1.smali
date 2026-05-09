.class Lcom/apicloud/FNPhotograph/CameraView$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraView;-><init>(Landroid/content/Context;IILcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field firstClickTime:J

.field isDoubleClick:Z

.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraView;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraView;)V
    .locals 2

    .line 119
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->isDoubleClick:Z

    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->firstClickTime:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$000(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$000(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 130
    :cond_0
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->isDoubleClick:Z

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->firstClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$000(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-interface {p1, v2, p2}, Lcom/apicloud/FNPhotograph/OnCustomClickListener;->onDoubleClick(II)V

    const-string p1, "LYH"

    const-string p2, "== double click =="

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->isDoubleClick:Z

    return v1

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$100(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    move-result-object p1

    new-instance v0, Lcom/apicloud/FNPhotograph/CameraView$1$1;

    invoke-direct {v0, p0, p2}, Lcom/apicloud/FNPhotograph/CameraView$1$1;-><init>(Lcom/apicloud/FNPhotograph/CameraView$1;Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0, v4, v5}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1;->firstClickTime:J

    :cond_2
    return v1
.end method
