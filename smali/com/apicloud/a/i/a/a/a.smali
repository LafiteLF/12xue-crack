.class public Lcom/apicloud/a/i/a/a/a;
.super Lcom/apicloud/a/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/i<",
        "Lcom/apicloud/a/i/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/i;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/a/a;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a(F)F
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p1

    return p1
.end method

.method private a(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V
    .locals 3

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

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "reverse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->a(Z)V

    goto :goto_0

    :sswitch_1
    const-string v2, "delay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/apicloud/a/i/a/a/b;->b(J)V

    goto :goto_0

    :sswitch_2
    const-string v2, "target"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "properties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/a/a;->b(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "repeat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->a(Ljava/lang/Integer;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "easing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/apicloud/a/i/a/a/b;->a(J)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_6
        -0x4e19c2d5 -> :sswitch_5
        -0x37b3d265 -> :sswitch_4
        -0x373272cd -> :sswitch_3
        -0x34818e6f -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x418e52e2 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(F)F
    .locals 4

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method private b(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V
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

    const v3, -0x4b8807f5

    if-eq v2, v3, :cond_3

    const v3, 0x3ebe6b6c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "transform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/a/a;->c(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_3
    const-string v2, "opacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->a(F)V

    goto :goto_0
.end method

.method private c(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V
    .locals 3

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

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "rotateY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->b(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->i(F)V

    goto :goto_0

    :sswitch_1
    const-string v2, "rotateX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->b(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->h(F)V

    goto :goto_0

    :sswitch_2
    const-string v2, "scaleY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->f(F)V

    goto :goto_0

    :sswitch_3
    const-string v2, "scaleX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->e(F)V

    goto :goto_0

    :sswitch_4
    const-string v2, "rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->b(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->g(F)V

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "translateZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->a(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->d(F)V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "translateY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->a(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->c(F)V

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "translateX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/a/a;->a(F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/a/b;->b(F)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x66a2c736 -> :sswitch_7
        -0x66a2c735 -> :sswitch_6
        -0x66a2c734 -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        -0x3621dfb2 -> :sswitch_3
        -0x3621dfb1 -> :sswitch_2
        0x5280ce5d -> :sswitch_1
        0x5280ce5e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/a/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const p4, -0x5185d186

    if-eq p3, p4, :cond_2

    const p4, 0x68ac462

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "start"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/a/b;->a()V

    goto :goto_0

    :cond_2
    const-string p3, "cancel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/a/b;->b()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/a/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/a/a;->a(Lcom/apicloud/a/i/a/a/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/a/a;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "animation"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/apicloud/a/i/a/a/a;->a(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/a/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/a/a;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/a/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/a/b;

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/a;->a:Lcom/apicloud/a/d;

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/a/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/a/a;->a(Lcom/apicloud/a/i/a/a/b;Lcom/apicloud/a/c;)V

    return-object p1
.end method
