.class public abstract Lcom/apicloud/a/f/a;
.super Lcom/apicloud/a/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/a/e/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/i;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/a;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/a;->a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/e/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TO;>;)TO;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/a/f/a;->c()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/apicloud/a/c;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/f/a;->a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/apicloud/a/e/g;->a(Ljava/lang/Object;Lcom/apicloud/a/c;)V

    :cond_0
    return-void
.end method

.method protected final b()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/a;->a:Lcom/apicloud/a/d;

    return-object v0
.end method

.method public final c()Lcom/apicloud/a/e/f;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    return-object v0
.end method
