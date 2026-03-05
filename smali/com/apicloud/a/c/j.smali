.class public Lcom/apicloud/a/c/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private final b:Lcom/eclipsesource/v8/V8Function;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;Lcom/eclipsesource/v8/V8Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/j;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/c/j;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/j;->c([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/j;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/j;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' with arguments "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/deepe/d/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/c/j;[Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/j;->d([Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;

    move-result-object p0

    return-object p0
.end method

.method private c([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private d([Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/j;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->i()Lcom/apicloud/a/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p1, v3

    invoke-virtual {v0, v1, v4}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/c/j;->b([Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/j;->a:Lcom/apicloud/a/d;

    new-instance v1, Lcom/apicloud/a/c/j$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/apicloud/a/c/j$1;-><init>(Lcom/apicloud/a/c/j;[Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b([Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->isReleased()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/c/j;->c([Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/c/j;->d([Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {v2, v1, v0}, Lcom/eclipsesource/v8/V8Function;->call(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_3
    return-object v2

    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {v3}, Lcom/eclipsesource/v8/V8Function;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_6
    return-object v2

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v0, v1

    :goto_0
    :try_start_4
    invoke-direct {p0, p1, v2}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_7
    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_9
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_a
    return-object v1

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_b
    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/apicloud/a/c/j;->b:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_c
    throw p1
.end method

.method public varargs b([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;Z)V

    return-void
.end method
