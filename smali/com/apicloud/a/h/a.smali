.class Lcom/apicloud/a/h/a;
.super Ljava/util/Hashtable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x25225c9af82c20a2L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    instance-of v0, p2, Lcom/apicloud/a/c;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/apicloud/a/c;

    invoke-static {p2}, Lcom/apicloud/a/c;->d(Lcom/apicloud/a/c;)Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/apicloud/a/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
