.class public Lcom/apicloud/a/i/a/r/q;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/r/n;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/apicloud/a/i/a/r/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "load"

    const-string v1, "insert"

    const-string v2, "delete"

    const-string v3, "reveal"

    const-string v4, "update"

    const-string v5, "scrollTo"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/r/q;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/o;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/r/o;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/q;->b:Lcom/apicloud/a/i/a/r/o;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/r;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->w()Lcom/apicloud/a/i/a/r/r;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/q;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/r/r;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/r;)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/deepe/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/q;->e()Lcom/apicloud/a/d;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/r/q$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/apicloud/a/i/a/r/q$1;-><init>(Lcom/apicloud/a/i/a/r/q;Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V

    const-wide/16 p1, 0xa

    invoke-interface {v0, v1, p1, p2}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/apicloud/a/i/a/r/p;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/q;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/apicloud/a/i/a/r/p;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/u;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/r/q;Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "index"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/r/n;->a(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/r;->a(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :sswitch_1
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x30

    return p1

    :sswitch_2
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x11

    return p1

    :sswitch_3
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x50

    return p1

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        -0x514d33ab -> :sswitch_2
        0x1c155 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/aa/c;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->x()Lcom/apicloud/a/i/a/aa/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/aa/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/q;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/aa/c;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/x/c;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/aa/c;)V

    :cond_0
    return-object v0
.end method

.method private c(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 2

    const-class v0, Ljava/lang/Integer;

    const-string v1, "indexs"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/n;->b(Ljava/util/List;)V

    return-void

    :cond_0
    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/r/n;->b(II)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/r;->b(Z)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lcom/apicloud/a/i/a/r/n;->a(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "count"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/r/n;->c(II)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/r;->c(Z)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/apicloud/a/i/a/r/n;->a(IIIZ)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;->c(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/aa/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/c;->a(Z)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V
    .locals 4

    const-string v0, "position"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v2, 0x6262b01

    if-eq p2, v2, :cond_2

    const v2, 0x6a558a2

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "upper"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/r/n;->h(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "lower"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/r/n;->g(Z)V

    :goto_0
    return-void

    :cond_4
    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "behavior"

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/r/q;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2, v1}, Lcom/apicloud/a/i/a/r/n;->a(IIZ)V

    return-void

    :cond_5
    const/4 v0, 0x0

    const-string v2, "x"

    invoke-virtual {p2, v2, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v2

    float-to-int v2, v2

    const-string v3, "y"

    invoke-virtual {p2, v3, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v2, p2, v1}, Lcom/apicloud/a/i/a/r/n;->b(IIZ)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/r/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;->c(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/aa/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/c;->b(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/q;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/q;->b(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "load"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string p4, "scrollTo"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->f(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string p4, "update"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->d(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string p4, "reveal"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->e(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string p4, "insert"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->b(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string p4, "delete"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/r/q;->c(Lcom/apicloud/a/i/a/r/n;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_5
        -0x468f3d47 -> :sswitch_4
        -0x37b11833 -> :sswitch_3
        -0x31ffc737 -> :sswitch_2
        -0x17f88dd8 -> :sswitch_1
        0x32c4e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "list-view"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/r/q;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scrolltoupper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->d(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :sswitch_1
    const-string v0, "scrolltolower"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->c(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :sswitch_2
    const-string v0, "refresherrestore"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->f(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :sswitch_3
    const-string v0, "refresherrefresh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->e(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :sswitch_4
    const-string v0, "scroll"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->b(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :sswitch_5
    const-string v0, "itemclick"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/r/q;->a(Lcom/apicloud/a/i/a/r/n;Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f6ac1ab -> :sswitch_5
        -0x361a1933 -> :sswitch_4
        0x46ddcd13 -> :sswitch_3
        0x47960cc6 -> :sswitch_2
        0x73ff39f9 -> :sswitch_1
        0x747e679a -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/n;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/q;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/r/n;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public b(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/o;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/q;->b:Lcom/apicloud/a/i/a/r/o;

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/r/q;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
