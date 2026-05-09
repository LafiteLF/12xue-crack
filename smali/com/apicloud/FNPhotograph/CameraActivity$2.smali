.class Lcom/apicloud/FNPhotograph/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 88
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$2;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$2;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->access$100(Lcom/apicloud/FNPhotograph/CameraActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
