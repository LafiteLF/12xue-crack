.class Ldoodle/DoodleView$DoodleViewInner;
.super Ljava/lang/Object;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoodleViewInner"
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleView;


# direct methods
.method private constructor <init>(Ldoodle/DoodleView;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldoodle/DoodleView;Ldoodle/DoodleView$1;)V
    .locals 0

    .line 1004
    invoke-direct {p0, p1}, Ldoodle/DoodleView$DoodleViewInner;-><init>(Ldoodle/DoodleView;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1020
    iget-object v0, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-static {v0, p1}, Ldoodle/DoodleView;->access$500(Ldoodle/DoodleView;Landroid/graphics/Canvas;)V

    .line 1021
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1007
    iget-object v0, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-static {v0}, Ldoodle/DoodleView;->access$300(Ldoodle/DoodleView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-static {v1}, Ldoodle/DoodleView;->access$200(Ldoodle/DoodleView;)Ldoodle/core/IDoodlePen;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldoodle/core/IDoodleTouchDetector;

    if-eqz v0, :cond_0

    .line 1009
    invoke-interface {v0, p1}, Ldoodle/core/IDoodleTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1012
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-static {v0}, Ldoodle/DoodleView;->access$400(Ldoodle/DoodleView;)Ldoodle/core/IDoodleTouchDetector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Ldoodle/DoodleView$DoodleViewInner;->this$0:Ldoodle/DoodleView;

    invoke-static {v0}, Ldoodle/DoodleView;->access$400(Ldoodle/DoodleView;)Ldoodle/core/IDoodleTouchDetector;

    move-result-object v0

    invoke-interface {v0, p1}, Ldoodle/core/IDoodleTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
