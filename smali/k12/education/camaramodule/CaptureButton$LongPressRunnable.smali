.class Lk12/education/camaramodule/CaptureButton$LongPressRunnable;
.super Ljava/lang/Object;
.source "CaptureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk12/education/camaramodule/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CaptureButton;


# direct methods
.method private constructor <init>(Lk12/education/camaramodule/CaptureButton;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lk12/education/camaramodule/CaptureButton;Lk12/education/camaramodule/CaptureButton$1;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 315
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lk12/education/camaramodule/CaptureButton;->access$302(Lk12/education/camaramodule/CaptureButton;I)I

    .line 317
    invoke-static {}, Lk12/education/camaramodule/util/CheckPermission;->getRecordState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v0, v1}, Lk12/education/camaramodule/CaptureButton;->access$302(Lk12/education/camaramodule/CaptureButton;I)I

    .line 319
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureButton;->access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureButton;->access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/CaptureListener;->recordError()V

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    .line 326
    invoke-static {v0}, Lk12/education/camaramodule/CaptureButton;->access$400(Lk12/education/camaramodule/CaptureButton;)F

    move-result v1

    iget-object v2, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    .line 327
    invoke-static {v2}, Lk12/education/camaramodule/CaptureButton;->access$400(Lk12/education/camaramodule/CaptureButton;)F

    move-result v2

    iget-object v3, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v3}, Lk12/education/camaramodule/CaptureButton;->access$800(Lk12/education/camaramodule/CaptureButton;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    .line 328
    invoke-static {v3}, Lk12/education/camaramodule/CaptureButton;->access$100(Lk12/education/camaramodule/CaptureButton;)F

    move-result v3

    iget-object v4, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    .line 329
    invoke-static {v4}, Lk12/education/camaramodule/CaptureButton;->access$100(Lk12/education/camaramodule/CaptureButton;)F

    move-result v4

    iget-object v5, p0, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v5}, Lk12/education/camaramodule/CaptureButton;->access$900(Lk12/education/camaramodule/CaptureButton;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 325
    invoke-static {v0, v1, v2, v3, v4}, Lk12/education/camaramodule/CaptureButton;->access$1000(Lk12/education/camaramodule/CaptureButton;FFFF)V

    return-void
.end method
