.class Lcom/deepe/b/g/a$1;
.super Lcom/uzmap/pkg/openapi/mam/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/g/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/g/a;


# direct methods
.method constructor <init>(Lcom/deepe/b/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/g/a$1;->a:Lcom/deepe/b/g/a;

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/UpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/uzmap/pkg/openapi/mam/Results;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/g/a$1;->a:Lcom/deepe/b/g/a;

    invoke-static {v0}, Lcom/deepe/b/g/a;->a(Lcom/deepe/b/g/a;)Lcom/deepe/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/openapi/mam/Results;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/b/g/a$1;->a:Lcom/deepe/b/g/a;

    invoke-static {v0}, Lcom/deepe/b/g/a;->b(Lcom/deepe/b/g/a;)Lcom/deepe/b/d/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/uzmap/pkg/openapi/mam/Results;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/b/b/a;->b(Ljava/lang/String;)Lcom/deepe/b/d/f;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/g/a$1;->a:Lcom/deepe/b/g/a;

    invoke-static {v0}, Lcom/deepe/b/g/a;->b(Lcom/deepe/b/g/a;)Lcom/deepe/b/d/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/deepe/b/d/e;->a(Lcom/deepe/b/d/f;)V

    :cond_1
    return-void
.end method
