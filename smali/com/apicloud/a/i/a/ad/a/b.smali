.class public Lcom/apicloud/a/i/a/ad/a/b;
.super Landroid/view/animation/LinearInterpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ad/a/b$a;
    }
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/apicloud/a/i/a/ad/a/b$a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/ad/a/b$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/a/b$a;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "easeInOutCubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/a/i/a/ad/a/b$a;->e:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0

    :sswitch_1
    const-string v0, "linear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/apicloud/a/i/a/ad/a/b$a;->b:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0

    :sswitch_2
    const-string v0, "easeInCubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/apicloud/a/i/a/ad/a/b$a;->c:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0

    :sswitch_3
    const-string v0, "easeOutCubic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/apicloud/a/i/a/ad/a/b$a;->d:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0

    :goto_0
    sget-object p0, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ab58156 -> :sswitch_3
        -0x461a3ea9 -> :sswitch_2
        -0x41b970db -> :sswitch_1
        0x1315af6f -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/apicloud/a/i/a/ad/a/b;->b:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apicloud/a/i/a/ad/a/b$a;->values()[Lcom/apicloud/a/i/a/ad/a/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->c:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->e:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->d:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->b:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/apicloud/a/i/a/ad/a/b;->b:[I

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/ad/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    return-void
.end method

.method public getInterpolation(F)F
    .locals 7

    invoke-static {}, Lcom/apicloud/a/i/a/ad/a/b;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    return v0

    :cond_0
    add-float/2addr p1, v3

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/b$a;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    sub-float p1, v3, p1

    mul-float/2addr p1, p1

    sub-float/2addr v3, p1

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-float/2addr v3, p1

    float-to-double v3, v3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ad/a/b$a;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)F

    move-result p1

    mul-float/2addr p1, v2

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v3, v0

    :goto_0
    return v3

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/b$a;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    mul-float/2addr p1, p1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/b;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/b$a;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_5
    return p1
.end method
