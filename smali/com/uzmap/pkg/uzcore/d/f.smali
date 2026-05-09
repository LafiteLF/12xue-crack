.class public Lcom/uzmap/pkg/uzcore/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/d/f$a;,
        Lcom/uzmap/pkg/uzcore/d/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/uzmap/pkg/uzcore/d/e;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/deepe/a/b/j;

.field private e:Lcom/deepe/a/b/g;

.field private f:Lcom/deepe/a/e/a;

.field private g:Lcom/deepe/a/b/i;

.field private h:Lcom/deepe/a/b/e;

.field private i:Lcom/uzmap/pkg/uzcore/d/f$b;

.field private j:Lcom/uzmap/pkg/uzcore/u;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/e;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzcore/d/e;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/f$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/f$1;-><init>(Lcom/uzmap/pkg/uzcore/d/f;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/b/k;->a(Landroid/content/Context;)Lcom/deepe/a/b/k;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    invoke-virtual {p1, v0}, Lcom/deepe/a/b/k;->a(Lcom/deepe/a/b/j;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/b/k;->a(Landroid/content/Context;)Lcom/deepe/a/b/k;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    invoke-virtual {p1, v0}, Lcom/deepe/a/b/k;->b(Lcom/deepe/a/b/j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->d:Lcom/deepe/a/b/j;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/d/f;->a(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/d/f;->b(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/d/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->f()Z

    move-result p0

    return p0
.end method

.method private b(Lcom/uzmap/pkg/uzcore/d/f$a;)V
    .locals 3

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/f$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/f$a;)Lcom/uzmap/pkg/uzcore/d/f$a;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "appintent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->h()V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "batterylow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "memorylow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->e(Z)V

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "swipeleft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 p1, 0x4

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "swipedown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 p1, 0x20

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "swiperight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 p1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "keyboardshow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->b(Z)V

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "keyboardhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->c(Z)V

    goto/16 :goto_1

    :sswitch_8
    const-string p1, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->a(Z)V

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "noticeclicked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->i()V

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, v2, v2}, Lcom/uzmap/pkg/uzcore/d/f;->a(ZI)V

    goto/16 :goto_1

    :sswitch_b
    const-string p1, "scrolltobottom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->g(Z)V

    goto :goto_1

    :sswitch_c
    const-string p1, "batterystatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->f(Z)V

    goto :goto_1

    :sswitch_d
    const-string v1, "appidle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "timeout"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/f$a;->a(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/uzmap/pkg/uzcore/d/f;->b(ZI)V

    goto :goto_1

    :sswitch_e
    const-string p1, "online"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_1

    :sswitch_f
    const-string p1, "offline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_1

    :cond_e
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->h(Z)V

    goto :goto_1

    :sswitch_10
    const-string p1, "takescreenshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_1

    :cond_f
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->d(Z)V

    goto :goto_1

    :sswitch_11
    const-string p1, "swipeup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_1

    :cond_10
    const/16 p1, 0x10

    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(ZI)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b8698ab -> :sswitch_11
        -0x6b3302d3 -> :sswitch_10
        -0x5c4df21d -> :sswitch_f
        -0x3c5549ad -> :sswitch_e
        -0x2f493e8b -> :sswitch_d
        -0x11b9ffc1 -> :sswitch_c
        -0x52995cd -> :sswitch_b
        0x1bfa3 -> :sswitch_a
        0x1ac164f -> :sswitch_9
        0x6854f06 -> :sswitch_8
        0xc7d05a9 -> :sswitch_7
        0xc820364 -> :sswitch_6
        0x1bb3f722 -> :sswitch_5
        0x5bb536dc -> :sswitch_4
        0x5bb8b241 -> :sswitch_3
        0x66ea3ab3 -> :sswitch_2
        0x6f3f1e27 -> :sswitch_1
        0x7e9cd3fd -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/d/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/d/f$b;-><init>(Lcom/uzmap/pkg/uzcore/d/f;Lcom/uzmap/pkg/uzcore/d/f$b;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->j()Lcom/deepe/a/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-virtual {v0, v1}, Lcom/deepe/a/b/e;->a(Lcom/deepe/a/b/h;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f$b;->a(Z)V

    return-void
.end method

.method private b(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    if-gtz p2, :cond_0

    return-void

    :cond_0
    mul-int/lit16 p2, p2, 0x3e8

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(ZI)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/d/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->e()Z

    move-result p0

    return p0
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/d/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/d/f$b;-><init>(Lcom/uzmap/pkg/uzcore/d/f;Lcom/uzmap/pkg/uzcore/d/f$b;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->j()Lcom/deepe/a/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-virtual {v0, v1}, Lcom/deepe/a/b/e;->a(Lcom/deepe/a/b/h;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->i:Lcom/uzmap/pkg/uzcore/d/f$b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f$b;->b(Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "batterylow"

    const-string v2, "batterystatus"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "memorylow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->e(Z)V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "swipeleft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x4

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "swipedown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "swiperight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 p1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "keyboardshow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->b(Z)V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "keyboardhide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->c(Z)V

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "shake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->a(Z)V

    goto :goto_1

    :sswitch_8
    const-string v0, "tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "scrolltobottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->g(Z)V

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/f;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/d/f;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->f(Z)V

    goto :goto_1

    :sswitch_b
    const-string v0, "appidle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    invoke-direct {p0, v3, v3}, Lcom/uzmap/pkg/uzcore/d/f;->b(ZI)V

    goto :goto_1

    :sswitch_c
    const-string v0, "takescreenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzcore/d/f;->d(Z)V

    goto :goto_1

    :sswitch_d
    const-string v0, "swipeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    const/16 p1, 0x10

    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(ZI)V

    :cond_d
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b8698ab -> :sswitch_d
        -0x6b3302d3 -> :sswitch_c
        -0x2f493e8b -> :sswitch_b
        -0x11b9ffc1 -> :sswitch_a
        -0x52995cd -> :sswitch_9
        0x1bfa3 -> :sswitch_8
        0x6854f06 -> :sswitch_7
        0xc7d05a9 -> :sswitch_6
        0xc820364 -> :sswitch_5
        0x1bb3f722 -> :sswitch_4
        0x5bb536dc -> :sswitch_3
        0x5bb8b241 -> :sswitch_2
        0x66ea3ab3 -> :sswitch_1
        0x6f3f1e27 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/f$2;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/f$2;-><init>(Lcom/uzmap/pkg/uzcore/d/f;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/e/b;->a(Landroid/content/Context;)Lcom/deepe/a/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    invoke-virtual {p1, v0}, Lcom/deepe/a/e/b;->a(Lcom/deepe/a/e/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/e/b;->a(Landroid/content/Context;)Lcom/deepe/a/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    invoke-virtual {p1, v0}, Lcom/deepe/a/e/b;->b(Lcom/deepe/a/e/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->f:Lcom/deepe/a/e/a;

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/f$3;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/f$3;-><init>(Lcom/uzmap/pkg/uzcore/d/f;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    :cond_0
    invoke-static {}, Lcom/deepe/c/a/b;->a()Lcom/deepe/c/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    invoke-virtual {p1, v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b$c;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/deepe/c/a/b;->a()Lcom/deepe/c/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    invoke-virtual {p1, v0}, Lcom/deepe/c/a/b;->b(Lcom/deepe/c/a/b$c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->g:Lcom/deepe/a/b/i;

    :cond_2
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/f;->c(I)Z

    move-result v0

    return v0
.end method

.method private f(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    if-nez p1, :cond_0

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/f$4;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/f$4;-><init>(Lcom/uzmap/pkg/uzcore/d/f;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/b/a;->a(Landroid/content/Context;)Lcom/deepe/a/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    invoke-virtual {p1, v0}, Lcom/deepe/a/b/a;->a(Lcom/deepe/a/b/g;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a/b/a;->a(Landroid/content/Context;)Lcom/deepe/a/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    invoke-virtual {p1, v0}, Lcom/deepe/a/b/a;->b(Lcom/deepe/a/b/g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->e:Lcom/deepe/a/b/g;

    :cond_2
    :goto_0
    return-void
.end method

.method private f()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/f;->c(I)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->j:Lcom/uzmap/pkg/uzcore/u;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/d/f$5;

    sget v2, Lcom/uzmap/pkg/uzcore/z;->c:F

    invoke-direct {v1, p0, v0, v2}, Lcom/uzmap/pkg/uzcore/d/f$5;-><init>(Lcom/uzmap/pkg/uzcore/d/f;IF)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f;->j:Lcom/uzmap/pkg/uzcore/u;

    return-void
.end method

.method private g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->k:Z

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    const-string v1, "appintent"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->g(Ljava/lang/String;)Z

    return-void
.end method

.method private h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->c(Z)Z

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    const-string v1, "noticeclicked"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->g(Ljava/lang/String;)Z

    return-void
.end method

.method private j()Lcom/deepe/a/b/e;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->h:Lcom/deepe/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/e;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/deepe/a/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->h:Lcom/deepe/a/b/e;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->h:Lcom/deepe/a/b/e;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/e;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->c:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int/2addr p1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->c:I

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/d/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->b(Lcom/uzmap/pkg/uzcore/d/f$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/i/i;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->j:Lcom/uzmap/pkg/uzcore/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/u;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/p$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/uzmap/pkg/uzcore/p$a;->f:Lcom/uzmap/pkg/uzcore/p$a;

    if-ne p1, v2, :cond_1

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/p$a;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/f$a;

    invoke-interface {v0, p2}, Lcom/uzmap/pkg/uzcore/d/f$a;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->c:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/d/f;->c:I

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->a:Lcom/uzmap/pkg/uzcore/d/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->k:Z

    return v0
.end method

.method public c(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Z)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/d/f;->f(Z)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/d/f;->d(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f;->h:Lcom/deepe/a/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/b/e;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/f;->a()V

    return-void
.end method
