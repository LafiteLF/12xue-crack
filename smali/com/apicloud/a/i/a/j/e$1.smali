.class Lcom/apicloud/a/i/a/j/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/j/e;->a(Lcom/apicloud/a/i/a/j/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/j/e;

.field private final synthetic b:Lcom/apicloud/a/i/a/j/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/j/e;Lcom/apicloud/a/i/a/j/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/e$1;->a:Lcom/apicloud/a/i/a/j/e;

    iput-object p2, p0, Lcom/apicloud/a/i/a/j/e$1;->b:Lcom/apicloud/a/i/a/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/e$1;->a:Lcom/apicloud/a/i/a/j/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/j/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/j/e$1;->b:Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "close"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/e$1;->a:Lcom/apicloud/a/i/a/j/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/j/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/j/e$1;->b:Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "cancel"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
