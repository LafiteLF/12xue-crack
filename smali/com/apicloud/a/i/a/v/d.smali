.class public Lcom/apicloud/a/i/a/v/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/v/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/v/c;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/v/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/v/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/v/d;->a:Lcom/apicloud/a/i/a/v/c;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/v/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/v/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/v/d;->a(Lcom/apicloud/a/i/a/v/b;)Lcom/apicloud/a/i/a/v/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/v/b;)Lcom/apicloud/a/i/a/v/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/v/d;->a:Lcom/apicloud/a/i/a/v/c;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "progress"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/v/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/v/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/v/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/v/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/v/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/v/d;->a(Lcom/apicloud/a/i/a/v/b;)Lcom/apicloud/a/i/a/v/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/apicloud/a/i/a/v/c;->a(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/v/b;Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "activeend"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/v/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/v/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/v/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/v/b;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
