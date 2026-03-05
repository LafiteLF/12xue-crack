.class Lcom/apicloud/a/i/a/r/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/r/l;->b(Lcom/apicloud/a/i/a/r/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/l;

.field private final synthetic b:Lcom/apicloud/a/i/a/r/u;

.field private final synthetic c:Lcom/apicloud/a/i/a/r/w;

.field private final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/r/l;Lcom/apicloud/a/i/a/r/u;Lcom/apicloud/a/i/a/r/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l$2;->a:Lcom/apicloud/a/i/a/r/l;

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/l$2;->b:Lcom/apicloud/a/i/a/r/u;

    iput-object p3, p0, Lcom/apicloud/a/i/a/r/l$2;->c:Lcom/apicloud/a/i/a/r/w;

    iput-object p4, p0, Lcom/apicloud/a/i/a/r/l$2;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l$2;->b:Lcom/apicloud/a/i/a/r/u;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l$2;->c:Lcom/apicloud/a/i/a/r/w;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/w;->f()I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l$2;->b:Lcom/apicloud/a/i/a/r/u;

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l$2;->d:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/apicloud/a/i/a/r/u;->a(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
