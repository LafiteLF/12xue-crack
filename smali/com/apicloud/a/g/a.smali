.class public Lcom/apicloud/a/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/g/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/e/h;

.field private b:Z

.field private c:Lcom/apicloud/a/g/a$a;

.field private d:Lcom/apicloud/a/g/a$a;

.field private e:Lcom/apicloud/a/g/a$a;

.field private f:Lcom/apicloud/a/g/a$a;

.field private g:Lcom/apicloud/a/g/l;

.field private h:Lcom/apicloud/a/g/l;

.field private i:Lcom/apicloud/a/g/l;

.field private j:Lcom/apicloud/a/g/l;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/g/a$a;

    invoke-direct {v0}, Lcom/apicloud/a/g/a$a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    new-instance v0, Lcom/apicloud/a/g/a$a;

    invoke-direct {v0}, Lcom/apicloud/a/g/a$a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    new-instance v0, Lcom/apicloud/a/g/a$a;

    invoke-direct {v0}, Lcom/apicloud/a/g/a$a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    new-instance v0, Lcom/apicloud/a/g/a$a;

    invoke-direct {v0}, Lcom/apicloud/a/g/a$a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    return-void
.end method

.method private a(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->l:Z

    return-void
.end method

.method private a(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Integer;)V

    invoke-direct {p0, p2}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Float;)V

    invoke-direct {p0, p3}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->k:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-static {p1}, Lcom/apicloud/a/g/e/b;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/apicloud/a/g/a$a;

    const/16 v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0, v1}, Lcom/apicloud/a/g/a$a;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/g/e/b;->c([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/a/g/e/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-static {p1}, Lcom/apicloud/a/g/e/b;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    new-instance p1, Lcom/apicloud/a/g/a$a;

    invoke-direct {p1, v1, v0, v2}, Lcom/apicloud/a/g/a$a;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private b(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a;->h:Lcom/apicloud/a/g/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->l:Z

    return-void
.end method

.method private b(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private b(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Integer;)V

    invoke-direct {p0, p2}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Float;)V

    invoke-direct {p0, p3}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->k:Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "borderLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Lcom/apicloud/a/g/l;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "borderBottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/Float;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "borderStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->j(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "borderRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->i(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Lcom/apicloud/a/g/l;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Lcom/apicloud/a/g/l;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Lcom/apicloud/a/g/l;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "borderTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "borderLeftWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Float;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "borderLeftStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->h(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "borderLeftColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->g(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Lcom/apicloud/a/g/l;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "borderBottomWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Float;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "borderBottomStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "borderBottomColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "border"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;)Lcom/apicloud/a/g/a$a;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "borderTopWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Float;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "borderTopStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :sswitch_15
    const-string v0, "borderTopColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Integer;)V

    goto :goto_0

    :sswitch_16
    const-string v0, "borderRightWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_0

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Float;)V

    goto :goto_0

    :sswitch_17
    const-string v0, "borderRightStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_0

    :cond_1c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Integer;)V

    goto :goto_0

    :sswitch_18
    const-string v0, "borderRightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_0

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Integer;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_18
        -0x75b299bf -> :sswitch_17
        -0x757f89aa -> :sswitch_16
        -0x57ab08a6 -> :sswitch_15
        -0x56c71a58 -> :sswitch_14
        -0x56940a43 -> :sswitch_13
        -0x52738bd4 -> :sswitch_12
        -0x4e0397d4 -> :sswitch_11
        -0x4d1fa986 -> :sswitch_10
        -0x4cec9971 -> :sswitch_f
        -0x4932ce1e -> :sswitch_e
        -0xe70d730 -> :sswitch_d
        -0xd8ce8e2 -> :sswitch_c
        -0xd59d8cd -> :sswitch_b
        0xbc45589 -> :sswitch_a
        0x13dfc885 -> :sswitch_9
        0x22a57450 -> :sswitch_8
        0x230fd3d7 -> :sswitch_7
        0x2b158697 -> :sswitch_6
        0x2be61950 -> :sswitch_5
        0x2bf974e5 -> :sswitch_4
        0x2c2c84fa -> :sswitch_3
        0x35ea2977 -> :sswitch_2
        0x506afbde -> :sswitch_1
        0x6cc29253 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a;->i:Lcom/apicloud/a/g/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->l:Z

    return-void
.end method

.method private c(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method private c(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private c(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/Integer;)V

    invoke-direct {p0, p2}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Float;)V

    invoke-direct {p0, p3}, Lcom/apicloud/a/g/a;->f(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->k:Z

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/e/b;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a;->j:Lcom/apicloud/a/g/l;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->l:Z

    return-void
.end method

.method private d(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method private d(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private d(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->g(Ljava/lang/Integer;)V

    invoke-direct {p0, p2}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Float;)V

    invoke-direct {p0, p3}, Lcom/apicloud/a/g/a;->h(Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->k:Z

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-static {p1}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/g/a;->h:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/g/a;->i:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/g/a;->j:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->l:Z

    return-void
.end method

.method private e(Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Float;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Float;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Float;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Float;)V

    return-void
.end method

.method private e(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private e(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/a;->k:Z

    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/apicloud/a/g/l;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    aget-object v0, p1, v3

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v3

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v3

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object p1, p1, v3

    goto :goto_1

    :cond_3
    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->a(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->b(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v4

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->c(Lcom/apicloud/a/g/l;)V

    aget-object p1, p1, v5

    goto :goto_0

    :cond_4
    aget-object v0, p1, v3

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object v0, p1, v2

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    aget-object p1, p1, v3

    goto :goto_1

    :cond_5
    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->a(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->b(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->d(Lcom/apicloud/a/g/l;)V

    aget-object p1, p1, v4

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Lcom/apicloud/a/g/l;)V

    goto :goto_2

    :cond_6
    aget-object v0, p1, v3

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object p1, p1, v3

    goto :goto_1

    :cond_7
    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->a(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v3

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->c(Lcom/apicloud/a/g/l;)V

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a;->b(Lcom/apicloud/a/g/l;)V

    aget-object p1, p1, v2

    :goto_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Lcom/apicloud/a/g/l;)V

    goto :goto_2

    :cond_8
    aget-object p1, p1, v3

    :goto_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Lcom/apicloud/a/g/l;)V

    :goto_2
    return-void
.end method

.method private f(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private g(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private h(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/a$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private i(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->a(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->c(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->e(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->g(Ljava/lang/Integer;)V

    return-void
.end method

.method private j(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->d(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->f(Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/a;->h(Ljava/lang/Integer;)V

    return-void
.end method

.method private o()V
    .locals 3

    const-string v0, "borderRadius"

    const-string v1, "border"

    iget-boolean v2, p0, Lcom/apicloud/a/g/a;->b:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/apicloud/a/g/a;->b:Z

    :try_start_0
    iget-object v2, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    invoke-virtual {v2, v1}, Lcom/deepe/c/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    invoke-virtual {v1, v0}, Lcom/deepe/c/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    invoke-virtual {v0}, Lcom/deepe/c/e/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    invoke-virtual {v2, v1}, Lcom/deepe/c/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/apicloud/a/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/apicloud/a/g/n;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/g/l;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/g/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/e/h;

    invoke-direct {v0}, Lcom/deepe/c/e/h;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/a;->a:Lcom/deepe/c/e/h;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/g/a;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/a;->o()V

    iget-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/g/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/g/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/g/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/g/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/a;->o()V

    iget-boolean v0, p0, Lcom/apicloud/a/g/a;->k:Z

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/a;->o()V

    iget-object v0, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->h:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->i:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a;->j:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/a;->o()V

    iget-boolean v0, p0, Lcom/apicloud/a/g/a;->l:Z

    return v0
.end method

.method public g()Lcom/apicloud/a/g/a$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    return-object v0
.end method

.method public h()Lcom/apicloud/a/g/a$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    return-object v0
.end method

.method public i()Lcom/apicloud/a/g/a$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    return-object v0
.end method

.method public j()Lcom/apicloud/a/g/a$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    return-object v0
.end method

.method public k()Lcom/apicloud/a/g/l;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public l()Lcom/apicloud/a/g/l;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->h:Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public m()Lcom/apicloud/a/g/l;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->i:Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public n()Lcom/apicloud/a/g/l;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/a;->j:Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/g/a;->f:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apicloud/a/g/a;->c:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/a;->d:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/a;->e:Lcom/apicloud/a/g/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/a;->g:Lcom/apicloud/a/g/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/g/a;->h:Lcom/apicloud/a/g/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/g/a;->i:Lcom/apicloud/a/g/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/g/a;->j:Lcom/apicloud/a/g/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
