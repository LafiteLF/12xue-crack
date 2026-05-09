.class public Lcom/apicloud/a/i/a/y/b;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/y/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "nodes"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/y/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "link-text-color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/y/a;->setLinkTextColor(I)V
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/apicloud/a/g/n;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "user-select"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/y/a;->setTextIsSelectable(Z)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/y/a;->setLinksClickable(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/y/a;->setLinksClickable(Z)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/y/a;->setAutoLinkMask(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/y/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/y/b;->a(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V
    .locals 4

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x671ef18a

    if-eq v2, v3, :cond_5

    const v3, -0x5ebf16c2

    if-eq v2, v3, :cond_3

    const v3, 0x64212b1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "nodes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/b;->b(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V

    return-void

    :cond_3
    const-string v2, "user-select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/b;->d(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V

    return-void

    :cond_5
    const-string v2, "link-text-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/b;->c(Lcom/apicloud/a/i/a/y/a;Lcom/apicloud/a/c;)V

    return-void
.end method
