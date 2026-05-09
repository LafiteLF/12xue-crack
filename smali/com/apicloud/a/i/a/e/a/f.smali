.class public Lcom/apicloud/a/i/a/e/a/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/Typeface;

.field private static h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/i/a/e/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Float;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sput-object v0, Lcom/apicloud/a/i/a/e/a/f;->a:Landroid/graphics/Typeface;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/e/a/f;->h:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41280000    # 10.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    const-string v0, "sans-serif"

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    return p0
.end method

.method private static a(Ljava/lang/String;ZZI)Landroid/graphics/Typeface;
    .locals 1

    invoke-static {p2, p1}, Lcom/apicloud/a/i/a/e/a/f;->a(ZZ)I

    move-result p2

    invoke-static {p0}, Lcom/apicloud/a/g/c;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    invoke-static {p0, p3, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/f;
    .locals 14

    sget-object v0, Lcom/apicloud/a/i/a/e/a/f;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/e/a/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/e/a/f;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/e/a/f;-><init>()V

    invoke-static {p1}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x190

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v9, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    array-length v10, v1

    const-string v11, "normal"

    if-lt v9, v10, :cond_8

    if-ltz v3, :cond_7

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_2

    goto :goto_5

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v11

    :goto_1
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v11

    :goto_2
    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const-string v7, "10.5px"

    :goto_3
    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const-string v8, "sans-serif"

    :goto_4
    invoke-virtual {v0, v5}, Lcom/apicloud/a/i/a/e/a/f;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/e/a/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/e/a/f;->a(I)V

    invoke-virtual {v0, v8}, Lcom/apicloud/a/i/a/e/a/f;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-interface {p0}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/g/h;->b(Lcom/apicloud/a/g/l;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/e/a/f;->a(Ljava/lang/Float;)V

    sget-object p0, Lcom/apicloud/a/i/a/e/a/f;->h:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_5
    return-object v0

    :cond_8
    aget-object v10, v1, v9

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x64

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v11, "small-caps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_6

    :cond_9
    move-object v6, v10

    goto/16 :goto_7

    :sswitch_1
    const-string v11, "lighter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_6

    :sswitch_2
    const-string v11, "bold"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto/16 :goto_6

    :sswitch_3
    const-string v11, "900"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_6

    :cond_a
    const/16 v2, 0x384

    goto/16 :goto_7

    :sswitch_4
    const-string v11, "800"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto/16 :goto_6

    :cond_b
    const/16 v2, 0x320

    goto/16 :goto_7

    :sswitch_5
    const-string v11, "700"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto/16 :goto_6

    :sswitch_6
    const-string v11, "600"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_6

    :cond_c
    const/16 v2, 0x258

    goto/16 :goto_7

    :sswitch_7
    const-string v11, "500"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_6

    :cond_d
    const/16 v2, 0x1f4

    goto/16 :goto_7

    :sswitch_8
    const-string v11, "300"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_6

    :cond_e
    const/16 v2, 0x12c

    goto/16 :goto_7

    :sswitch_9
    const-string v11, "200"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_6

    :cond_f
    const/16 v2, 0xc8

    goto :goto_7

    :sswitch_a
    const-string v11, "100"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    move v2, v13

    goto :goto_7

    :sswitch_b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_6

    :sswitch_c
    const-string v11, "italic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_6

    :sswitch_d
    const-string v11, "bolder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_6

    :cond_11
    const/16 v2, 0x2bc

    goto :goto_7

    :sswitch_e
    const-string v11, "oblique"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_6

    :cond_12
    move-object v5, v10

    goto :goto_7

    :goto_6
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v11}, Lcom/deepe/c/i/e;->a(C)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-static {v12}, Lcom/deepe/c/i/e;->b(C)Z

    move-result v11

    if-eqz v11, :cond_13

    move v3, v9

    move-object v7, v10

    goto :goto_7

    :cond_13
    move-object v8, v10

    :cond_14
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x62ce05cf -> :sswitch_e
        -0x5276460e -> :sswitch_d
        -0x4642c5d0 -> :sswitch_c
        -0x3df94319 -> :sswitch_b
        0xbdf1 -> :sswitch_a
        0xc1b2 -> :sswitch_9
        0xc573 -> :sswitch_8
        0xccf5 -> :sswitch_7
        0xd0b6 -> :sswitch_6
        0xd477 -> :sswitch_5
        0xd838 -> :sswitch_4
        0xdbf9 -> :sswitch_3
        0x2e3a85 -> :sswitch_2
        0xa2a5443 -> :sswitch_1
        0x468813e7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    const-string v1, "oblique"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Lcom/apicloud/a/i/a/e/a/f;

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    if-ne v2, p1, :cond_8

    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "small-caps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Landroid/graphics/Typeface;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->g:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a/f;->e()Z

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a/f;->d()Z

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a/f;->c()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/a/i/a/e/a/f;->a(Ljava/lang/String;ZZI)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->g:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->g:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font{family="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/f;->c:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
