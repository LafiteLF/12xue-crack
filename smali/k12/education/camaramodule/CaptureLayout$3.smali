.class Lk12/education/camaramodule/CaptureLayout$3;
.super Ljava/lang/Object;
.source "CaptureLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 201
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout$3;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$3;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$300(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/TypeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$3;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$300(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/TypeListener;

    move-result-object p1

    invoke-interface {p1}, Lk12/education/camaramodule/listener/TypeListener;->cancel()V

    .line 207
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$3;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method
