.class public Lcom/deepe/c/c/a/a/e;
.super Lcom/deepe/c/c/a/a/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/e$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?s)/\\*.*?\\*/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/e;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/c/a/a/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private A()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    move-object v2, v1

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->j()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    :cond_5
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1
.end method

.method private B()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_2
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-nez v3, :cond_3

    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/d$q;

    iget-object v4, v3, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    if-nez v4, :cond_5

    :goto_1
    return-object v2

    :cond_5
    iget-object v3, v3, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/a/a/d$r;

    iget-object v5, v4, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    iget-object v4, v4, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/c/a/a/d$e;

    instance-of v5, v5, Lcom/deepe/c/c/a/a/d$i;

    if-eqz v5, :cond_8

    return-object v1
.end method

.method private C()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/d$r;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/deepe/c/c/a/a/d$h;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$h;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/e;->g()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "Invalid or missing parameter section for pseudo class: "

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lcom/deepe/c/c/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported pseudo class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v2, Lcom/deepe/c/c/a/a/d$j;

    invoke-direct {v2, v1}, Lcom/deepe/c/c/a/a/d$j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/e;->A()Ljava/util/List;

    new-instance v2, Lcom/deepe/c/c/a/a/d$j;

    invoke-direct {v2, v1}, Lcom/deepe/c/c/a/a/d$j;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/a/a/d$q;->d()V

    goto/16 :goto_5

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/e;->B()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/deepe/c/c/a/a/d$i;

    invoke-direct {v1, v2}, Lcom/deepe/c/c/a/a/d$i;-><init>(Ljava/util/List;)V

    move-object v2, v1

    check-cast v2, Lcom/deepe/c/c/a/a/d$i;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/d$i;->a()I

    move-result v2

    move-object/from16 v3, p1

    iput v2, v3, Lcom/deepe/c/c/a/a/d$q;->b:I

    :goto_1
    move-object v2, v1

    goto/16 :goto_5

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$g;

    invoke-direct {v2}, Lcom/deepe/c/c/a/a/d$g;-><init>()V

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$k;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v1}, Lcom/deepe/c/c/a/a/d$k;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$k;

    const/4 v1, 0x0

    invoke-direct {v2, v6, v1}, Lcom/deepe/c/c/a/a/d$k;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$f;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/deepe/c/c/a/a/d$f;-><init>(IIZZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$f;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    move-object v13, v2

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepe/c/c/a/a/d$f;-><init>(IIZZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/deepe/c/c/a/a/d$f;-><init>(IIZZLjava/lang/String;)V

    goto :goto_4

    :pswitch_9
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$f;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/deepe/c/c/a/a/d$f;-><init>(IIZZLjava/lang/String;)V

    goto :goto_4

    :pswitch_a
    move-object/from16 v3, p1

    sget-object v7, Lcom/deepe/c/c/a/a/d$h;->c:Lcom/deepe/c/c/a/a/d$h;

    if-eq v2, v7, :cond_1

    sget-object v7, Lcom/deepe/c/c/a/a/d$h;->e:Lcom/deepe/c/c/a/a/d$h;

    if-eq v2, v7, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    move v11, v5

    :goto_2
    sget-object v7, Lcom/deepe/c/c/a/a/d$h;->e:Lcom/deepe/c/c/a/a/d$h;

    if-eq v2, v7, :cond_2

    sget-object v7, Lcom/deepe/c/c/a/a/d$h;->f:Lcom/deepe/c/c/a/a/d$h;

    if-eq v2, v7, :cond_2

    move v12, v6

    goto :goto_3

    :cond_2
    move v12, v5

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/e;->z()Lcom/deepe/c/c/a/a/e$a;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/deepe/c/c/a/a/d$f;

    iget v9, v2, Lcom/deepe/c/c/a/a/e$a;->a:I

    iget v10, v2, Lcom/deepe/c/c/a/a/e$a;->b:I

    iget-object v13, v0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepe/c/c/a/a/d$f;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/a/a/d$q;->d()V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lcom/deepe/c/c/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$l;

    invoke-direct {v2}, Lcom/deepe/c/c/a/a/d$l;-><init>()V

    goto :goto_4

    :pswitch_c
    move-object/from16 v3, p1

    new-instance v2, Lcom/deepe/c/c/a/a/d$m;

    invoke-direct {v2}, Lcom/deepe/c/c/a/a/d$m;-><init>()V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/c/a/a/d$q;->d()V

    :goto_5
    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/d$r;->a(Lcom/deepe/c/c/a/a/d$e;)V

    return-void

    :cond_4
    new-instance v0, Lcom/deepe/c/c/a/a/c;

    const-string v1, "Invalid pseudo class"

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v1, 0x46

    if-gt p1, v1, :cond_1

    :goto_0
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v1, 0x66

    if-gt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/e;->e:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/d$h;->values()[Lcom/deepe/c/c/a/a/d$h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->y:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->s:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->w:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->v:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->m:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->u:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->g:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->i:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->t:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->r:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->x:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->o:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->h:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->j:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->p:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->n:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->c:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->d:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->f:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->e:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->k:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->l:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->b:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->a:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/deepe/c/c/a/a/d$h;->q:Lcom/deepe/c/c/a/a/d$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$h;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    sput-object v0, Lcom/deepe/c/c/a/a/e;->e:[I

    return-object v0
.end method

.method private y()I
    .locals 10

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return v0

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->p()I

    move-result v2

    :cond_1
    const/16 v4, 0x80

    const/16 v5, 0x5f

    const/16 v6, 0x7a

    const/16 v7, 0x5a

    const/16 v8, 0x61

    const/16 v9, 0x41

    if-lt v2, v9, :cond_2

    if-le v2, v7, :cond_4

    :cond_2
    if-lt v2, v8, :cond_3

    if-le v2, v6, :cond_4

    :cond_3
    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_4

    if-lt v2, v4, :cond_8

    :cond_4
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->p()I

    move-result v1

    if-lt v1, v9, :cond_5

    if-le v1, v7, :cond_4

    :cond_5
    if-lt v1, v8, :cond_6

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v2, 0x30

    if-lt v1, v2, :cond_7

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_7
    if-eq v1, v3, :cond_4

    if-eq v1, v5, :cond_4

    if-ge v1, v4, :cond_4

    iget v1, p0, Lcom/deepe/c/c/a/a/e;->c:I

    :cond_8
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return v1
.end method

.method private z()Lcom/deepe/c/c/a/a/e$a;
    .locals 13

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    const-string v2, "odd"

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Lcom/deepe/c/c/a/a/e$a;

    invoke-direct {v2, v3, v4}, Lcom/deepe/c/c/a/a/e$a;-><init>(II)V

    goto/16 :goto_7

    :cond_2
    const-string v2, "even"

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Lcom/deepe/c/c/a/a/e$a;

    invoke-direct {v2, v3, v5}, Lcom/deepe/c/c/a/a/e$a;-><init>(II)V

    goto/16 :goto_7

    :cond_3
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    const/4 v6, -0x1

    const/16 v7, 0x2d

    if-nez v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    iget-object v8, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v9, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget v10, p0, Lcom/deepe/c/c/a/a/e;->d:I

    invoke-static {v8, v9, v10, v5}, Lcom/deepe/c/c/a/a/g;->a(Ljava/lang/String;IIZ)Lcom/deepe/c/c/a/a/g;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/deepe/c/c/a/a/g;->a()I

    move-result v9

    iput v9, p0, Lcom/deepe/c/c/a/a/e;->c:I

    :cond_5
    const/16 v9, 0x6e

    invoke-virtual {p0, v9}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v9

    if-nez v9, :cond_7

    const/16 v9, 0x4e

    invoke-virtual {p0, v9}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v8

    move-object v8, v1

    goto :goto_4

    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    new-instance v8, Lcom/deepe/c/c/a/a/g;

    const-wide/16 v9, 0x1

    iget v11, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-direct {v8, v9, v10, v11}, Lcom/deepe/c/c/a/a/g;-><init>(JI)V

    :goto_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v7}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-eqz v2, :cond_9

    move v4, v6

    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    iget-object v2, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v6, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget v7, p0, Lcom/deepe/c/c/a/a/e;->d:I

    invoke-static {v2, v6, v7, v5}, Lcom/deepe/c/c/a/a/g;->a(Ljava/lang/String;IIZ)Lcom/deepe/c/c/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/g;->a()I

    move-result v6

    iput v6, p0, Lcom/deepe/c/c/a/a/e;->c:I

    goto :goto_3

    :cond_a
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_b
    move-object v2, v1

    :goto_3
    move v12, v4

    move v4, v3

    move v3, v12

    :goto_4
    new-instance v6, Lcom/deepe/c/c/a/a/e$a;

    if-nez v8, :cond_c

    move v4, v5

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result v7

    mul-int/2addr v4, v7

    :goto_5
    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result v2

    mul-int v5, v3, v2

    :goto_6
    invoke-direct {v6, v4, v5}, Lcom/deepe/c/c/a/a/e$a;-><init>(II)V

    move-object v2, v6

    :goto_7
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_e

    return-object v2

    :cond_e
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/e;->y()I

    move-result v0

    iget v1, p0, Lcom/deepe/c/c/a/a/e;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1
.end method

.method a(Lcom/deepe/c/c/a/a/d$q;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    goto :goto_1

    :cond_1
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/deepe/c/c/a/a/d$c;->c:Lcom/deepe/c/c/a/a/d$c;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v4, v2, v3}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v5, v2, v4}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->e()V

    move-object v4, v5

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_6

    new-instance v4, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v4, v2, v3}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    sget-object v6, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    const-string v7, "class"

    invoke-virtual {v4, v7, v6, v5}, Lcom/deepe/c/c/a/a/d$r;->a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->d()V

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string v0, "Invalid \".class\" simpleSelectors"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v4, :cond_9

    new-instance v4, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v4, v2, v3}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    sget-object v6, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    const-string v7, "id"

    invoke-virtual {v4, v7, v6, v5}, Lcom/deepe/c/c/a/a/d$r;->a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->c()V

    goto :goto_2

    :cond_a
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string v0, "Invalid \"#id\" simpleSelectors"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/16 v5, 0x5b

    invoke-virtual {p0, v5}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v4, :cond_c

    new-instance v4, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v4, v2, v3}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid attribute simpleSelectors"

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    const/16 v7, 0x3d

    invoke-virtual {p0, v7}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    goto :goto_4

    :cond_d
    const-string v7, "~="

    invoke-virtual {p0, v7}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Lcom/deepe/c/c/a/a/d$b;->c:Lcom/deepe/c/c/a/a/d$b;

    goto :goto_4

    :cond_e
    const-string v7, "|="

    invoke-virtual {p0, v7}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lcom/deepe/c/c/a/a/d$b;->d:Lcom/deepe/c/c/a/a/d$b;

    goto :goto_4

    :cond_f
    move-object v7, v3

    :goto_4
    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/e;->C()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    goto :goto_5

    :cond_10
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    invoke-direct {p1, v6}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    move-object v8, v3

    :goto_5
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v7, :cond_12

    sget-object v7, Lcom/deepe/c/c/a/a/d$b;->a:Lcom/deepe/c/c/a/a/d$b;

    :cond_12
    invoke-virtual {v4, v5, v7, v8}, Lcom/deepe/c/c/a/a/d$r;->a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    invoke-direct {p1, v6}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    invoke-direct {p1, v6}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez v4, :cond_16

    new-instance v4, Lcom/deepe/c/c/a/a/d$r;

    invoke-direct {v4, v2, v3}, Lcom/deepe/c/c/a/a/d$r;-><init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V

    :cond_16
    invoke-direct {p0, p1, v4}, Lcom/deepe/c/c/a/a/e;->a(Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/d$r;)V

    goto/16 :goto_2

    :cond_17
    :goto_6
    if-eqz v4, :cond_18

    invoke-virtual {p1, v4}, Lcom/deepe/c/c/a/a/d$q;->a(Lcom/deepe/c/c/a/a/d$r;)V

    const/4 p1, 0x1

    return p1

    :cond_18
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return v1
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/deepe/c/c/a/a/d$q;

    invoke-direct {v1}, Lcom/deepe/c/c/a/a/d$q;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/deepe/c/c/a/a/e;->a(Lcom/deepe/c/c/a/a/d$q;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->j()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/deepe/c/c/a/a/d$q;

    invoke-direct {v1}, Lcom/deepe/c/c/a/a/d$q;-><init>()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$q;->b()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    iget-object v3, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v4, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->p()I

    move-result v3

    goto :goto_0

    :cond_3
    :goto_1
    iget v3, p0, Lcom/deepe/c/c/a/a/e;->c:I

    if-le v3, v0, :cond_4

    iget-object v1, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1
.end method

.method public d()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    if-ne v2, v0, :cond_3

    goto :goto_4

    :cond_3
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_8

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lcom/deepe/c/c/a/a/e;->c(I)I

    move-result v5

    if-eq v5, v4, :cond_8

    move v6, v3

    :goto_2
    const/4 v7, 0x5

    if-le v6, v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/deepe/c/c/a/a/e;->c(I)I

    move-result v7

    if-ne v7, v4, :cond_7

    :goto_3
    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const-string v2, "url("

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->f()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ")"

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/deepe/c/c/a/a/e;->c:I

    return-object v1

    :cond_5
    :goto_0
    return-object v2
.end method

.method f()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_9

    const/16 v2, 0x22

    if-eq v1, v2, :cond_9

    const/16 v2, 0x28

    if-eq v1, v2, :cond_9

    const/16 v2, 0x29

    if-eq v1, v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/deepe/c/c/a/a/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/e;->c:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/e;->c(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v1, v3

    :goto_1
    const/4 v5, 0x5

    if-le v1, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/deepe/c/c/a/a/e;->b:Ljava/lang/String;

    iget v6, p0, Lcom/deepe/c/c/a/a/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/deepe/c/c/a/a/e;->c(I)I

    move-result v5

    if-ne v5, v4, :cond_7

    :goto_2
    int-to-char v1, v2

    goto :goto_3

    :cond_7
    iget v6, p0, Lcom/deepe/c/c/a/a/e;->c:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/deepe/c/c/a/a/e;->c:I

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    int-to-char v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
