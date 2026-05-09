.class Lk12/education/camaramodule/NewCameraActivity$1;
.super Ljava/lang/Object;
.source "NewCameraActivity.java"

# interfaces
.implements Lk12/education/camaramodule/listener/ErrorListener;


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

    .line 67
    iput-object p1, p0, Lk12/education/camaramodule/NewCameraActivity$1;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AudioPermissionError()V
    .locals 2

    const-string v0, "CJT"

    const-string v1, "AudioPermissionError"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity$1;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    invoke-static {v0}, Lk12/education/camaramodule/NewCameraActivity;->access$000(Lk12/education/camaramodule/NewCameraActivity;)V

    return-void
.end method

.method public onError()V
    .locals 3

    const-string v0, "CJT"

    const-string v1, "open camera error"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lk12/education/camaramodule/NewCameraActivity$1;->this$0:Lk12/education/camaramodule/NewCameraActivity;

    const-string v1, "\u76f8\u673a\u6253\u5f00\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
