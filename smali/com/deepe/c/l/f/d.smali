.class public abstract Lcom/deepe/c/l/f/d;
.super Lcom/deepe/c/l/f/g;


# direct methods
.method public constructor <init>(Lcom/deepe/c/l/c/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/l/f/g;-><init>(Lcom/deepe/c/l/c/c;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/l/f/d;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/l/f/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/l/f/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/l/f/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/l/d/d;

    const-string v1, "Control frame can\'t have rsv3==true set"

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/deepe/c/l/d/d;

    const-string v1, "Control frame can\'t have rsv2==true set"

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/deepe/c/l/d/d;

    const-string v1, "Control frame can\'t have rsv1==true set"

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/deepe/c/l/d/d;

    const-string v1, "Control frame can\'t have fin==false set"

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
