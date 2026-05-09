.class public Lcom/apicloud/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# instance fields
.field protected final a:Lcom/apicloud/a/c/x;

.field protected final b:Lcom/apicloud/a/c/s;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/i;->a:Lcom/apicloud/a/c/x;

    iput-object p2, p0, Lcom/apicloud/a/c/i;->b:Lcom/apicloud/a/c/s;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/c/i;->a()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Z)Lcom/eclipsesource/v8/V8Object;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Z)Lcom/eclipsesource/v8/V8Object;

    iget-object v1, p0, Lcom/apicloud/a/c/i;->a:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, p1, p2, v2}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/eclipsesource/v8/V8Value;
    :try_end_0
    .catch Lcom/eclipsesource/v8/V8ScriptCompilationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "result"

    if-eqz p2, :cond_0

    :try_start_1
    move-object p2, p1

    check-cast p2, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {v0, v1, p2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Lcom/eclipsesource/v8/V8Value;)Lcom/eclipsesource/v8/V8Object;

    check-cast p1, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Value;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/eclipsesource/v8/V8Object;->addUndefined(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;
    :try_end_1
    .catch Lcom/eclipsesource/v8/V8ScriptCompilationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8ScriptCompilationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method final a()Lcom/eclipsesource/v8/V8Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/i;->a:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->b()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "vm.js"

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_4
    throw p1
.end method
