.class public Lcom/apicloud/a/i/d/a/e;
.super Lcom/apicloud/a/i/d/a/k;


# instance fields
.field public a:Lcom/apicloud/a/i/d/a/l;

.field public b:Lcom/apicloud/a/i/d/a/l;

.field public c:Lcom/apicloud/a/i/d/a/l;

.field public d:Lcom/apicloud/a/i/d/a/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/k;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/d/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    new-instance v0, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    new-instance v0, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    new-instance v0, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    return-void
.end method


# virtual methods
.method public a(FFFFFFFF)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {p1, p3, p4}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object p1, p0, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {p1, p5, p6}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object p1, p0, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/d/a/l;

    invoke-direct {p1, p7, p8}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iput-object p1, p0, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "corner["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
