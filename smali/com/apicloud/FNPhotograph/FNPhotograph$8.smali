.class Lcom/apicloud/FNPhotograph/FNPhotograph$8;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->initHeaderLayout(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$flashModeSetting:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$8;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$8;->val$flashModeSetting:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 596
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$8;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$8;->val$flashModeSetting:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->animEnterOrQuit(Landroid/view/View;)V

    return-void
.end method
