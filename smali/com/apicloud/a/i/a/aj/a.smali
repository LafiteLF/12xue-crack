.class public Lcom/apicloud/a/i/a/aj/a;
.super Lcom/apicloud/a/i/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/aj/b;",
        ">",
        "Lcom/apicloud/a/i/a/i/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "view"

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/i/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aj/a;->d(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aj/b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aj/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/c;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Lcom/apicloud/a/i/a/aj/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aj/a;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/aj/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
