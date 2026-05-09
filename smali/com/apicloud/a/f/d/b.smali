.class public Lcom/apicloud/a/f/d/b;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/f/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/d/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const-string v0, "text"

    const-string v1, "data"

    const/4 v2, 0x0

    const-string v3, "encoding"

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p4, "encodeSync"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/f/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string p4, "decodeSync"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-static {p3, v1}, Lcom/apicloud/a/c/y;->a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/f/d/a;->b(Lcom/eclipsesource/v8/V8ArrayBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-object p2, v2

    goto :goto_1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    :cond_3
    throw p1

    :catch_1
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    :cond_4
    return-object v2

    :sswitch_2
    const-string p4, "encode"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/f/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_3
    const-string p4, "decode"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/apicloud/a/f/d/b;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p2

    invoke-virtual {p3, v1}, Lcom/apicloud/a/c;->m(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    if-eqz p2, :cond_8

    const-string p1, "result"

    const-string p3, "string"

    const-string p4, ""

    invoke-virtual {p2, p1, p3, p4}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :try_start_2
    invoke-virtual {p3, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, v1}, Lcom/apicloud/a/c/y;->a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lcom/apicloud/a/f/d/a;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    if-eqz p2, :cond_8

    const-string p1, "error"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f9d6e12 -> :sswitch_3
        -0x4d69c1ea -> :sswitch_2
        -0x480c8657 -> :sswitch_1
        -0x1d5b2e2f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/d/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/f/d/b;->a(Lcom/apicloud/a/f/d/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/d/b;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/d/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$textcodec"

    return-object v0
.end method

.method public a(Lcom/apicloud/a/f/d/a;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/f/d/a;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/d/a;
    .locals 0

    new-instance p1, Lcom/apicloud/a/f/d/a;

    invoke-virtual {p0}, Lcom/apicloud/a/f/d/b;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apicloud/a/f/d/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/d/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/d/b;->a(Lcom/apicloud/a/f/d/a;)V

    return-void
.end method
