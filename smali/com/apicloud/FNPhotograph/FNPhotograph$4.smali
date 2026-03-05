.class Lcom/apicloud/FNPhotograph/FNPhotograph$4;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$4;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$4;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 448
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$4;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraPreview;->autoFocus()V

    return-void
.end method
