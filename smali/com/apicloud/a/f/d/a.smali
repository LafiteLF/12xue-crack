.class public Lcom/apicloud/a/f/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/eclipsesource/v8/V8ArrayBuffer;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B

    move-result-object p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "result"

    const-string v1, "string"

    invoke-virtual {p1, p2, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    const-string p2, "result"

    const-string v1, "data"

    invoke-virtual {v0, p2, v1, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "utf-8"

    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/f/d/a;->a:Lcom/apicloud/a/d;

    invoke-static {p1, p2}, Lcom/apicloud/a/c/y;->a([BLcom/apicloud/a/d;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/eclipsesource/v8/V8ArrayBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B

    move-result-object p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
