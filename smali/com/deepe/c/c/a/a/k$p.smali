.class public Lcom/deepe/c/c/a/a/k$p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# static fields
.field static final c:Lcom/deepe/c/c/a/a/k$p;

.field static final d:Lcom/deepe/c/c/a/a/k$p;

.field private static synthetic e:[I


# instance fields
.field final a:F

.field final b:Lcom/deepe/c/c/a/a/k$bc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepe/c/c/a/a/k$p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/k$p;-><init>(F)V

    sput-object v0, Lcom/deepe/c/c/a/a/k$p;->c:Lcom/deepe/c/c/a/a/k$p;

    new-instance v0, Lcom/deepe/c/c/a/a/k$p;

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    sput-object v0, Lcom/deepe/c/c/a/a/k$p;->d:Lcom/deepe/c/c/a/a/k$p;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    sget-object p1, Lcom/deepe/c/c/a/a/k$bc;->a:Lcom/deepe/c/c/a/a/k$bc;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    return-void
.end method

.method public constructor <init>(FLcom/deepe/c/c/a/a/k$bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    iput-object p2, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    return-void
.end method

.method static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/k$p;->e:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/k$bc;->values()[Lcom/deepe/c/c/a/a/k$bc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->e:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->b:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->c:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->d:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->f:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->h:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->g:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->a:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/deepe/c/c/a/a/k$p;->e:[I

    return-object v0
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return v0
.end method

.method a(F)F
    .locals 2

    invoke-static {}, Lcom/deepe/c/c/a/a/k$p;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return p1

    :pswitch_0
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_1
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_2
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    :pswitch_3
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    :pswitch_4
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/deepe/c/c/a/a/j;)F
    .locals 2

    invoke-static {}, Lcom/deepe/c/c/a/a/k$p;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$bc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->d()Lcom/deepe/c/c/a/a/k$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return p1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    iget p1, p1, Lcom/deepe/c/c/a/a/k$b;->c:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_1
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->a()F

    move-result p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_2
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->a()F

    move-result p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_3
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->a()F

    move-result p1

    mul-float/2addr v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    :pswitch_4
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->a()F

    move-result p1

    mul-float/2addr v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    :pswitch_5
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->a()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    :pswitch_6
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->c()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    :pswitch_7
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->b()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/deepe/c/c/a/a/j;F)F
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p1

    return p1
.end method

.method b(Lcom/deepe/c/c/a/a/j;)F
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->d()Lcom/deepe/c/c/a/a/k$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return p1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    iget p1, p1, Lcom/deepe/c/c/a/a/k$b;->d:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p1

    return p1
.end method

.method b()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method c(Lcom/deepe/c/c/a/a/j;)F
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/j;->d()Lcom/deepe/c/c/a/a/k$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    return p1

    :cond_0
    iget v0, p1, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget p1, p1, Lcom/deepe/c/c/a/a/k$b;->d:F

    cmpl-float v1, v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    iget p1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v2

    return p1

    :cond_1
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v0, v3

    double-to-float p1, v0

    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p1

    return p1
.end method

.method c()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/c/c/a/a/k$p;->a:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
