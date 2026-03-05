.class Lk12/education/camaramodule/NewCameraActivity$3;
.super Ljava/lang/Object;
.source "NewCameraActivity.java"

# interfaces
.implements Lk12/education/camaramodule/listener/ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/NewCameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/NewCameraActivity;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/NewCameraActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$3;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 124
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity$3;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-virtual {v0}, Lk12/education/camaramodule/NewCameraActivity;->finish()V

    return-void
.end method
