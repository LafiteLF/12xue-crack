.class public Lcom/apicloud/a/i/a/ai/h;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/ai/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->e()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->f()Lcom/apicloud/a/i/a/ai/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/d;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "autoplay"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->a(Z)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/h;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private c(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "controls"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->b(Z)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "src"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/ai/h;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->a(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "poster"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/ai/h;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->b(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "loop"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->c(Z)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "muted"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->d(Z)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "currentTime"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->b(I)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "initial-time"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->a(I)V

    :cond_0
    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "playbackRate"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->a(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/h;->a(Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "currentTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/h;->c(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v0, "state"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/h;->b(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "speed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/h;->a(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/h;->d(Lcom/apicloud/a/i/a/ai/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_3
        0x6890047 -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x23d61fe6 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/h;->a(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V
    .locals 2

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

    invoke-virtual {p0, v1, p2, p1}, Lcom/apicloud/a/i/a/ai/h;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/ai/f;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/ai/f;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->b(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "playbackRate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->j(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->h(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "muted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->g(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->f(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->d(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "initial-time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->i(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v0, "controls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->c(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_8
    const-string v0, "poster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ai/h;->e(Lcom/apicloud/a/i/a/ai/f;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a8f02b3 -> :sswitch_8
        -0x21cab94a -> :sswitch_7
        -0x1b28f84a -> :sswitch_6
        0x1bde4 -> :sswitch_5
        0x32c6a4 -> :sswitch_4
        0x636f16b -> :sswitch_3
        0x23d61fe6 -> :sswitch_2
        0x50ca119b -> :sswitch_1
        0x55cdf963 -> :sswitch_0
    .end sparse-switch
.end method
