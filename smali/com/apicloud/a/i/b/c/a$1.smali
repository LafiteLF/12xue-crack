.class Lcom/apicloud/a/i/b/c/a$1;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/b/c/a;->a(Landroid/view/ViewGroup;)Lcom/apicloud/a/i/c/j;
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
.field final synthetic a:Lcom/apicloud/a/i/b/c/a;

.field private final synthetic b:Lcom/apicloud/a/i/c/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/b/c/a;Ljava/lang/Class;Lcom/apicloud/a/i/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/b/c/a$1;->a:Lcom/apicloud/a/i/b/c/a;

    iput-object p3, p0, Lcom/apicloud/a/i/b/c/a$1;->b:Lcom/apicloud/a/i/c/j;

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/g/c;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/c;->b()Lcom/apicloud/a/i/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/b/c/a$1;->b:Lcom/apicloud/a/i/c/j;

    iget-object v1, p1, Lcom/apicloud/a/i/c/l;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/apicloud/a/i/c/l;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
