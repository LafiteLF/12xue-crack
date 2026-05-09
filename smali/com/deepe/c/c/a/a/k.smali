.class public Lcom/deepe/c/c/a/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/k$a;,
        Lcom/deepe/c/c/a/a/k$b;,
        Lcom/deepe/c/c/a/a/k$c;,
        Lcom/deepe/c/c/a/a/k$d;,
        Lcom/deepe/c/c/a/a/k$e;,
        Lcom/deepe/c/c/a/a/k$f;,
        Lcom/deepe/c/c/a/a/k$g;,
        Lcom/deepe/c/c/a/a/k$h;,
        Lcom/deepe/c/c/a/a/k$i;,
        Lcom/deepe/c/c/a/a/k$j;,
        Lcom/deepe/c/c/a/a/k$k;,
        Lcom/deepe/c/c/a/a/k$l;,
        Lcom/deepe/c/c/a/a/k$m;,
        Lcom/deepe/c/c/a/a/k$n;,
        Lcom/deepe/c/c/a/a/k$o;,
        Lcom/deepe/c/c/a/a/k$p;,
        Lcom/deepe/c/c/a/a/k$q;,
        Lcom/deepe/c/c/a/a/k$r;,
        Lcom/deepe/c/c/a/a/k$s;,
        Lcom/deepe/c/c/a/a/k$t;,
        Lcom/deepe/c/c/a/a/k$u;,
        Lcom/deepe/c/c/a/a/k$v;,
        Lcom/deepe/c/c/a/a/k$w;,
        Lcom/deepe/c/c/a/a/k$x;,
        Lcom/deepe/c/c/a/a/k$y;,
        Lcom/deepe/c/c/a/a/k$z;,
        Lcom/deepe/c/c/a/a/k$aa;,
        Lcom/deepe/c/c/a/a/k$ab;,
        Lcom/deepe/c/c/a/a/k$ac;,
        Lcom/deepe/c/c/a/a/k$ad;,
        Lcom/deepe/c/c/a/a/k$ae;,
        Lcom/deepe/c/c/a/a/k$af;,
        Lcom/deepe/c/c/a/a/k$ag;,
        Lcom/deepe/c/c/a/a/k$ah;,
        Lcom/deepe/c/c/a/a/k$ai;,
        Lcom/deepe/c/c/a/a/k$aj;,
        Lcom/deepe/c/c/a/a/k$ak;,
        Lcom/deepe/c/c/a/a/k$al;,
        Lcom/deepe/c/c/a/a/k$am;,
        Lcom/deepe/c/c/a/a/k$an;,
        Lcom/deepe/c/c/a/a/k$ao;,
        Lcom/deepe/c/c/a/a/k$ap;,
        Lcom/deepe/c/c/a/a/k$aq;,
        Lcom/deepe/c/c/a/a/k$ar;,
        Lcom/deepe/c/c/a/a/k$as;,
        Lcom/deepe/c/c/a/a/k$at;,
        Lcom/deepe/c/c/a/a/k$au;,
        Lcom/deepe/c/c/a/a/k$av;,
        Lcom/deepe/c/c/a/a/k$aw;,
        Lcom/deepe/c/c/a/a/k$ax;,
        Lcom/deepe/c/c/a/a/k$ay;,
        Lcom/deepe/c/c/a/a/k$az;,
        Lcom/deepe/c/c/a/a/k$ba;,
        Lcom/deepe/c/c/a/a/k$bb;,
        Lcom/deepe/c/c/a/a/k$bc;,
        Lcom/deepe/c/c/a/a/k$bd;,
        Lcom/deepe/c/c/a/a/k$be;
    }
.end annotation


# static fields
.field private static a:Lcom/deepe/c/c/a/d; = null

.field private static b:Z = true


# instance fields
.field private final c:Lcom/deepe/c/c/a/d;

.field private final d:Z

.field private e:Lcom/deepe/c/c/a/a/k$ae;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:F

.field private final i:Lcom/deepe/c/c/a/a/d$p;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/a/a/k$ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ZLcom/deepe/c/c/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    const-string v0, ""

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k;->g:Ljava/lang/String;

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/deepe/c/c/a/a/k;->h:F

    new-instance v0, Lcom/deepe/c/c/a/a/d$p;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/d$p;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k;->i:Lcom/deepe/c/c/a/a/d$p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k;->j:Ljava/util/Map;

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/k;->d:Z

    iput-object p2, p0, Lcom/deepe/c/c/a/a/k;->c:Lcom/deepe/c/c/a/d;

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ai;Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ak;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$ak;->p:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$am;

    instance-of v1, v0, Lcom/deepe/c/c/a/a/k$ak;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/deepe/c/c/a/a/k$ak;

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ak;->p:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    instance-of v1, v0, Lcom/deepe/c/c/a/a/k$ai;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ai;

    invoke-direct {p0, v0, p2}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a/k$ai;Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method public static a([B)Lcom/deepe/c/c/a/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    invoke-static {}, Lcom/deepe/c/c/a/a/k;->d()Lcom/deepe/c/c/a/a/m;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/deepe/c/c/a/a/m;->a(Ljava/io/InputStream;)Lcom/deepe/c/c/a/a/k;

    move-result-object p0

    return-object p0
.end method

.method protected static d()Lcom/deepe/c/c/a/a/m;
    .locals 2

    new-instance v0, Lcom/deepe/c/c/a/a/n;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/n;-><init>()V

    sget-boolean v1, Lcom/deepe/c/c/a/a/k;->b:Z

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/n;->a(Z)Lcom/deepe/c/c/a/a/m;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/c/a/a/k;->a:Lcom/deepe/c/c/a/d;

    invoke-interface {v0, v1}, Lcom/deepe/c/c/a/a/m;->a(Lcom/deepe/c/c/a/d;)Lcom/deepe/c/c/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\\""

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\\'"

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "\\\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\A"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()F
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->b:Lcom/deepe/c/c/a/a/k$bc;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->c:Lcom/deepe/c/c/a/a/k$bc;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/deepe/c/c/a/a/k;->h:F

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k$p;->a(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/a/a/k;->d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {v1, p1}, Lcom/deepe/c/c/a/a/k$p;-><init>(F)V

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SVG document is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/Canvas;Lcom/deepe/c/c/a/b;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/deepe/c/c/a/b;

    invoke-direct {p2}, Lcom/deepe/c/c/a/b;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/deepe/c/c/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Lcom/deepe/c/c/a/b;->a(FFFF)Lcom/deepe/c/c/a/b;

    :cond_1
    new-instance v0, Lcom/deepe/c/c/a/a/j;

    iget v1, p0, Lcom/deepe/c/c/a/a/k;->h:F

    iget-object v2, p0, Lcom/deepe/c/c/a/a/k;->c:Lcom/deepe/c/c/a/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/deepe/c/c/a/a/j;-><init>(Landroid/graphics/Canvas;FLcom/deepe/c/c/a/d;)V

    invoke-virtual {v0, p0, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k;Lcom/deepe/c/c/a/a/i;)V

    return-void
.end method

.method a(Lcom/deepe/c/c/a/a/d$p;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->i:Lcom/deepe/c/c/a/a/d$p;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$p;)V

    return-void
.end method

.method a(Lcom/deepe/c/c/a/a/k$ae;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()F
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->b:Lcom/deepe/c/c/a/a/k$bc;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$p;->b:Lcom/deepe/c/c/a/a/k$bc;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->c:Lcom/deepe/c/c/a/a/k$bc;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/deepe/c/c/a/a/k;->h:F

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k$p;->a(F)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {v1, p1}, Lcom/deepe/c/c/a/a/k$p;-><init>(F)V

    iput-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$b;->a()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k;->g:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ae;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/k$ak;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a/k$ai;Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Lcom/deepe/c/c/a/a/k$ae;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->e:Lcom/deepe/c/c/a/a/k$ae;

    return-object v0
.end method

.method f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->i:Lcom/deepe/c/c/a/a/d$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/d$p;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method g()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->i:Lcom/deepe/c/c/a/a/d$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/d$p;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k;->i:Lcom/deepe/c/c/a/a/d$p;

    sget-object v1, Lcom/deepe/c/c/a/a/d$s;->b:Lcom/deepe/c/c/a/a/d$s;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$s;)V

    return-void
.end method
