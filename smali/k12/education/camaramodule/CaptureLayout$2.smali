.class Lk12/education/camaramodule/CaptureLayout$2;
.super Ljava/lang/Object;
.source "CaptureLayout.java"

# interfaces
.implements Lk12/education/camaramodule/listener/CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/CaptureLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CaptureLayout;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/CaptureLayout;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEnd(J)V
    .locals 1

    .line 173
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/listener/CaptureListener;->recordEnd(J)V

    .line 176
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    .line 177
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startTypeBtnAnimator()V

    return-void
.end method

.method public recordError()V
    .locals 1

    .line 189
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/CaptureListener;->recordError()V

    :cond_0
    return-void
.end method

.method public recordShort(J)V
    .locals 1

    .line 157
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/listener/CaptureListener;->recordShort(J)V

    .line 160
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method

.method public recordStart()V
    .locals 1

    .line 165
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/CaptureListener;->recordStart()V

    .line 168
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method

.method public recordZoom(F)V
    .locals 1

    .line 182
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lk12/education/camaramodule/listener/CaptureListener;->recordZoom(F)V

    :cond_0
    return-void
.end method

.method public takePictures()V
    .locals 1

    .line 150
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lk12/education/camaramodule/CaptureLayout$2;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {v0}, Lk12/education/camaramodule/CaptureLayout;->access$200(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/CaptureListener;->takePictures()V

    :cond_0
    return-void
.end method
