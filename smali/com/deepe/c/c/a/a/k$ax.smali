.class public abstract Lcom/deepe/c/c/a/a/k$ax;
.super Lcom/deepe/c/c/a/a/k$ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ax"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/k$am;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ax;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text content elements cannot contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/k$ag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
