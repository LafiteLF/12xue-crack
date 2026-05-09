.class public Lcom/apicloud/a/g/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/apicloud/a/c;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/g/f;->b:Lcom/apicloud/a/c;

    iput-boolean p2, p0, Lcom/apicloud/a/g/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/f;->c:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/f;->b:Lcom/apicloud/a/c;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/f;->b:Lcom/apicloud/a/c;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c;->i(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/apicloud/a/g/f;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "InnerStyle"

    goto :goto_0

    :cond_0
    const-string v1, "LinkStyle"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/f;->b:Lcom/apicloud/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
