.class Lcom/uzmap/pkg/a/d$1;
.super Lcom/uzmap/pkg/b/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/a/d;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/a/d;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/d$1;->a:Lcom/uzmap/pkg/a/d;

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/d$1;->a:Lcom/uzmap/pkg/a/d;

    invoke-static {v0}, Lcom/uzmap/pkg/a/d;->a(Lcom/uzmap/pkg/a/d;)Lcom/apicloud/b/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/a/d$1;->a:Lcom/uzmap/pkg/a/d;

    invoke-static {v0}, Lcom/uzmap/pkg/a/d;->a(Lcom/uzmap/pkg/a/d;)Lcom/apicloud/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/a/d$1;->a:Lcom/uzmap/pkg/a/d;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/a/d;->k(I)Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/apicloud/b/a/g;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
