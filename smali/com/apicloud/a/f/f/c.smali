.class Lcom/apicloud/a/f/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/f/f/a$a;


# instance fields
.field a:Lcom/apicloud/a/f/f/a;

.field private b:Lcom/apicloud/a/c/l;

.field private c:Lcom/apicloud/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/f/f/a;Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/f/c;->a:Lcom/apicloud/a/f/f/a;

    invoke-interface {p2}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    iput-object p2, p0, Lcom/apicloud/a/f/f/c;->c:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/apicloud/a/i/c/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/c;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    const-string v2, "$open"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/c;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "wasClean"

    invoke-virtual {v0, p2, p1}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    const-string p2, "$close"

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/c;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    const-string v1, "$error"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/c;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    const-string v1, "$message"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/c;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/f/f/c;->c:Lcom/apicloud/a/d;

    invoke-static {p1, v1}, Lcom/apicloud/a/c/y;->a(Ljava/nio/ByteBuffer;Lcom/apicloud/a/d;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/f/f/c;->b:Lcom/apicloud/a/c/l;

    const-string v1, "$message"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
