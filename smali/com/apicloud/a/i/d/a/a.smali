.class public Lcom/apicloud/a/i/d/a/a;
.super Lcom/apicloud/a/i/d/a/k;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/d/a/a;->a:I

    iput p4, p0, Lcom/apicloud/a/i/d/a/a;->b:I

    iput p2, p0, Lcom/apicloud/a/i/d/a/a;->d:I

    iput p3, p0, Lcom/apicloud/a/i/d/a/a;->c:I

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/a;->b:I

    iget v1, p0, Lcom/apicloud/a/i/d/a/a;->a:I

    invoke-static {v0, v1}, Lcom/apicloud/a/i/d/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/a;->b:I

    iget v1, p0, Lcom/apicloud/a/i/d/a/a;->d:I

    invoke-static {v0, v1}, Lcom/apicloud/a/i/d/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/a;->b:I

    iget v1, p0, Lcom/apicloud/a/i/d/a/a;->c:I

    invoke-static {v0, v1}, Lcom/apicloud/a/i/d/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BorderColor["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/a/i/d/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
