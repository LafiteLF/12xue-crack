.class public Lcom/apicloud/a/f/f/d;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/f/f/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/f/f/a;ILjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/f/f/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/d;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p2

    const-string p3, "WebSocket close error."

    invoke-static {p3, p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/apicloud/a/f/f/a;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/f/f/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/d;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p2

    const-string v0, "WebSocket send data aborted."

    invoke-static {v0, p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/f/f/d;Lcom/apicloud/a/f/f/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/f/d;->b(Lcom/apicloud/a/f/f/a;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/f/f/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/apicloud/a/f/f/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/d;->b()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object v0

    const-string v1, "WebSocket openConnect aborted."

    invoke-static {v1, p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/f/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, 0x35cf88

    if-eq p4, v0, :cond_2

    const v0, 0x5a5ddf8

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "close"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    const-string p4, "code"

    invoke-virtual {p3, p4, p2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p4, "reason"

    invoke-virtual {p3, p4}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/f/f/d;->a(Lcom/apicloud/a/f/f/a;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p4, "send"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "data"

    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/f/f/d;->a(Lcom/apicloud/a/f/f/a;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/f/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/f/f/d;->a(Lcom/apicloud/a/f/f/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/f/d;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/f/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$websocket"

    return-object v0
.end method

.method public a(Lcom/apicloud/a/f/f/a;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/f/f/a;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/f/f/a;)V
    .locals 1

    new-instance p1, Lcom/apicloud/a/f/f/c;

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/d;->b()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/apicloud/a/f/f/c;-><init>(Lcom/apicloud/a/f/f/a;Lcom/apicloud/a/d;)V

    invoke-virtual {p2, p1}, Lcom/apicloud/a/f/f/a;->a(Lcom/apicloud/a/f/f/a$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/f/f/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/f/d;->a(Ljava/lang/String;Lcom/apicloud/a/f/f/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/f/a;
    .locals 3

    const-string p1, "url"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    const-string v1, "protocols"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/deepe/c/i/k;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    :goto_0
    invoke-static {p1, p2}, Lcom/apicloud/a/f/f/a;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/f/f/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/a/f/f/d;->b()Lcom/apicloud/a/d;

    move-result-object p2

    new-instance v0, Lcom/apicloud/a/f/f/d$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/f/f/d$1;-><init>(Lcom/apicloud/a/f/f/d;Lcom/apicloud/a/f/f/a;)V

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/f/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/f/d;->a(Lcom/apicloud/a/f/f/a;)V

    return-void
.end method
