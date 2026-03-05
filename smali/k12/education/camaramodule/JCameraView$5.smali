.class Lk12/education/camaramodule/JCameraView$5;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lk12/education/camaramodule/listener/ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/JCameraView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/JCameraView;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/JCameraView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$5;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 260
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$5;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$800(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$5;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$800(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ClickListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/ClickListener;->onClick()V

    :cond_0
    return-void
.end method
