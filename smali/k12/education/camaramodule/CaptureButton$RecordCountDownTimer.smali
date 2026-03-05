.class Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk12/education/camaramodule/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CaptureButton;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/CaptureButton;JJ)V
    .locals 0

    .line 295
    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->this$0:Lk12/education/camaramodule/CaptureButton;

    .line 296
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 306
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->this$0:Lk12/education/camaramodule/CaptureButton;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lk12/education/camaramodule/CaptureButton;->access$600(Lk12/education/camaramodule/CaptureButton;J)V

    .line 307
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureButton;->access$700(Lk12/education/camaramodule/CaptureButton;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 301
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {v0, p1, p2}, Lk12/education/camaramodule/CaptureButton;->access$600(Lk12/education/camaramodule/CaptureButton;J)V

    return-void
.end method
