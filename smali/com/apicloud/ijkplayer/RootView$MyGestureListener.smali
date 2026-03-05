.class Lcom/apicloud/ijkplayer/RootView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/RootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/RootView;


# direct methods
.method public constructor <init>(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    .line 1060
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    :try_start_0
    const-string p1, "TAG"

    const-string v0, "\u53cc\u51fb\u4e86-----------"

    .line 1066
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_0

    .line 1068
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "eventType"

    const-string v1, "gestureDoubleTap"

    .line 1069
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "TAG"

    const-string v0, "\u53cc\u51fb\u4e86"

    .line 1081
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a7\u4ef6\u7684\u5bbd:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/RootView;->getWidth()I

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

    .line 1173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "velocityX \uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
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
    .locals 3

    .line 1132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1133
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-virtual {p2}, Lcom/apicloud/ijkplayer/RootView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 1134
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float p1, p1, p2

    const-string p2, "gestureSwipeLeft"

    const-string v1, "gestureSwipeRight"

    const/4 v2, 0x0

    if-lez p1, :cond_3

    cmpl-float p1, v0, v2

    if-lez p1, :cond_1

    cmpg-float p1, p3, v2

    if-gez p1, :cond_0

    .line 1138
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1, v1}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    cmpg-float p1, p4, v2

    if-gez p1, :cond_2

    .line 1144
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string p2, "gestureRightDown"

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string p2, "gestureRightUp"

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_5

    cmpg-float p1, p3, v2

    if-gez p1, :cond_4

    .line 1152
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    :cond_4
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1, v1}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    cmpg-float p1, p4, v2

    if-gez p1, :cond_6

    .line 1158
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string p2, "gestureLeftDown"

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :cond_6
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string p2, "gestureLeftUp"

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1087
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1700(Lcom/apicloud/ijkplayer/RootView;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1088
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1700(Lcom/apicloud/ijkplayer/RootView;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1089
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/ijkplayer/RootView;->access$1702(Lcom/apicloud/ijkplayer/RootView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1092
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1093
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1094
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1400(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1096
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1097
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1400(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1098
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1800(Lcom/apicloud/ijkplayer/RootView;)V

    .line 1101
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_2

    .line 1102
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventType"

    const-string v2, "gestureTap"

    .line 1103
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1104
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/RootView;->access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
