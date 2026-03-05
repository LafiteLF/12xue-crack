.class Lcom/apicloud/FNPhotograph/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->initHeaderLayout(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

.field final synthetic val$flashModeSetting:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$8;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$8;->val$flashModeSetting:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$8;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$8;->val$flashModeSetting:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->animEnterOrQuit(Landroid/view/View;)V

    return-void
.end method
