.class Lcom/apicloud/a/i/a/ai/a/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$4;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$4;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f(Lcom/apicloud/a/i/a/ai/a/d;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$4;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$4;->a:Lcom/apicloud/a/i/a/ai/a/d;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    :cond_0
    return-void
.end method
