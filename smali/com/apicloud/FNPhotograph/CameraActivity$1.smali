.class Lcom/apicloud/FNPhotograph/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$1;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openFailed()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$1;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->access$002(Lcom/apicloud/FNPhotograph/CameraActivity;Z)Z

    .line 71
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$1;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    sget-object v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "cameraError"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/FNPhotograph/CameraActivity;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$1;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->finish()V

    return-void
.end method
