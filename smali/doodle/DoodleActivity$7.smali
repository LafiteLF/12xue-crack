.class Ldoodle/DoodleActivity$7;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;)V
    .locals 0

    .line 399
    iput-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 404
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$900(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    .line 405
    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget-wide v0, p1, Ldoodle/DoodleParams;->mChangePanelVisibilityDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1000(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1200(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1200(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object v0

    iget-wide v0, v0, Ldoodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1000(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 409
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1200(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    iget-object p1, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p2}, Ldoodle/DoodleActivity;->access$1000(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Ldoodle/DoodleActivity$7;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object v0

    iget-wide v0, v0, Ldoodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
