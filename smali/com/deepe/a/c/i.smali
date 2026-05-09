.class final Lcom/deepe/a/c/i;
.super Lcom/deepe/a/c/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/c/i$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/c/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(JLjava/lang/String;Lcom/deepe/a/c/c;)V
    .locals 11

    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v9, Lcom/deepe/a/c/e;

    invoke-direct {v9}, Lcom/deepe/a/c/e;-><init>()V

    new-instance v10, Lcom/deepe/a/c/i$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v8

    move-wide v3, p1

    move-wide v5, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/deepe/a/c/i$1;-><init>(Lcom/deepe/a/c/i;Landroid/os/CancellationSignal;JJLcom/deepe/a/c/c;)V

    invoke-virtual {p0, v10}, Lcom/deepe/a/c/i;->a(Lcom/deepe/a/c/a;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/deepe/a/c/i;->d()Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p3, v8, v9, v10}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v10}, Lcom/deepe/a/c/i$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/deepe/a/c/i;->a(Lcom/deepe/a/c/a;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/deepe/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
