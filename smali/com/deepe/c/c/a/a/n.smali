.class Lcom/deepe/c/c/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/a/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/n$a;,
        Lcom/deepe/c/c/a/a/n$b;,
        Lcom/deepe/c/c/a/a/n$c;,
        Lcom/deepe/c/c/a/a/n$d;,
        Lcom/deepe/c/c/a/a/n$e;,
        Lcom/deepe/c/c/a/a/n$f;,
        Lcom/deepe/c/c/a/a/n$g;,
        Lcom/deepe/c/c/a/a/n$h;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/regex/Pattern;

.field private static synthetic n:[I

.field private static synthetic o:[I


# instance fields
.field private c:Lcom/deepe/c/c/a/a/k;

.field private d:Lcom/deepe/c/c/a/a/k$ai;

.field private e:Z

.field private f:Lcom/deepe/c/c/a/d;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lcom/deepe/c/c/a/a/n$g;

.field private k:Ljava/lang/StringBuilder;

.field private l:Z

.field private m:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/deepe/c/c/a/a/n;->a:Z

    const-string v0, "/\\*.*?\\*/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/n;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->e:Z

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->i:Z

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->j:Lcom/deepe/c/c/a/a/n$g;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->l:Z

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    :try_start_0
    invoke-static {p1, v4, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;II)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v2, :cond_1

    div-float/2addr v0, v1

    :cond_1
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/deepe/c/c/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid offset value in <stop>: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid offset value in <stop> (empty string)"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<view>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$be;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$be;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$be;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$be;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private B(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v1, p1}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->s()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x29

    const-string v6, "Invalid transform list: "

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "translate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->l()F

    move-result v3

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    const-string v3, "skewY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    const-string v3, "skewX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->l()F

    move-result v3

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->l()F

    move-result v3

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->l()F

    move-result v4

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v3

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v7

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v8

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v9

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v10

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v1, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v6, 0x9

    new-array v6, v6, [F

    const/4 v11, 0x0

    aput v2, v6, v11

    const/4 v2, 0x1

    aput v7, v6, v2

    const/4 v2, 0x2

    aput v9, v6, v2

    const/4 v2, 0x3

    aput v3, v6, v2

    const/4 v2, 0x4

    aput v8, v6, v2

    const/4 v2, 0x5

    aput v10, v6, v2

    const/4 v2, 0x6

    aput v4, v6, v2

    const/4 v2, 0x7

    aput v4, v6, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_1
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_2
    return-object v0

    :cond_a
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid transform list fn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad transform function encountered in transform list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch
.end method

.method private B(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<mask>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$s;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$s;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$s;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$s;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$s;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static C(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$p;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v1, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->u()Lcom/deepe/c/c/a/a/k$bc;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->a:Lcom/deepe/c/c/a/a/k$bc;

    :cond_1
    new-instance v3, Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {v3, p0, v2}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/deepe/c/c/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length list value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private C(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "<style>"

    invoke-direct {p0, v2, v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "all"

    move v3, v1

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_1

    if-eqz v3, :cond_0

    sget-object p1, Lcom/deepe/c/c/a/a/d$d;->h:Lcom/deepe/c/c/a/a/d$d;

    invoke-static {v2, p1}, Lcom/deepe/c/c/a/a/d;->a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->l:Z

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    iput v1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    :goto_1
    return-void

    :cond_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x35

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5e

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "text/css"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static D(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v1

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_1

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    new-instance v3, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    return-object v3

    :cond_0
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid viewBox. height cannot be negative"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid viewBox. width cannot be negative"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static E(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$an;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x33af38

    if-eq v0, v1, :cond_2

    const v1, 0x5601056a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/deepe/c/c/a/a/k$g;->a()Lcom/deepe/c/c/a/a/k$g;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->e(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$f;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->c:Lcom/deepe/c/c/a/a/k$f;

    return-object p0
.end method

.method private static F(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$f;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static G(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "UNSUPPORTED"

    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    goto :goto_0
.end method

.method private static H(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v1, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    goto :goto_0
.end method

.method private static I(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    goto :goto_0
.end method

.method private J(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/c/a/a/d;

    sget-object v1, Lcom/deepe/c/c/a/a/d$d;->h:Lcom/deepe/c/c/a/a/d$d;

    sget-object v2, Lcom/deepe/c/c/a/a/d$s;->a:Lcom/deepe/c/c/a/a/d$s;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/d;-><init>(Lcom/deepe/c/c/a/a/d$d;Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/d;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$p;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a/d$p;)V

    return-void
.end method

.method private static a(Ljava/lang/String;II)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/h;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/h;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/deepe/c/c/a/a/h;->a(Ljava/lang/String;II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid float value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0xff

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static a(FFF)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr p0, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p0, v2

    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_1
    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_3

    add-float/2addr p1, v2

    mul-float/2addr p1, v0

    goto :goto_3

    :cond_3
    add-float p2, v0, p1

    mul-float/2addr p1, v0

    sub-float p1, p2, p1

    :goto_3
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    sub-float/2addr v0, p1

    add-float v1, p0, p2

    invoke-static {v0, p1, v1}, Lcom/deepe/c/c/a/a/n;->b(FFF)F

    move-result v1

    invoke-static {v0, p1, p0}, Lcom/deepe/c/c/a/a/n;->b(FFF)F

    move-result v2

    sub-float/2addr p0, p2

    invoke-static {v0, p1, p0}, Lcom/deepe/c/c/a/a/n;->b(FFF)F

    move-result p0

    const/high16 p1, 0x43800000    # 256.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result p0

    or-int/2addr p0, p2

    return p0
.end method

.method static a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->a:Lcom/deepe/c/c/a/a/k$bc;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/c/a/a/k$bc;->valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$bc;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length unit specifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;II)F

    move-result v0

    new-instance v2, Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {v2, v0, v1}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/deepe/c/c/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p1, "none"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "url("

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;Lcom/deepe/c/c/a/a/p;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/p;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/deepe/c/c/a/a/p;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/p;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/p;->i()V

    const/16 v1, 0x3d

    :goto_0
    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/p;->b(C)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/p;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/p;->i()V

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$a;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$a;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ab;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_9

    const/16 v3, 0x62

    if-eq v2, v3, :cond_7

    const/16 v3, 0x48

    if-eq v2, v3, :cond_5

    const/16 v3, 0x49

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->a:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <rect> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <rect> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ad;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x37

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/n;->A(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ad;->a:Ljava/lang/Float;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ae;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_6

    const/16 v3, 0x60

    if-eq v2, v3, :cond_5

    const/16 v3, 0x62

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->a:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <svg> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->e:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <svg> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x59

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_1

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    invoke-interface {p1, v3}, Lcom/deepe/c/c/a/a/k$af;->d(Ljava/util/Set;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->I(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/deepe/c/c/a/a/k$af;->c(Ljava/util/Set;)V

    goto :goto_2

    :pswitch_2
    invoke-interface {p1, v2}, Lcom/deepe/c/c/a/a/k$af;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->G(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/deepe/c/c/a/a/k$af;->a(Ljava/util/Set;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->H(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/deepe/c/c/a/a/k$af;->b(Ljava/util/Set;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/deepe/c/c/a/a/k$ak;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/c/a/a/e;

    sget-object v1, Lcom/deepe/c/c/a/a/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/a/e;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    if-nez v1, :cond_6

    new-instance v1, Lcom/deepe/c/c/a/a/o;

    invoke-direct {v1}, Lcom/deepe/c/c/a/a/o;-><init>()V

    iput-object v1, p0, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    :cond_6
    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/deepe/c/c/a/a/o;->a(Lcom/deepe/c/c/a/a/o;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$ak;->q:Ljava/lang/Boolean;

    goto :goto_3

    :cond_2
    const-string v0, "preserve"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$ak;->p:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$al;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/deepe/c/c/a/a/k$ao;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-static {p1}, Lcom/deepe/c/c/a/a;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ao;->w:Lcom/deepe/c/c/a/a;

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ap;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/16 v3, 0x41

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <radialGradient> element. fr cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->D(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$aq;->x:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ao;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$at;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$at;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ay;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ay;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ay;->a:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$az;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$az;->c:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$az;->b:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$az;->e:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->C(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$az;->d:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$bd;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    const/16 v3, 0x62

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->d:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->c:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$d;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$d;->c:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$d;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <circle> element. r cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$d;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$d;->a:Lcom/deepe/c/c/a/a/k$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$e;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$e;->a:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute clipPathUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$i;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x48

    if-eq v2, v3, :cond_3

    const/16 v3, 0x49

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->d:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->c:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->a:Lcom/deepe/c/c/a/a/k$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$j;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x24

    if-eq v3, v4, :cond_7

    const/16 v4, 0x25

    if-eq v3, v4, :cond_4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-static {v2}, Lcom/deepe/c/c/a/a/k$k;->valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$k;

    move-result-object v3

    iput-object v3, p1, Lcom/deepe/c/c/a/a/k$j;->d:Lcom/deepe/c/c/a/a/k$k;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid spreadMethod attribute. \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid value."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$j;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v3, "objectBoundingBox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$j;->b:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute gradientUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-direct {p0, v2}, Lcom/deepe/c/c/a/a/n;->B(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$j;->c:Landroid/graphics/Matrix;

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v1

    sget-object v2, Lcom/deepe/c/c/a/a/n$f;->aO:Lcom/deepe/c/c/a/a/n$f;

    if-ne v1, v2, :cond_1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/n;->B(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/deepe/c/c/a/a/k$n;->a(Landroid/graphics/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$o;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_8

    const/16 v3, 0x27

    if-eq v2, v3, :cond_6

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v3, 0x62

    if-eq v2, v3, :cond_3

    const/16 v3, 0x65

    if-eq v2, v3, :cond_2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->c:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->d:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ao;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->a:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->e:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$q;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->d:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->c:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->a:Lcom/deepe/c/c/a/a/k$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$r;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x39

    if-eq v3, v4, :cond_7

    const/16 v4, 0x42

    if-eq v3, v4, :cond_6

    const/16 v4, 0x43

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->d:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-string v3, "strokeWidth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v0, p1, Lcom/deepe/c/c/a/a/k$r;->a:Z

    goto :goto_2

    :cond_2
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/deepe/c/c/a/a/k$r;->a:Z

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute markerUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->e:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->c:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->b:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_2

    :cond_7
    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_8
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->b(Ljava/lang/String;)F

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->f:Ljava/lang/Float;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$s;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_b

    const/16 v4, 0x62

    if-eq v3, v4, :cond_9

    const/16 v4, 0x33

    const-string v5, "userSpaceOnUse"

    const-string v6, "objectBoundingBox"

    const/4 v7, 0x1

    if-eq v3, v4, :cond_6

    const/16 v4, 0x34

    if-eq v3, v4, :cond_3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_2

    const/16 v4, 0x66

    if-eq v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->d:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->c:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->a:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->a:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute maskUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute maskContentUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <mask> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <mask> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$v;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->b(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->b:Ljava/lang/Float;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1}, Lcom/deepe/c/c/a/a/n;->x(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$w;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$y;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_b

    const/16 v4, 0x27

    if-eq v3, v4, :cond_9

    const/16 v4, 0x62

    if-eq v3, v4, :cond_7

    const/16 v4, 0x65

    if-eq v3, v4, :cond_6

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    const-string v4, "userSpaceOnUse"

    const-string v5, "objectBoundingBox"

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute patternUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/deepe/c/c/a/a/n;->B(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid value for attribute patternContentUnits"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->h:Ljava/lang/String;

    goto :goto_1

    :cond_b
    invoke-static {v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string p2, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v2

    sget-object v3, Lcom/deepe/c/c/a/a/n$f;->ak:Lcom/deepe/c/c/a/a/n$f;

    if-ne v2, v3, :cond_5

    new-instance v2, Lcom/deepe/c/c/a/a/p;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_1
    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    add-int/lit8 v6, v2, 0x1

    aput v3, v5, v2

    move v2, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const-string v6, "Invalid <"

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/n;->c()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->y(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static a(Lcom/deepe/c/c/a/a/o;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->b(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    if-nez v6, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "normal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n$d;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n$d;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n;->j(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$d;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    const-string v7, "small-caps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n$c;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v6}, Lcom/deepe/c/c/a/a/n$c;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    goto :goto_0

    :cond_7
    :goto_1
    invoke-static {v6}, Lcom/deepe/c/c/a/a/n;->g(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_0
    invoke-static {v5}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;
    :try_end_0
    .catch Lcom/deepe/c/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    :cond_9
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->o:Ljava/util/List;

    iput-object v6, p0, Lcom/deepe/c/c/a/a/o;->p:Lcom/deepe/c/c/a/a/k$p;

    if-nez v1, :cond_a

    const/high16 v0, 0x43c80000    # 400.0f

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    if-nez v2, :cond_b

    sget-object v2, Lcom/deepe/c/c/a/a/o$d;->a:Lcom/deepe/c/c/a/a/o$d;

    :cond_b
    iput-object v2, p0, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    if-nez v4, :cond_c

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    sget-object v0, Lcom/deepe/c/c/a/a/o$c;->a:Lcom/deepe/c/c/a/a/o$c;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->Q:Lcom/deepe/c/c/a/a/o$c;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v0, :cond_d

    invoke-static {}, Lcom/deepe/c/c/a/a/a;->a()Lcom/deepe/c/c/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    :cond_d
    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->a:Lcom/deepe/c/c/a/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->W:Lcom/deepe/c/c/a/a/a;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->X:Lcom/deepe/c/c/a/a/b;

    iget-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v2, 0xe3f000001e000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    if-nez p1, :cond_0

    iput-boolean v2, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p3

    :goto_0
    invoke-static {}, Lcom/deepe/c/c/a/a/n;->a()[I

    move-result-object p1

    invoke-static {p2}, Lcom/deepe/c/c/a/a/n$g;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    iput-boolean v2, p0, Lcom/deepe/c/c/a/a/n;->l:Z

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->J(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :pswitch_2
    iput-boolean v2, p0, Lcom/deepe/c/c/a/a/n;->i:Z

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->j:Lcom/deepe/c/c/a/a/n$g;

    sget-object p2, Lcom/deepe/c/c/a/a/n$g;->A:Lcom/deepe/c/c/a/a/n$g;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/deepe/c/c/a/a/k;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->j:Lcom/deepe/c/c/a/a/n$g;

    sget-object p2, Lcom/deepe/c/c/a/a/n$g;->f:Lcom/deepe/c/c/a/a/n$g;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/deepe/c/c/a/a/k;->c(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/deepe/c/c/a/a/k$am;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$am;->v:Lcom/deepe/c/c/a/a/k$ai;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/deepe/c/c/a/e;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "Unbalanced end element </%s> found"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    return-void

    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    invoke-static {p2}, Lcom/deepe/c/c/a/a/n$g;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$g;

    move-result-object p1

    invoke-static {}, Lcom/deepe/c/c/a/a/n;->a()[I

    move-result-object p2

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    iput v1, p0, Lcom/deepe/c/c/a/a/n;->h:I

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->A(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->e(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->o(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->p(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->y(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->n(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->r(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->q(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->C(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->v(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->w(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->h(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->u(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_d
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->l(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_e
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->m(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_f
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->z(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_11
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->B(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->s(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->t(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->k(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->f(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->b(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->j(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_18
    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->i:Z

    iput-object p1, p0, Lcom/deepe/c/c/a/a/n;->j:Lcom/deepe/c/c/a/a/n$g;

    goto :goto_1

    :pswitch_19
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->c(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_1a
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->x(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_1b
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->i(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_1c
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->d(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :pswitch_1d
    invoke-direct {p0, p4}, Lcom/deepe/c/c/a/a/n;->a(Lorg/xml/sax/Attributes;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "xml-stylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    if-eqz p1, :cond_4

    const-string p1, "type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "text/css"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "alternate"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "href"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "media"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@media "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " { "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->J(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<svg>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/deepe/c/c/a/a/k$ae;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ae;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ae;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a/k$ae;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    :goto_0
    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void
.end method

.method private a([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/n;->z(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/n;->n:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/n$g;->values()[Lcom/deepe/c/c/a/a/n$g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->w:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->F:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->b:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->c:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->d:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->e:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->f:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->g:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->h:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->i:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->j:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->k:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->l:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->m:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->n:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->o:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->p:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->q:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->r:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->s:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->t:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->u:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->v:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->a:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->x:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->y:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->z:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->A:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->B:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->C:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->D:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/deepe/c/c/a/a/n$g;->E:Lcom/deepe/c/c/a/a/n$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$g;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    sput-object v0, Lcom/deepe/c/c/a/a/n;->n:[I

    return-object v0
.end method

.method private static b(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x40c00000    # 6.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    :goto_0
    add-float/2addr p1, p0

    return p1

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    return p1

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_4

    sub-float/2addr p1, p0

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_4
    return p0
.end method

.method static b(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;II)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/k$p;
    .locals 1

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/k$p;->c:Lcom/deepe/c/c/a/a/k$p;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->n()Lcom/deepe/c/c/a/a/k$p;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/deepe/c/c/a/a/n;->b()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/c/a/a/n$f;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/n$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v4, 0x58

    if-eq v2, v4, :cond_3

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    if-nez v1, :cond_2

    new-instance v1, Lcom/deepe/c/c/a/a/o;

    invoke-direct {v1}, Lcom/deepe/c/c/a/a/o;-><init>()V

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    :cond_2
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4, v3}, Lcom/deepe/c/c/a/a/o;->a(Lcom/deepe/c/c/a/a/o;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/deepe/c/c/a/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$ak;->t:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/deepe/c/c/a/a/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/n;->d()V

    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Lcom/deepe/c/c/a/a/n$h;

    invoke-direct {v1, v0}, Lcom/deepe/c/c/a/a/n$h;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/n;->d()V

    return-void

    :cond_0
    if-eqz p1, :cond_9

    const/16 v2, 0x8

    if-eq p1, v2, :cond_8

    const/16 v2, 0x3a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->y(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-array p1, v5, [I

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v2

    aget v5, p1, v3

    aget p1, p1, v4

    invoke-direct {p0, v2, v5, p1}, Lcom/deepe/c/c/a/a/n;->a([CII)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/deepe/c/c/a/a/p;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/p;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/n;->c()V

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/deepe/c/c/a/e;

    const-string v1, "Stream error"

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/deepe/c/c/a/e;

    const-string v1, "XML parser problem"

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private b(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<g>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$m;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$m;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$m;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$m;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/n;->o:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/n$f;->values()[Lcom/deepe/c/c/a/a/n$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->a:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->bf:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->b:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->d:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->c:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->e:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->f:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->g:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->h:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->o:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->i:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->p:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->j:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->k:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->q:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->s:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->r:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->t:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->u:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->v:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->A:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->w:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->x:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->y:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->B:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->E:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->G:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->C:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->F:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->D:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->H:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->z:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->n:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->l:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->m:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->I:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->J:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->K:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->L:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->M:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->N:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->O:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->P:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->Q:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->U:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->V:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->W:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->T:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->S:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->R:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->X:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->Y:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->Z:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aa:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ab:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ac:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ad:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ae:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->af:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ag:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ah:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ai:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aj:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ak:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->al:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->am:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->an:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ao:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aq:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ap:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->as:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ar:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->at:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->au:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->av:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aw:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ax:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ay:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->az:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aA:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aB:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aC:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aD:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aE:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aF:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aG:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aH:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aI:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aJ:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aK:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aL:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aM:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aN:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aO:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aP:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aQ:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aR:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aS:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->bc:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->bd:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->be:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aT:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aU:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aV:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aW:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aY:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->ba:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aX:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->aZ:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v1, Lcom/deepe/c/c/a/a/n$f;->bb:Lcom/deepe/c/c/a/a/n$f;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/n$f;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    sput-object v0, Lcom/deepe/c/c/a/a/n;->o:[I

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->b(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Lcom/deepe/c/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/deepe/c/c/a/a/k;

    iget-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->e:Z

    iget-object v2, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a/k;-><init>(ZLcom/deepe/c/c/a/d;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    return-void
.end method

.method private c(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-boolean v1, Lcom/deepe/c/c/a/a/n;->a:Z

    if-nez v1, :cond_0

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/deepe/c/c/a/a/n$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepe/c/c/a/a/n$e;-><init>(Lcom/deepe/c/c/a/a/n;Lcom/deepe/c/c/a/a/n$e;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/deepe/c/c/a/e;

    const-string v1, "Stream error"

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/deepe/c/c/a/e;

    const-string v1, "SVG parse error"

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/deepe/c/c/a/e;

    const-string v1, "XML parser problem"

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private c(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<defs>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$h;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$h;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$h;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$h;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$an;
    .locals 4

    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->E(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$an;

    move-result-object v2

    :cond_0
    new-instance p0, Lcom/deepe/c/c/a/a/k$u;

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a/k$u;-><init>(Ljava/lang/String;Lcom/deepe/c/c/a/a/k$an;)V

    return-object p0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/deepe/c/c/a/a/k$u;

    invoke-direct {v0, p0, v2}, Lcom/deepe/c/c/a/a/k$u;-><init>(Ljava/lang/String;Lcom/deepe/c/c/a/a/k$an;)V

    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->E(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$an;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 0

    return-void
.end method

.method private d(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<a>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$a;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$a;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$a;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$a;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static e(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$f;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x5

    const/high16 v2, -0x1000000

    const/4 v3, 0x4

    const/16 v4, 0x23

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v0, v4}, Lcom/deepe/c/c/a/a/g;->a(Ljava/lang/String;II)Lcom/deepe/c/c/a/a/g;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->a()I

    move-result v0

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_1
    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result p0

    or-int/2addr p0, v2

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result p0

    const v0, 0xf000

    and-int/2addr v0, p0

    and-int/lit16 v1, p0, 0xf00

    and-int/lit16 v2, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    new-instance v4, Lcom/deepe/c/c/a/a/k$f;

    shl-int/lit8 v5, p0, 0x1c

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v5

    shl-int/lit8 v5, v0, 0x8

    or-int/2addr p0, v5

    shl-int/2addr v0, v3

    or-int/2addr p0, v0

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    or-int/2addr p0, v2

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr p0, v0

    invoke-direct {v4, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v4

    :cond_4
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result p0

    and-int/lit16 v0, p0, 0xf00

    and-int/lit16 v1, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    new-instance v4, Lcom/deepe/c/c/a/a/k$f;

    shl-int/lit8 v5, v0, 0xc

    or-int/2addr v2, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    invoke-direct {v4, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v4

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "rgba("

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x29

    const/16 v6, 0x2f

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x43800000    # 256.0f

    const/16 v9, 0x25

    if-nez v4, :cond_11

    const-string v10, "rgb("

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string v4, "hsla("

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v10, "hsl("

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    :cond_7
    new-instance v10, Lcom/deepe/c/c/a/a/p;

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v10, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "deg"

    invoke-virtual {v10, v1}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/String;)Z

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v1

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v10, v9}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_a
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    :cond_b
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v10, v9}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1

    :cond_d
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10, v6}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_1
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v7

    :cond_e
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_f
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    invoke-static {p0, v3, v4}, Lcom/deepe/c/c/a/a/n;->a(FFF)I

    move-result p0

    or-int/2addr p0, v2

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_10
    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    mul-float/2addr v7, v8

    invoke-static {v7}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {p0, v3, v4}, Lcom/deepe/c/c/a/a/n;->a(FFF)I

    move-result p0

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_11
    :goto_2
    new-instance v10, Lcom/deepe/c/c/a/a/p;

    if-eqz v4, :cond_12

    goto :goto_3

    :cond_12
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v10, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v10, v9}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v1, :cond_13

    mul-float/2addr p0, v8

    div-float/2addr p0, v3

    :cond_13
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v1

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v10, v9}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v11

    if-eqz v11, :cond_14

    mul-float/2addr v4, v8

    div-float/2addr v4, v3

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v11

    if-nez v11, :cond_16

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_15
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    :cond_16
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v10, v9}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_17

    mul-float/2addr v11, v8

    div-float/2addr v11, v3

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4

    :cond_18
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10, v6}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_4
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v7

    :cond_19
    invoke-virtual {v10}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v10, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object p0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    return-object p0

    :cond_1a
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    invoke-static {v11}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_1b
    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    mul-float/2addr v7, v8

    invoke-static {v7}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    invoke-static {v4}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    invoke-static {v11}, Lcom/deepe/c/c/a/a/n;->a(F)I

    move-result v1

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    return-object v0

    :cond_1c
    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->F(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$f;

    move-result-object p0

    return-object p0
.end method

.method private e(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$bd;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$bd;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$bd;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$bd;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$bd;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static f(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->w()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/p;->c(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method private f(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<image>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$o;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$o;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$o;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$o;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$o;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static g(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/n$b;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v0
    :try_end_0
    .catch Lcom/deepe/c/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<path>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$v;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$v;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$v;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$v;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$v;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static h(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n$d;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private h(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<rect>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$ab;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ab;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ab;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ab;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ab;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static i(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/c/a/a/n$c;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return-object v2

    :cond_2
    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method private i(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<circle>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$d;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$d;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$d;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$d;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$d;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static j(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$d;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x62ce05cf

    if-eq v0, v1, :cond_4

    const v1, -0x4642c5d0

    if-eq v0, v1, :cond_2

    const v1, -0x3df94319

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$d;->a:Lcom/deepe/c/c/a/a/o$d;

    return-object p0

    :cond_2
    const-string v0, "italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$d;->b:Lcom/deepe/c/c/a/a/o$d;

    return-object p0

    :cond_4
    const-string v0, "oblique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Lcom/deepe/c/c/a/a/o$d;->c:Lcom/deepe/c/c/a/a/o$d;

    return-object p0
.end method

.method private j(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<ellipse>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$i;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$i;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$i;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$i;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$i;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static k(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$k;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "overline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepe/c/c/a/a/o$k;->c:Lcom/deepe/c/c/a/a/o$k;

    return-object p0

    :sswitch_1
    const-string v0, "blink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$k;->e:Lcom/deepe/c/c/a/a/o$k;

    return-object p0

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepe/c/c/a/a/o$k;->a:Lcom/deepe/c/c/a/a/o$k;

    return-object p0

    :sswitch_3
    const-string v0, "underline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$k;->b:Lcom/deepe/c/c/a/a/o$k;

    return-object p0

    :sswitch_4
    const-string v0, "line-through"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/deepe/c/c/a/a/o$k;->d:Lcom/deepe/c/c/a/a/o$k;

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x45d81614 -> :sswitch_4
        -0x3d363934 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x597af5c -> :sswitch_1
        0x1f9462c8 -> :sswitch_0
    .end sparse-switch
.end method

.method private k(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<line>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$q;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$q;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$q;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$q;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$q;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static l(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$l;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1a3ea

    if-eq v0, v1, :cond_2

    const v1, 0x1ba6a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "rtl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$l;->b:Lcom/deepe/c/c/a/a/o$l;

    return-object p0

    :cond_2
    const-string v0, "ltr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$l;->a:Lcom/deepe/c/c/a/a/o$l;

    return-object p0
.end method

.method private l(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polyline>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$z;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$z;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$z;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$z;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    invoke-direct {p0, v0, p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static m(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$b;
    .locals 1

    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/o$b;->a:Lcom/deepe/c/c/a/a/o$b;

    return-object p0

    :cond_0
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/deepe/c/c/a/a/o$b;->b:Lcom/deepe/c/c/a/a/o$b;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private m(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polygon>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$aa;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$aa;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$aa;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$aa;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    invoke-direct {p0, v0, p1, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static n(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$g;
    .locals 1

    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/o$g;->a:Lcom/deepe/c/c/a/a/o$g;

    return-object p0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/deepe/c/c/a/a/o$g;->b:Lcom/deepe/c/c/a/a/o$g;

    return-object p0

    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/deepe/c/c/a/a/o$g;->c:Lcom/deepe/c/c/a/a/o$g;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private n(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<text>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$av;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$av;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$av;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$av;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$az;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static o(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$h;
    .locals 1

    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/o$h;->a:Lcom/deepe/c/c/a/a/o$h;

    return-object p0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/deepe/c/c/a/a/o$h;->b:Lcom/deepe/c/c/a/a/o$h;

    return-object p0

    :cond_1
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/deepe/c/c/a/a/o$h;->c:Lcom/deepe/c/c/a/a/o$h;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private o(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tspan>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepe/c/c/a/a/k$au;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$au;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$au;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$au;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$az;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$au;->v:Lcom/deepe/c/c/a/a/k$ai;

    instance-of p1, p1, Lcom/deepe/c/c/a/a/k$ba;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$au;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$ba;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$au;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$aw;

    invoke-interface {p1}, Lcom/deepe/c/c/a/a/k$aw;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k$au;->a(Lcom/deepe/c/c/a/a/k$ba;)V

    return-void

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tref>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepe/c/c/a/a/k$at;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$at;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$at;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$at;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$at;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$at;->v:Lcom/deepe/c/c/a/a/k$ai;

    instance-of p1, p1, Lcom/deepe/c/c/a/a/k$ba;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$at;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$ba;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$at;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$aw;

    invoke-interface {p1}, Lcom/deepe/c/c/a/a/k$aw;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k$at;->a(Lcom/deepe/c/c/a/a/k$ba;)V

    return-void

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static p(Ljava/lang/String;)[Lcom/deepe/c/c/a/a/k$p;
    .locals 5

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->n()Lcom/deepe/c/c/a/a/k$p;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/k$p;->a()F

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    cmpl-float p0, v2, p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/deepe/c/c/a/a/k$p;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/deepe/c/c/a/a/k$p;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->n()Lcom/deepe/c/c/a/a/k$p;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/k$p;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v1

    :cond_6
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/k$p;->a()F

    move-result p0

    add-float/2addr v2, p0

    goto :goto_0
.end method

.method static q(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$j;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4009266b

    if-eq v0, v1, :cond_4

    const v1, 0x188db

    if-eq v0, v1, :cond_2

    const v1, 0x68ac462

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    return-object p0

    :cond_2
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$j;->c:Lcom/deepe/c/c/a/a/o$j;

    return-object p0

    :cond_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    return-object p0
.end method

.method private q(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<switch>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$ar;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ar;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ar;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ar;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static r(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_2
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_3
        -0x361a1933 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x1bd1f072 -> :sswitch_0
    .end sparse-switch
.end method

.method private r(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<symbol>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$as;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$as;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$as;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$as;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static s(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$c;
    .locals 6

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "rect("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/deepe/c/c/a/a/p;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object p0

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v2

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v3

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object v4

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->a(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/deepe/c/c/a/a/k$c;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/deepe/c/c/a/a/k$c;-><init>(Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;)V

    return-object v0
.end method

.method private s(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<marker>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$r;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$r;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$r;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$r;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$r;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static t(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$n;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x33af38

    if-eq v0, v1, :cond_2

    const v1, 0x611b9e3e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "non-scaling-stroke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$n;->b:Lcom/deepe/c/c/a/a/o$n;

    return-object p0

    :cond_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$n;->a:Lcom/deepe/c/c/a/a/o$n;

    return-object p0
.end method

.method private t(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<linearGradient>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$al;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$al;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$al;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$al;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$j;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$al;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static u(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$i;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x379c7c9e

    if-eq v0, v1, :cond_4

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_2

    const v1, 0x159eff6a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "optimizeSpeed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$i;->c:Lcom/deepe/c/c/a/a/o$i;

    return-object p0

    :cond_2
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$i;->a:Lcom/deepe/c/c/a/a/o$i;

    return-object p0

    :cond_4
    const-string v0, "optimizeQuality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Lcom/deepe/c/c/a/a/o$i;->b:Lcom/deepe/c/c/a/a/o$i;

    return-object p0
.end method

.method private u(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<radialGradient>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$ap;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ap;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ap;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ap;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$j;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ap;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static v(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$f;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_2

    const v1, 0x7cfa60ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "isolate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$f;->b:Lcom/deepe/c/c/a/a/o$f;

    return-object p0

    :cond_2
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$f;->a:Lcom/deepe/c/c/a/a/o$f;

    return-object p0
.end method

.method private v(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<stop>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$ad;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ad;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ad;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ad;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ad;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static w(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;
    .locals 3

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/k$p;->c:Lcom/deepe/c/c/a/a/k$p;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$p;

    move-result-object p0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;
    :try_end_0
    .catch Lcom/deepe/c/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private w(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<solidColor>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$ac;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ac;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ac;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ac;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static x(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$w;
    .locals 18

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v9}, Lcom/deepe/c/c/a/a/k$w;-><init>()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4d

    const/16 v10, 0x6d

    if-eq v1, v2, :cond_1

    if-eq v1, v10, :cond_1

    return-object v9

    :cond_1
    const/4 v11, 0x0

    move v12, v1

    move v1, v11

    move v2, v1

    move v3, v2

    move v4, v3

    move v13, v4

    move v14, v13

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    const/16 v5, 0x6c

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, " path segment"

    const-string v8, "Bad path coords for "

    sparse-switch v12, :sswitch_data_0

    return-object v9

    :sswitch_0
    invoke-virtual {v9}, Lcom/deepe/c/c/a/a/k$w;->b()V

    move v1, v13

    move v2, v1

    move v3, v14

    :goto_1
    move v4, v3

    goto/16 :goto_6

    :sswitch_1
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    return-object v9

    :cond_2
    const/16 v4, 0x76

    if-ne v12, v4, :cond_3

    add-float/2addr v2, v3

    :cond_3
    move v3, v2

    goto/16 :goto_4

    :sswitch_2
    mul-float v5, v1, v6

    sub-float/2addr v5, v2

    mul-float/2addr v6, v3

    sub-float/2addr v6, v4

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v7, 0x74

    if-ne v12, v7, :cond_5

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_5
    move v1, v2

    move v3, v4

    invoke-virtual {v9, v5, v6, v1, v3}, Lcom/deepe/c/c/a/a/k$w;->a(FFFF)V

    move v2, v5

    move v4, v6

    goto/16 :goto_6

    :sswitch_3
    mul-float v5, v1, v6

    sub-float v2, v5, v2

    mul-float/2addr v6, v3

    sub-float v4, v6, v4

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v15

    invoke-virtual {v0, v15}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v7, 0x73

    if-ne v12, v7, :cond_7

    add-float/2addr v15, v1

    add-float v16, v16, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_7
    move v8, v5

    move/from16 v17, v16

    move/from16 v16, v6

    move-object v1, v9

    move v3, v4

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/16 v7, 0x71

    if-ne v12, v7, :cond_9

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_9
    move v1, v2

    move v3, v4

    invoke-virtual {v9, v1, v3, v5, v6}, Lcom/deepe/c/c/a/a/k$w;->a(FFFF)V

    move v2, v1

    move v4, v3

    move v1, v5

    move v3, v6

    goto/16 :goto_6

    :sswitch_5
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    if-ne v12, v10, :cond_b

    invoke-virtual {v9}, Lcom/deepe/c/c/a/a/k$w;->a()Z

    move-result v6

    if-nez v6, :cond_b

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_b
    move v1, v2

    move v3, v4

    invoke-virtual {v9, v1, v3}, Lcom/deepe/c/c/a/a/k$w;->a(FF)V

    if-ne v12, v10, :cond_c

    goto :goto_3

    :cond_c
    const/16 v5, 0x4c

    :goto_3
    move v2, v1

    move v13, v2

    move v4, v3

    move v14, v4

    move v12, v5

    goto/16 :goto_6

    :sswitch_6
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    if-ne v12, v5, :cond_e

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_e
    move v1, v2

    move v3, v4

    goto :goto_4

    :sswitch_7
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const/16 v4, 0x68

    if-ne v12, v4, :cond_10

    add-float/2addr v2, v1

    :cond_10
    move v1, v2

    :goto_4
    invoke-virtual {v9, v1, v3}, Lcom/deepe/c/c/a/a/k$w;->b(FF)V

    move v2, v1

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v15

    invoke-virtual {v0, v15}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-eqz v17, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const/16 v7, 0x63

    if-ne v12, v7, :cond_12

    add-float/2addr v15, v1

    add-float v16, v16, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_12
    move v3, v4

    move v8, v5

    move/from16 v17, v16

    move/from16 v16, v6

    move-object v1, v9

    :goto_5
    move v4, v8

    move/from16 v5, v16

    move v6, v15

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/deepe/c/c/a/a/k$w;->a(FFFFFF)V

    move v2, v8

    move v1, v15

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_6

    :sswitch_9
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/Boolean;)F

    move-result v10

    invoke-virtual {v0, v10}, Lcom/deepe/c/c/a/a/p;->a(F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_17

    cmpg-float v17, v2, v11

    if-ltz v17, :cond_17

    cmpg-float v17, v4, v11

    if-gez v17, :cond_13

    goto :goto_7

    :cond_13
    const/16 v7, 0x61

    if-ne v12, v7, :cond_14

    add-float/2addr v10, v1

    add-float v16, v16, v3

    :cond_14
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, v9

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/deepe/c/c/a/a/k$w;->a(FFFZZFF)V

    move v1, v10

    move v2, v1

    move/from16 v3, v16

    goto/16 :goto_1

    :goto_6
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v5

    if-eqz v5, :cond_15

    return-object v9

    :cond_15
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->v()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->m()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_16
    const/16 v10, 0x6d

    goto/16 :goto_0

    :cond_17
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private x(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<clipPath>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$e;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$e;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$e;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$e;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$n;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$e;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private y(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->k:Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/n;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->m:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->z(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private y(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<textPath>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepe/c/c/a/a/k$ay;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$ay;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ay;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ay;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ay;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$ay;->v:Lcom/deepe/c/c/a/a/k$ai;

    instance-of p1, p1, Lcom/deepe/c/c/a/a/k$ba;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$ay;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$ba;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$ay;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$aw;

    invoke-interface {p1}, Lcom/deepe/c/c/a/a/k$aw;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k$ay;->a(Lcom/deepe/c/c/a/a/k$ba;)V

    return-void

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private z(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    check-cast v0, Lcom/deepe/c/c/a/a/k$ag;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$ag;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$ag;->b()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$am;

    :goto_0
    instance-of v1, v0, Lcom/deepe/c/c/a/a/k$bb;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/deepe/c/c/a/a/k$bb;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    new-instance v1, Lcom/deepe/c/c/a/a/k$bb;

    invoke-direct {v1, p1}, Lcom/deepe/c/c/a/a/k$bb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    :goto_1
    return-void
.end method

.method private z(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<pattern>"

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$y;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$y;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$y;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$y;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/k$ak;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$af;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$aq;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/k$y;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p1, v0}, Lcom/deepe/c/c/a/a/k$ai;->a(Lcom/deepe/c/c/a/a/k$am;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/n;->d:Lcom/deepe/c/c/a/a/k$ai;

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/c/a/e;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/deepe/c/c/a/a/k;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    const-string v0, "Exception thrown closing input stream"

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const v2, 0x8b1f

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :catch_0
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/deepe/c/c/a/a/n;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "Forcing SAX parser for this version of Android"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->c(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_2
    :try_start_3
    iget-boolean v1, p0, Lcom/deepe/c/c/a/a/n;->e:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const-string v1, "<!ENTITY "

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Switching to SAX parser to process entities"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->c(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_3
    :try_start_5
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->b(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :goto_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_7
    const-string v2, "Error occurred while performing check for entities.  File may not be parsed correctly if it contains entity definitions."

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n;->b(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/n;->c:Lcom/deepe/c/c/a/a/k;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :goto_3
    return-object v1

    :goto_4
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    invoke-static {v0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :goto_5
    throw v1
.end method

.method public a(Lcom/deepe/c/c/a/d;)Lcom/deepe/c/c/a/a/m;
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/n;->f:Lcom/deepe/c/c/a/d;

    return-object p0
.end method

.method public a(Z)Lcom/deepe/c/c/a/a/m;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/n;->e:Z

    return-object p0
.end method
