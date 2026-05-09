.class Lcom/apicloud/FNPhotograph/CameraActivity$10;
.super Lcom/apicloud/FNPhotograph/OnAnimationListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->animEnterOrQuit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$10;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$10;->val$target:Landroid/view/View;

    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/OnAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$10;->val$target:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
