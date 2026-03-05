.class public Lcom/apicloud/a/i/a/e/f;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:[D

.field private static c:[Z

.field private static d:[Ljava/lang/String;

.field private static e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->a:[I

    new-array v1, v0, [D

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->b:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->c:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->d:[Ljava/lang/String;

    new-array v0, v0, [I

    sput-object v0, Lcom/apicloud/a/i/a/e/f;->e:[I

    return-void
.end method

.method private static a([Lcom/eclipsesource/v8/V8Array;)I
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/apicloud/a/i/a/e/f;->a:[I

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->a:[I

    aget-object v1, p0, v3

    sget-object v2, Lcom/apicloud/a/i/a/e/f;->b:[D

    const/4 v4, 0x2

    invoke-static {v1, v4, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->b:[D

    aget-object v1, p0, v4

    sget-object v2, Lcom/apicloud/a/i/a/e/f;->c:[Z

    const/4 v4, 0x3

    invoke-static {v1, v4, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->c:[Z

    aget-object v1, p0, v4

    sget-object v2, Lcom/apicloud/a/i/a/e/f;->d:[Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v4, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->d:[Ljava/lang/String;

    aget-object v1, p0, v4

    sget-object v2, Lcom/apicloud/a/i/a/e/f;->e:[I

    invoke-static {v1, v3, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sput-object v1, Lcom/apicloud/a/i/a/e/f;->e:[I

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result p0

    return p0
.end method

.method private static a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/apicloud/a/i/a/e/f;->a:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/apicloud/a/i/a/e/f;->b:[D

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/apicloud/a/i/a/e/f;->c:[Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/apicloud/a/i/a/e/f;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/apicloud/a/i/a/e/f;->e:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Lcom/eclipsesource/v8/V8Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eclipsesource/v8/V8Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "actionlist"

    invoke-virtual {p0, v0}, Lcom/eclipsesource/v8/V8Object;->getArray(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/e/f;->a(Lcom/eclipsesource/v8/V8Array;)[Lcom/eclipsesource/v8/V8Array;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/apicloud/a/i/a/e/f;->a([Lcom/eclipsesource/v8/V8Array;)I

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/i/a/e/f;->a(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/a/i/a/e/f;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/apicloud/a/i/a/e/f;->b([Lcom/eclipsesource/v8/V8Array;)V

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8Object;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/apicloud/a/i/a/e/f;->b([Lcom/eclipsesource/v8/V8Array;)V

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8Object;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {v1}, Lcom/apicloud/a/i/a/e/f;->b([Lcom/eclipsesource/v8/V8Array;)V

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8Object;->close()V

    throw v2
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "actionlist"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Lcom/eclipsesource/v8/V8Array;)[Lcom/eclipsesource/v8/V8Array;
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/eclipsesource/v8/V8Array;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/eclipsesource/v8/V8Array;->getArray(I)Lcom/eclipsesource/v8/V8Array;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static b([Lcom/eclipsesource/v8/V8Array;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/eclipsesource/v8/V8Array;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
