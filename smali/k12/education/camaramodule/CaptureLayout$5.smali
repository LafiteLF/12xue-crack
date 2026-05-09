.class Lk12/education/camaramodule/CaptureLayout$5;
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

    .line 235
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout$5;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$5;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$400(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/ClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$5;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$400(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/listener/ClickListener;

    move-result-object p1

    invoke-interface {p1}, Lk12/education/camaramodule/listener/ClickListener;->onClick()V

    :cond_0
    return-void
.end method
