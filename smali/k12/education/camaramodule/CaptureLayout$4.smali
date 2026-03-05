.class Lk12/education/camaramodule/CaptureLayout$4;
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

    .line 218
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout$4;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$4;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$300(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/TypeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$4;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$300(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/TypeListener;

    move-result-object p1

    invoke-interface {p1}, Lk12/education/camaramodule/listener/TypeListener;->confirm()V

    .line 224
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$4;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method
