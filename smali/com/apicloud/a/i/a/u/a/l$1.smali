.class Lcom/apicloud/a/i/a/u/a/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/u/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/a/l;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/l$1;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/u/a/d;Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l$1;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/l;)Lcom/apicloud/a/i/a/u/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/u/a/m;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/u/a/m;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$1;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p2}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l$1;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/l;)Lcom/apicloud/a/i/a/u/a/i;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$1;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p2}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/u/a/i;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
