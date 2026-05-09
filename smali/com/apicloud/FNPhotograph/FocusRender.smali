.class public Lcom/apicloud/FNPhotograph/FocusRender;
.super Landroid/view/View;
.source "FocusRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LYH"


# instance fields
.field private autoHide:I

.field firstClickTime:J

.field isDoubleClick:Z

.field private mCameraView:Lcom/apicloud/FNPhotograph/CameraView;

.field private mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

.field private mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

.field private mPoint:Landroid/graphics/Point;

.field private mPreView:Lcom/apicloud/FNPhotograph/CameraPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/FNPhotograph/CameraPreview;Lcom/apicloud/FNPhotograph/FocusBoxParams;)V
    .locals 6

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 99
    iput-wide v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->firstClickTime:J

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->isDoubleClick:Z

    .line 60
    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPreView:Lcom/apicloud/FNPhotograph/CameraPreview;

    .line 62
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->color:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    .line 64
    new-instance p1, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iget v3, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    iget v4, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    iget v5, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->strokeWidth:F

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;-><init>(Landroid/view/View;IIIF)V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iget v0, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    iget p3, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;II)V

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/FNPhotograph/CameraView;Lcom/apicloud/FNPhotograph/FocusBoxParams;)V
    .locals 6

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 99
    iput-wide v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->firstClickTime:J

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->isDoubleClick:Z

    .line 46
    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    .line 48
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->color:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    .line 50
    new-instance p1, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iget v3, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    iget v4, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    iget v5, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->strokeWidth:F

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;-><init>(Landroid/view/View;IIIF)V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iget v0, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    iget p3, p3, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;II)V

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/FNPhotograph/FocusRender;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    return-object p0
.end method


# virtual methods
.method public firstFocus(II)V
    .locals 1

    .line 83
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    .line 84
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 85
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 87
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    if-eqz p1, :cond_0

    .line 88
    iget p2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->autoHide:I

    invoke-virtual {p1, p2}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startFocusRender(I)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->autoFocus()V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPreView:Lcom/apicloud/FNPhotograph/CameraPreview;

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraPreview;->autoFocus()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->isClear:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->getBoxSize()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->drawBox(Landroid/graphics/Canvas;Landroid/graphics/Point;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    if-eqz v0, :cond_1

    .line 115
    iget v2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->autoHide:I

    invoke-virtual {v0, v2}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startFocusRender(I)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->autoFocus()V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPreView:Lcom/apicloud/FNPhotograph/CameraPreview;

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->autoFocus()V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->isDoubleClick:Z

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/apicloud/FNPhotograph/FocusRender;->firstClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v2, p1}, Lcom/apicloud/FNPhotograph/OnCustomClickListener;->onDoubleClick(II)V

    const-string p1, "LYH"

    const-string v0, "== double click =="

    .line 132
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->isDoubleClick:Z

    goto :goto_0

    .line 138
    :cond_5
    new-instance v0, Lcom/apicloud/FNPhotograph/FocusRender$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/FNPhotograph/FocusRender$1;-><init>(Lcom/apicloud/FNPhotograph/FocusRender;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/apicloud/FNPhotograph/FocusRender;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apicloud/FNPhotograph/FocusRender;->firstClickTime:J

    goto :goto_0

    .line 107
    :cond_6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 109
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 110
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FocusRender;->invalidate()V

    :goto_0
    return v1
.end method

.method public setAutoHide(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->autoHide:I

    return-void
.end method

.method public setFocusBox(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mFocusBox:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    return-void
.end method

.method public setOnCustomClickListener(Lcom/apicloud/FNPhotograph/OnCustomClickListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    return-void
.end method
