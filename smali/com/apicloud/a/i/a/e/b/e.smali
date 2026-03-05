.class final Lcom/apicloud/a/i/a/e/b/e;
.super Lcom/apicloud/a/i/a/e/b/d;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/e;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/e;->a:[C

    const-string v1, "arcTo"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/d;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method private static a(Lcom/apicloud/a/i/a/e/b/aa$a;Lcom/apicloud/a/i/a/e/b/ac;)Lcom/apicloud/a/i/a/e/b/aa$a;
    .locals 4

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/e/b/aa$a;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/e/b/aa$a;-><init>()V

    iget v1, p1, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    iget v1, p1, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    iget p0, p0, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iget p0, p1, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    add-float/2addr v1, p0

    iput v1, v0, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    return-object v0
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/ac;FF)Lcom/apicloud/a/i/a/e/b/aa$a;
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/e/b/aa$a;

    invoke-direct {v0, p2, p3}, Lcom/apicloud/a/i/a/e/b/aa$a;-><init>(FF)V

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/aa$a;Lcom/apicloud/a/i/a/e/b/ac;)Lcom/apicloud/a/i/a/e/b/aa$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/apicloud/a/i/a/e/b/aa$a;

    invoke-direct {p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/aa$a;-><init>(FF)V

    return-object p1
.end method

.method private static a(Lcom/apicloud/a/i/a/e/b/ac;)Lcom/apicloud/a/i/a/e/b/ac;
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    iget v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Lcom/apicloud/a/i/a/e/b/ac;

    invoke-direct {v1}, Lcom/apicloud/a/i/a/e/b/ac;-><init>()V

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    neg-float v2, v2

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    neg-float v2, v2

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    iget v4, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    iget p0, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    mul-float/2addr v3, p0

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, v1, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    return-object v1
.end method

.method private a(FF)V
    .locals 0

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;FFFFF)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lcom/apicloud/a/i/a/e/b/x;->c()Lcom/apicloud/a/i/a/e/b/ac;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/apicloud/a/i/a/e/b/x;->b()Lcom/apicloud/a/i/a/e/b/aa;

    move-result-object v3

    invoke-direct {v8, v2, v0, v1}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/ac;FF)Lcom/apicloud/a/i/a/e/b/aa$a;

    move-result-object v4

    iget v5, v4, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    iget v4, v4, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    invoke-direct {v8, v5, v4}, Lcom/apicloud/a/i/a/e/b/e;->a(FF)V

    invoke-interface {v3}, Lcom/apicloud/a/i/a/e/b/aa;->a()Lcom/apicloud/a/i/a/e/b/aa$a;

    move-result-object v3

    invoke-static {v2}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/ac;)Lcom/apicloud/a/i/a/e/b/ac;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/aa$a;Lcom/apicloud/a/i/a/e/b/ac;)Lcom/apicloud/a/i/a/e/b/aa$a;

    move-result-object v2

    iget v3, v2, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    sub-float/2addr v3, v1

    iget v2, v2, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    sub-float/2addr v2, v0

    sub-float v4, p5, v1

    sub-float v5, p4, v0

    mul-float v6, v3, v5

    mul-float v7, v2, v4

    sub-float v9, v6, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_2

    const/4 v10, 0x0

    cmpl-float v10, p6, v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    :cond_0
    mul-float v10, v3, v3

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-float v11, v4, v4

    mul-float v12, v5, v5

    add-float/2addr v11, v12

    mul-float v12, v3, v4

    mul-float v13, v2, v5

    add-float/2addr v12, v13

    float-to-double v13, v10

    invoke-static {v13, v14}, Lcom/apicloud/a/i/a/e/b/ad;->a(D)F

    move-result v13

    mul-float v13, v13, p6

    div-float/2addr v13, v9

    float-to-double v14, v11

    invoke-static {v14, v15}, Lcom/apicloud/a/i/a/e/b/ad;->a(D)F

    move-result v14

    mul-float v14, v14, p6

    div-float/2addr v14, v9

    mul-float v9, v13, v12

    div-float/2addr v9, v10

    mul-float/2addr v12, v14

    div-float/2addr v12, v11

    mul-float v10, v13, v5

    mul-float v11, v14, v2

    add-float/2addr v10, v11

    mul-float v11, v13, v4

    mul-float v15, v14, v3

    add-float/2addr v11, v15

    add-float/2addr v14, v9

    mul-float/2addr v2, v14

    mul-float/2addr v3, v14

    add-float/2addr v13, v12

    mul-float/2addr v5, v13

    mul-float/2addr v4, v13

    sub-float/2addr v3, v11

    float-to-double v12, v3

    sub-float/2addr v2, v10

    float-to-double v2, v2

    invoke-static {v12, v13, v2, v3}, Lcom/apicloud/a/i/a/e/b/ad;->a(DD)F

    move-result v2

    sub-float/2addr v4, v11

    float-to-double v3, v4

    sub-float/2addr v5, v10

    float-to-double v12, v5

    invoke-static {v3, v4, v12, v13}, Lcom/apicloud/a/i/a/e/b/ad;->a(DD)F

    move-result v3

    add-float v4, v10, v0

    add-float v5, v11, v1

    cmpl-float v0, v7, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v6

    float-to-double v0, v3

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v0

    invoke-static {v6, v0, v7}, Lcom/apicloud/a/i/a/e/b/ad;->a(FFZ)F

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move/from16 v4, p6

    move v5, v6

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/x;FFFFFZ)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/apicloud/a/i/a/e/b/x;->b()Lcom/apicloud/a/i/a/e/b/aa;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/apicloud/a/i/a/e/b/aa;->lineTo(FF)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 8

    sget-object v0, Lcom/apicloud/a/i/a/e/b/e;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/apicloud/a/i/a/e/b/e;->a(Lcom/apicloud/a/i/a/e/b/x;FFFFF)V

    return-void
.end method
