.class public Lcom/apicloud/a/i/a/s/g;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/s/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/s/f;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/s/f;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/s/f;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/g;->a:Lcom/apicloud/a/i/a/s/f;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/s/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/d;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/apicloud/a/i/a/s/d;->c(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/d;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/s/e;->j()Lcom/apicloud/a/i/a/s/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/s/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/g;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/s/d;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/s/e;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/d;)V

    :cond_0
    return-object v0
.end method

.method private b(Lcom/apicloud/a/i/a/s/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/d;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/apicloud/a/i/a/s/d;->d(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/s/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/g;->a(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/s/f;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/g;->a:Lcom/apicloud/a/i/a/s/f;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "movable-view"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/s/g;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "htouchmove"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/apicloud/a/i/a/s/g;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Z)V

    return-void

    :sswitch_1
    const-string v0, "scale"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/s/g;->b(Lcom/apicloud/a/i/a/s/e;Z)V

    return-void

    :sswitch_2
    const-string v0, "vtouchmove"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/apicloud/a/i/a/s/g;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/s/e;Z)V

    return-void

    :sswitch_3
    const-string v0, "change"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/s/g;->a(Lcom/apicloud/a/i/a/s/e;Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5128ec50 -> :sswitch_3
        -0x506b7826 -> :sswitch_2
        0x683094a -> :sswitch_1
        0x53905828 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "10px"

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/s/e;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/g;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/s/e;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
