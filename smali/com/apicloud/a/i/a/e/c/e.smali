.class final Lcom/apicloud/a/i/a/e/c/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/apicloud/a/i/a/e/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/i/a/e/c/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/apicloud/a/c/j;

.field final c:Lcom/apicloud/a/i/a/e/c/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/e/c/d;",
            "Lcom/apicloud/a/i/a/e/c/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/apicloud/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/e;->c:Lcom/apicloud/a/i/a/e/c/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/c/e;->a:Lcom/apicloud/a/i/a/e/c/a;

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/c/e;->b:Lcom/apicloud/a/c/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/e;->a:Lcom/apicloud/a/i/a/e/c/a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/e/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/e;->c:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/e/c/d;->a(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "height"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/e;->b:Lcom/apicloud/a/c/j;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/c/j;->b([Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not load ImageBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
