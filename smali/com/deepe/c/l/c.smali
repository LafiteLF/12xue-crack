.class public abstract Lcom/deepe/c/l/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/l/e;


# instance fields
.field private a:Lcom/deepe/c/l/f/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/l/b;)Lcom/deepe/c/l/f/h;
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/l/c;->a:Lcom/deepe/c/l/f/h;

    if-nez p1, :cond_0

    new-instance p1, Lcom/deepe/c/l/f/h;

    invoke-direct {p1}, Lcom/deepe/c/l/f/h;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/l/c;->a:Lcom/deepe/c/l/f/h;

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/l/c;->a:Lcom/deepe/c/l/f/h;

    return-object p1
.end method

.method public a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/b/a;Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/g/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    new-instance p1, Lcom/deepe/c/l/g/e;

    invoke-direct {p1}, Lcom/deepe/c/l/g/e;-><init>()V

    return-object p1
.end method

.method public a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/l/f/i;

    check-cast p2, Lcom/deepe/c/l/f/h;

    invoke-direct {v0, p2}, Lcom/deepe/c/l/f/i;-><init>(Lcom/deepe/c/l/f/h;)V

    invoke-interface {p1, v0}, Lcom/deepe/c/l/b;->a(Lcom/deepe/c/l/f/f;)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V
    .locals 0

    return-void
.end method
