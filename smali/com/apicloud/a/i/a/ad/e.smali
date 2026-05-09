.class public Lcom/apicloud/a/i/a/ad/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/r/u;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ad/j;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/apicloud/a/d;

.field private d:Lcom/apicloud/a/c/l;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->c:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/e;->a:Lcom/apicloud/a/i/a/ad/j;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/e;->a:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->d:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "index"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->d:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    const-string v0, "itemlongclick"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "index"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/e;->d:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/e;->b:Ljava/util/Map;

    const-string p3, "itemclick"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method
