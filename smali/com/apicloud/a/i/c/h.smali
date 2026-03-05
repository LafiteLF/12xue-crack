.class public Lcom/apicloud/a/i/c/h;
.super Lcom/apicloud/a/i/c/j;


# static fields
.field private static final serialVersionUID:J = -0x1471a10421d0f57bL


# instance fields
.field private a:Lcom/apicloud/a/i/c/i;

.field private b:Lcom/apicloud/a/i/c/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/apicloud/a/i/c/h;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/c/h;->a:Lcom/apicloud/a/i/c/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/c/i;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/i;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/h;->a:Lcom/apicloud/a/i/c/i;

    const-string v1, "methods"

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/c/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/c/j;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/j;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/c/h;->a:Lcom/apicloud/a/i/c/i;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/c/i;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/apicloud/a/i/c/h;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/c/h;->b:Lcom/apicloud/a/i/c/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/c/i;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/i;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/h;->b:Lcom/apicloud/a/i/c/i;

    const-string v1, "attrs"

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/c/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/c/j;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/j;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "writable"

    invoke-virtual {v0, p2, p1}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/c/h;->b:Lcom/apicloud/a/i/c/i;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/c/i;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/apicloud/a/i/c/h;
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/c/h;->a(Ljava/lang/String;)Lcom/apicloud/a/i/c/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public b([Ljava/lang/String;)Lcom/apicloud/a/i/c/h;
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {p0, v3, v1}, Lcom/apicloud/a/i/c/h;->a(Ljava/lang/String;Z)Lcom/apicloud/a/i/c/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
