.class public Lcom/apicloud/a/i/a/aa/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/apicloud/a/i/a/aa/a;->a:I

    iput v0, p0, Lcom/apicloud/a/i/a/aa/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/aa/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/aa/a;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/aa/a;->b:I

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/aa/a;->a:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/aa/a;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
