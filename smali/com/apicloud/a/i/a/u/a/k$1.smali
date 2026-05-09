.class Lcom/apicloud/a/i/a/u/a/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/u/a/k;->a(Landroid/content/Context;Lcom/apicloud/a/i/a/u/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/a/k;

.field private final synthetic b:Lcom/apicloud/a/i/a/u/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/k;Lcom/apicloud/a/i/a/u/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/k$1;->a:Lcom/apicloud/a/i/a/u/a/k;

    iput-object p2, p0, Lcom/apicloud/a/i/a/u/a/k$1;->b:Lcom/apicloud/a/i/a/u/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k$1;->a:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/k;->c()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k$1;->a:Lcom/apicloud/a/i/a/u/a/k;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k$1;->b:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/apicloud/a/i/a/u/a/k;->a(Lcom/apicloud/a/i/a/u/a/k;ILjava/util/List;)V

    return-void
.end method
