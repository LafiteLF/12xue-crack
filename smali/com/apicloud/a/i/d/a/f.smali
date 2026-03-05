.class public abstract Lcom/apicloud/a/i/d/a/f;
.super Lcom/apicloud/a/i/d/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/a/i/d/a/k;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private final b:[Z

.field private c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/k;-><init>()V

    invoke-static {}, Lcom/apicloud/a/i/d/a/f;->c()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    invoke-static {}, Lcom/apicloud/a/i/d/a/f;->d()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/f;->b:[Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/f;->c:[Ljava/lang/Object;

    return-void
.end method

.method private a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->b:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method private static c()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static d()[Z
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->b:[Z

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/a/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/apicloud/a/i/d/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget-object p2, p0, Lcom/apicloud/a/i/d/a/f;->b:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    return v0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public b(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq p1, v2, :cond_4

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_5

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/a/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    :cond_6
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/a/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_7
    invoke-direct {p0, v3}, Lcom/apicloud/a/i/d/a/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    aget-object p1, p1, v3

    return-object p1

    :cond_8
    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_9

    aget-object p1, v0, p1

    return-object p1

    :cond_9
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/f;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/apicloud/a/i/d/a/f;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
