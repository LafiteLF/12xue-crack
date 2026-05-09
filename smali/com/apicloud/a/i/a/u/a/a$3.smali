.class Lcom/apicloud/a/i/a/u/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/u/a/a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/a/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/a$3;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/a$3;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/a;->b(Lcom/apicloud/a/i/a/u/a/a;)Lcom/apicloud/a/i/a/u/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/a$3;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/u/a/a;->c(Lcom/apicloud/a/i/a/u/a/a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/j;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
