.class Lcom/deepe/b/e/a$2;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/deepe/b/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/e/a;

.field private final synthetic b:Lcom/uzmap/pkg/openapi/mam/UpdateCallback;


# direct methods
.method constructor <init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/UpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/e/a$2;->a:Lcom/deepe/b/e/a;

    iput-object p2, p0, Lcom/deepe/b/e/a$2;->b:Lcom/uzmap/pkg/openapi/mam/UpdateCallback;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MamClient checkUpdate result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/e/a$2;->b:Lcom/uzmap/pkg/openapi/mam/UpdateCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/deepe/b/e/a;->b(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/openapi/mam/Results;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/mam/UpdateCallback;->onResult(Lcom/uzmap/pkg/openapi/mam/Results;)V

    :cond_0
    return-void
.end method
