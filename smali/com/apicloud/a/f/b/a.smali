.class Lcom/apicloud/a/f/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/apicloud/a/f/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a()Lcom/apicloud/a/f/b/a;
    .locals 1

    sget-object v0, Lcom/apicloud/a/f/b/a;->a:Lcom/apicloud/a/f/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/f/b/a;

    invoke-direct {v0}, Lcom/apicloud/a/f/b/a;-><init>()V

    sput-object v0, Lcom/apicloud/a/f/b/a;->a:Lcom/apicloud/a/f/b/a;

    :cond_0
    sget-object v0, Lcom/apicloud/a/f/b/a;->a:Lcom/apicloud/a/f/b/a;

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/k/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    const-string v0, "APICloud"

    return-object v0
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/h;->a()Lcom/deepe/c/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/h;->a()Lcom/deepe/c/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    const-string v0, "APICloud"

    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final k()Ljava/lang/String;
    .locals 1

    const-string v0, "Google Inc."

    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v0, "languages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->g()Ljava/util/List;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "userAgent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v0, "oscpu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "model"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_6
    const-string v0, "brand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_7
    const-string v0, "appCodeName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_8
    const-string v0, "product"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_9
    const-string v0, "appName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_a
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_b
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_c
    const-string v0, "language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/apicloud/a/f/b/a;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x602d6ca8 -> :sswitch_c
        -0x34e38dd1 -> :sswitch_b
        -0x30e15ab8 -> :sswitch_a
        -0x2f558fb4 -> :sswitch_9
        -0x12723311 -> :sswitch_8
        -0x72af4a7 -> :sswitch_7
        0x59a4b87 -> :sswitch_6
        0x633fb29 -> :sswitch_5
        0x651f944 -> :sswitch_4
        0x12900dfa -> :sswitch_3
        0x5875c377 -> :sswitch_2
        0x5a7fd81b -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch
.end method
