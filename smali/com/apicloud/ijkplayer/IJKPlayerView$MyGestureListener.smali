.class Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IJKPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;


# direct methods
.method public constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 1464
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    .line 1465
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private progreccControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    .line 1642
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3600(Lcom/apicloud/ijkplayer/IJKPlayerView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3700(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3800(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3800(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 p1, 0x1

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v2, v2, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {v0, v2, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1474
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->pause()V

    goto :goto_0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v2, v2, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1478
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->start()V

    .line 1481
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_2

    .line 1482
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "eventType"

    const-string v3, "gestureDoubleTap"

    .line 1483
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1484
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v2

    iget-object v2, v2, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a7\u4ef6\u7684\u5bbd:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "velocityX \uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "velocityY \uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 1538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1539
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1540
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v1, v0, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    const-string v5, "gestureSwipeLeft"

    const-string v6, "gestureSwipeRight"

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const/4 v9, 0x0

    if-lez v1, :cond_4

    cmpl-float v1, v2, v9

    if-lez v1, :cond_1

    .line 1543
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2800(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->progreccControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    cmpg-float v0, p3, v9

    if-gez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, v5}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, v6}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    cmpg-float v1, p4, v9

    if-gez v1, :cond_2

    .line 1553
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "gestureRightDown"

    invoke-static {v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    .line 1555
    :cond_2
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "gestureRightUp"

    invoke-static {v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    :goto_0
    float-to-double v0, v0

    .line 1569
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    cmpl-double v0, v0, v5

    if-lez v0, :cond_9

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_9

    .line 1570
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1572
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3300(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto/16 :goto_2

    .line 1575
    :cond_3
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1576
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3300(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto/16 :goto_2

    :cond_4
    cmpl-float v1, v2, v9

    if-lez v1, :cond_6

    .line 1582
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2800(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1583
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->progreccControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    cmpg-float v0, p3, v9

    if-gez v0, :cond_5

    .line 1585
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, v5}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1587
    :cond_5
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, v6}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    cmpg-float v1, p4, v9

    if-gez v1, :cond_7

    .line 1591
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "gestureLeftDown"

    invoke-static {v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_1

    .line 1593
    :cond_7
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "gestureLeftUp"

    invoke-static {v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    .line 1595
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u96f6\u5ea6\u8c03\u8282\uff1adistanceX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   distanceY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, v0

    .line 1607
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    cmpg-double v0, v0, v5

    if-gez v0, :cond_9

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_9

    .line 1608
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1609
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1610
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3500(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_2

    .line 1613
    :cond_8
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1614
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$3500(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 1638
    :cond_9
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1500
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2600(Lcom/apicloud/ijkplayer/IJKPlayerView;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1501
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2600(Lcom/apicloud/ijkplayer/IJKPlayerView;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1502
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2602(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1505
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2700(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    .line 1507
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_1

    .line 1508
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventType"

    const-string v1, "gestureTap"

    .line 1509
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1510
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
