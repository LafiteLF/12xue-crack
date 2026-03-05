.class public Lcom/apicloud/a/f/f/a;
.super Lcom/deepe/c/l/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/f/f/a$a;
    }
.end annotation


# instance fields
.field private b:Lcom/apicloud/a/f/f/a$a;


# direct methods
.method constructor <init>(Ljava/net/URI;Lcom/apicloud/a/f/f/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/a/b;-><init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/f/f/a;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/deepe/c/i/x;->a(Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object p0

    new-instance v0, Lcom/apicloud/a/f/f/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/f/f/b;-><init>([Ljava/lang/String;)V

    new-instance p1, Lcom/apicloud/a/f/f/a;

    invoke-direct {p1, p0, v0}, Lcom/apicloud/a/f/f/a;-><init>(Ljava/net/URI;Lcom/apicloud/a/f/f/b;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "WebSocket url is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lcom/deepe/c/l/a/b;->j()V

    return-void
.end method

.method final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3e8

    :cond_0
    if-nez p2, :cond_1

    invoke-super {p0, p1}, Lcom/deepe/c/l/a/b;->a(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/deepe/c/l/a/b;->c(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/apicloud/a/f/f/a$a;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method final a(Lcom/apicloud/a/f/f/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    return-void
.end method

.method public a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/deepe/c/l/a/b;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/g/h;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/f/f/a$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/f/f/a$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/deepe/c/l/a/b;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/eclipsesource/v8/V8ArrayBuffer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-static {p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B

    move-result-object p1

    invoke-super {p0, p1}, Lcom/deepe/c/l/a/b;->a([B)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupport data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/f/f/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/f/f/a$a;->a(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method protected a(Ljavax/net/ssl/SSLParameters;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/deepe/c/l/a/b;->a(Ljavax/net/ssl/SSLParameters;)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/f/f/a;->b:Lcom/apicloud/a/f/f/a$a;

    return-void
.end method

.method public b(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/deepe/c/l/a/b;->b(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V

    return-void
.end method

.method final c()V
    .locals 0

    invoke-super {p0}, Lcom/deepe/c/l/a/b;->k()V

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/a;->b()V

    return-void
.end method
