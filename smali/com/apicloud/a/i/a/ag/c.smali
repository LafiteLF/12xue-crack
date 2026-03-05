.class public Lcom/apicloud/a/i/a/ag/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/ag/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ag/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ag/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ag/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ag/c;->a:Lcom/apicloud/a/i/a/ag/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ag/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ag/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ag/c;->a(Lcom/apicloud/a/i/a/ag/a;)Lcom/apicloud/a/i/a/ag/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ag/a;)Lcom/apicloud/a/i/a/ag/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ag/c;->a:Lcom/apicloud/a/i/a/ag/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;
    .locals 2

    new-instance p1, Lcom/apicloud/a/i/a/ag/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ag/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ag/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ag/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x7f040000

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/i/a/ag/a;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method
