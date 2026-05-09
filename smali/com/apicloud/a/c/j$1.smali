.class Lcom/apicloud/a/c/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/j;

.field private final synthetic b:[Ljava/lang/Object;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/j;[Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    iput-object p2, p0, Lcom/apicloud/a/c/j$1;->b:[Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/apicloud/a/c/j$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    iget-object v1, p0, Lcom/apicloud/a/c/j$1;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    iget-object v2, p0, Lcom/apicloud/a/c/j$1;->b:[Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/apicloud/a/c/j;->b(Lcom/apicloud/a/c/j;[Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v2}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/eclipsesource/v8/V8Function;->call(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_4
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    iget-object v3, p0, Lcom/apicloud/a/c/j$1;->b:[Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_6
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_9

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_7
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_8
    return-void

    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_a
    iget-boolean v0, p0, Lcom/apicloud/a/c/j$1;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v0}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_c
    iget-boolean v1, p0, Lcom/apicloud/a/c/j$1;->c:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/apicloud/a/c/j$1;->a:Lcom/apicloud/a/c/j;

    invoke-static {v1}, Lcom/apicloud/a/c/j;->a(Lcom/apicloud/a/c/j;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eclipsesource/v8/V8Function;->close()V

    :cond_d
    throw v0
.end method
