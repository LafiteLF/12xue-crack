.class Lcom/apicloud/a/i/a/p/a$1;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/p/a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/b/e$a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/p/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/p/a;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/p/a$1;->a:Lcom/apicloud/a/i/a/p/a;

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/c;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/g/c;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/g/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/p/a$1;->a:Lcom/apicloud/a/i/a/p/a;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/p/a;->a(Lcom/apicloud/a/i/a/p/a;Landroid/view/View;)V

    :cond_1
    return-void
.end method
