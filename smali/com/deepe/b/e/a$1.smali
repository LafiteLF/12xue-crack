.class Lcom/deepe/b/e/a$1;
.super Lcom/deepe/b/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/e/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/e/a;


# direct methods
.method constructor <init>(Lcom/deepe/b/e/a;Lcom/deepe/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-direct {p0, p2}, Lcom/deepe/b/d/b;-><init>(Lcom/deepe/b/a;)V

    return-void
.end method


# virtual methods
.method public a(IIIDLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/deepe/b/d/d;->a(IIIDLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/deepe/b/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/deepe/b/d/c;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/b/d/d;->a(Lcom/deepe/b/d/c;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/b/d/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/deepe/b/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;Z)V

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/e/a$1;->a:Lcom/deepe/b/e/a;

    invoke-static {v0}, Lcom/deepe/b/e/a;->a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/d/d;->a(ZLcom/deepe/b/b/c;)V

    :cond_0
    return-void
.end method
