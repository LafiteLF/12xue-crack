.class Lcom/apicloud/FNPhotograph/FNPhotograph$10;
.super Lcom/apicloud/FNPhotograph/OnAnimationListener;
.source "FNPhotograph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->animEnterOrQuit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$10;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$10;->val$target:Landroid/view/View;

    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/OnAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 655
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$10;->val$target:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
