.class public Lcom/apicloud/a/i/a/y/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/y/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/y/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/y/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/y/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/c;->a:Lcom/apicloud/a/i/a/y/b;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/apicloud/a/i/a/y/c$1;

    invoke-direct {p1, p0, p2}, Lcom/apicloud/a/i/a/y/c$1;-><init>(Lcom/apicloud/a/i/a/y/c;Lcom/apicloud/a/i/a/y/a;)V

    :goto_0
    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/y/a;->a(Lcom/apicloud/a/i/a/y/a/l;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/y/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/y/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/y/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/y/c;->a(Lcom/apicloud/a/i/a/y/a;)Lcom/apicloud/a/i/a/y/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/y/a;)Lcom/apicloud/a/i/a/y/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/c;->a:Lcom/apicloud/a/i/a/y/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "rich-text"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/y/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/y/c;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "interact"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/y/c;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/y/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/y/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/y/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
