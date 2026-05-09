.class Lcom/apicloud/a/i/a/y/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/y/a/h$a;,
        Lcom/apicloud/a/i/a/y/a/h$b;,
        Lcom/apicloud/a/i/a/y/a/h$c;,
        Lcom/apicloud/a/i/a/y/a/h$d;,
        Lcom/apicloud/a/i/a/y/a/h$e;,
        Lcom/apicloud/a/i/a/y/a/h$f;,
        Lcom/apicloud/a/i/a/y/a/h$g;,
        Lcom/apicloud/a/i/a/y/a/h$h;,
        Lcom/apicloud/a/i/a/y/a/h$i;,
        Lcom/apicloud/a/i/a/y/a/h$j;,
        Lcom/apicloud/a/i/a/y/a/h$k;,
        Lcom/apicloud/a/i/a/y/a/h$l;,
        Lcom/apicloud/a/i/a/y/a/h$m;,
        Lcom/apicloud/a/i/a/y/a/h$n;,
        Lcom/apicloud/a/i/a/y/a/h$o;,
        Lcom/apicloud/a/i/a/y/a/h$p;,
        Lcom/apicloud/a/i/a/y/a/h$q;,
        Lcom/apicloud/a/i/a/y/a/h$r;,
        Lcom/apicloud/a/i/a/y/a/h$s;,
        Lcom/apicloud/a/i/a/y/a/h$t;,
        Lcom/apicloud/a/i/a/y/a/h$u;
    }
.end annotation


# static fields
.field static final a:F

.field static final b:F

.field static final c:F

.field static final d:F

.field static final e:F

.field static f:Z

.field static g:I

.field private static final h:[F

.field private static final i:[F

.field private static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lorg/xml/sax/XMLReader;

.field private l:Landroid/text/SpannableStringBuilder;

.field private m:Lcom/apicloud/a/i/a/y/a/a$b;

.field private n:Lcom/apicloud/a/i/a/y/a/a$c;

.field private o:Lcom/apicloud/a/i/a/y/a/a$a;

.field private p:I

.field private q:I

.field private r:Lcom/apicloud/a/i/a/y/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/apicloud/a/i/a/y/a/h;->h:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/apicloud/a/i/a/y/a/h;->i:[F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const v1, -0x565657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gray"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const v3, -0x2c2c2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lightgray"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const-string v4, "darkgrey"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const-string v1, "grey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const-string v1, "lightgrey"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    const v1, -0xff8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->a:F

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->b:F

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->c:F

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->d:F

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->e:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/apicloud/a/i/a/y/a/h;->f:Z

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->g:I

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
        0x3fd5c28f    # 1.67f
        0x40151eb8    # 2.33f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;Lorg/xml/sax/XMLReader;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->j:Ljava/lang/String;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/a/h;->m:Lcom/apicloud/a/i/a/y/a/a$b;

    iput-object p3, p0, Lcom/apicloud/a/i/a/y/a/h;->n:Lcom/apicloud/a/i/a/y/a/a$c;

    iput-object p4, p0, Lcom/apicloud/a/i/a/y/a/h;->o:Lcom/apicloud/a/i/a/y/a/a$a;

    iput-object p5, p0, Lcom/apicloud/a/i/a/y/a/h;->k:Lorg/xml/sax/XMLReader;

    iput p6, p0, Lcom/apicloud/a/i/a/y/a/h;->p:I

    new-instance p1, Lcom/apicloud/a/i/a/y/a/b;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/y/a/b;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->r:Lcom/apicloud/a/i/a/y/a/b;

    return-void
.end method

.method private a(I)I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/h;->p:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public static a(Ljava/lang/String;F)Lcom/apicloud/a/i/a/y/a/h$n;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_2

    new-instance p1, Lcom/apicloud/a/i/a/y/a/h$n;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/y/a/h$n;-><init>(F)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/xml/sax/Attributes;)Lcom/deepe/c/c/ad;
    .locals 7

    const-string v0, ""

    const-string v1, "style"

    invoke-interface {p0, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "height"

    const-string v4, "width"

    const/high16 v5, -0x40800000    # -1.0f

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "maxWidth"

    invoke-virtual {v1, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "maxHeight"

    invoke-virtual {v1, v6}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;)F

    move-result v5

    :cond_3
    const/4 v1, 0x0

    cmpl-float v6, v2, v1

    if-gez v6, :cond_5

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v5

    move v5, v2

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p0, Lcom/deepe/c/c/ad;

    invoke-direct {p0, v2, v5}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0

    :cond_6
    move v1, v5

    :goto_2
    invoke-interface {p0, v0, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v2}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;)F

    move-result v5

    :cond_7
    invoke-interface {p0, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;)F

    move-result v1

    :cond_8
    new-instance p0, Lcom/deepe/c/c/ad;

    invoke-direct {p0, v5, v1}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0
.end method

.method private a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    return-object p1
.end method

.method private a(Landroid/text/Editable;)V
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    return-void
.end method

.method private a(Landroid/text/Editable;I)V
    .locals 4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v1, p2, :cond_3

    return-void

    :cond_3
    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Landroid/text/Editable;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$p;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$p;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$p;->a(Lcom/apicloud/a/i/a/y/a/h$p;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;I)V

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$d;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$d;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/apicloud/a/i/a/y/a/a/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$d;->a(Lcom/apicloud/a/i/a/y/a/h$d;)F

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/apicloud/a/i/a/y/a/a/a;-><init>(Ljava/lang/String;F)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 4

    const-string v0, ""

    const-string v1, "style"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/apicloud/a/i/a/y/a/h$j;

    invoke-direct {v1, v0}, Lcom/apicloud/a/i/a/y/a/h$j;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_2
    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    new-instance v1, Lcom/apicloud/a/i/a/y/a/h$b;

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/apicloud/a/i/a/y/a/h$b;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_3
    const-string v0, "textDecoration"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "line-through"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/apicloud/a/i/a/y/a/h$r;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/y/a/h$r;-><init>(Lcom/apicloud/a/i/a/y/a/h$r;)V

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->h()F

    move-result v0

    const-string v2, "fontSize"

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/apicloud/a/i/a/y/a/a;->a(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    new-instance v0, Lcom/apicloud/a/i/a/y/a/h$i;

    invoke-direct {v0, v2}, Lcom/apicloud/a/i/a/y/a/h$i;-><init>(F)V

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v2

    :cond_5
    const-string v2, "lineHeight"

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Ljava/lang/String;F)Lcom/apicloud/a/i/a/y/a/h$n;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_6
    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h$a;-><init>(ILcom/apicloud/a/i/a/y/a/h$a;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h$a;-><init>(ILcom/apicloud/a/i/a/y/a/h$a;)V

    goto :goto_0

    :cond_8
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h$a;-><init>(ILcom/apicloud/a/i/a/y/a/h$a;)V

    goto :goto_0

    :cond_9
    const-string v0, "justify"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$a;

    const/4 v0, 0x3

    invoke-direct {p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h$a;-><init>(ILcom/apicloud/a/i/a/y/a/h$a;)V

    goto :goto_0

    :cond_a
    :goto_1
    return-void
.end method

.method private a(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/apicloud/a/i/a/y/a/h;->c(I)F

    move-result v0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->c()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$k;

    invoke-direct {p2, p3}, Lcom/apicloud/a/i/a/y/a/h$k;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V
    .locals 0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    if-lez p3, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;I)V

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$p;

    invoke-direct {p2, p3}, Lcom/apicloud/a/i/a/y/a/h$p;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$d;

    invoke-direct {p2, p4}, Lcom/apicloud/a/i/a/y/a/h$d;-><init>(F)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/text/Editable;Lorg/xml/sax/Attributes;Lcom/apicloud/a/i/a/y/a/a$b;)V
    .locals 3

    const-string v0, ""

    const-string v1, "src"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Lorg/xml/sax/Attributes;)Lcom/deepe/c/c/ad;

    move-result-object p2

    iget v1, p2, Lcom/deepe/c/c/ad;->a:F

    iget p2, p2, Lcom/deepe/c/c/ad;->b:F

    invoke-interface {p3, v0, v1, p2}, Lcom/apicloud/a/i/a/y/a/a$b;->a(Ljava/lang/String;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/deepe/c/k/j;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p3

    const-string v1, "\ufffc"

    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    new-instance v1, Lcom/apicloud/a/i/a/y/a/a/c;

    invoke-direct {v1, p2, v0}, Lcom/apicloud/a/i/a/y/a/a/c;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    const/16 v0, 0x21

    invoke-interface {p1, v1, p3, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private varargs a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5

    invoke-interface {p1, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p2

    if-eq v0, p2, :cond_1

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p3, v2

    const/16 v4, 0x21

    invoke-interface {p1, v3, v0, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/y/a/h;->b(Landroid/text/Editable;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    const-string v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/y/a/h;->b(Landroid/text/Editable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->b(Landroid/text/Editable;)V

    goto/16 :goto_5

    :cond_4
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$f;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_3
    invoke-direct {p0, p1, v0, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_7
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$f;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_3

    :cond_8
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$m;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_4
    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$m;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_4

    :cond_a
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$m;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_4

    :cond_b
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$m;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_4

    :cond_c
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$c;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    goto :goto_3

    :cond_d
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$q;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    goto/16 :goto_3

    :cond_e
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->e(Landroid/text/Editable;)V

    goto/16 :goto_5

    :cond_f
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->c(Landroid/text/Editable;)V

    goto/16 :goto_5

    :cond_10
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$o;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->f(Landroid/text/Editable;)V

    goto/16 :goto_5

    :cond_12
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$u;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto/16 :goto_3

    :cond_13
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$r;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto/16 :goto_3

    :cond_14
    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$r;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto/16 :goto_3

    :cond_15
    const-string v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$r;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto/16 :goto_3

    :cond_16
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$t;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    goto/16 :goto_3

    :cond_17
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$s;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    goto/16 :goto_3

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_19

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-lt v0, v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x36

    if-gt v0, v2, :cond_19

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/y/a/h;->b(Landroid/text/Editable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->d(Landroid/text/Editable;)V

    goto :goto_5

    :cond_19
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->n:Lcom/apicloud/a/i/a/y/a/a$c;

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/apicloud/a/i/a/y/a/h;->k:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v2, v4}, Lcom/apicloud/a/i/a/y/a/a$c;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    :cond_1a
    :goto_5
    iget p1, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->b()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V

    :goto_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Z)V

    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->e()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->b(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_3
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->f()I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$f;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$f;-><init>(Lcom/apicloud/a/i/a/y/a/h$f;)V

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$f;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$f;-><init>(Lcom/apicloud/a/i/a/y/a/h$f;)V

    goto :goto_3

    :cond_7
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$m;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$m;-><init>(Lcom/apicloud/a/i/a/y/a/h$m;)V

    goto :goto_3

    :cond_8
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$m;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$m;-><init>(Lcom/apicloud/a/i/a/y/a/h$m;)V

    goto :goto_3

    :cond_9
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$m;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$m;-><init>(Lcom/apicloud/a/i/a/y/a/h$m;)V

    goto :goto_3

    :cond_a
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$m;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$m;-><init>(Lcom/apicloud/a/i/a/y/a/h$m;)V

    goto :goto_3

    :cond_b
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$c;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$c;-><init>(Lcom/apicloud/a/i/a/y/a/h$c;)V

    goto :goto_3

    :cond_c
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$q;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$q;-><init>(Lcom/apicloud/a/i/a/y/a/h$q;)V

    goto :goto_3

    :cond_d
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->d(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_4

    :cond_e
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->c(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_4

    :cond_f
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$o;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$o;-><init>(Lcom/apicloud/a/i/a/y/a/h$o;)V

    goto/16 :goto_3

    :cond_10
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->e(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_4

    :cond_11
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$u;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$u;-><init>(Lcom/apicloud/a/i/a/y/a/h$u;)V

    goto/16 :goto_3

    :cond_12
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$r;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$r;-><init>(Lcom/apicloud/a/i/a/y/a/h$r;)V

    goto/16 :goto_3

    :cond_13
    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$r;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$r;-><init>(Lcom/apicloud/a/i/a/y/a/h$r;)V

    goto/16 :goto_3

    :cond_14
    const-string v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$r;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$r;-><init>(Lcom/apicloud/a/i/a/y/a/h$r;)V

    goto/16 :goto_3

    :cond_15
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$t;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$t;-><init>(Lcom/apicloud/a/i/a/y/a/h$t;)V

    goto/16 :goto_3

    :cond_16
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$s;

    invoke-direct {p2, v2}, Lcom/apicloud/a/i/a/y/a/h$s;-><init>(Lcom/apicloud/a/i/a/y/a/h$s;)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-lt v0, v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x36

    if-gt v0, v3, :cond_18

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p2, p1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_1

    :cond_18
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->m:Lcom/apicloud/a/i/a/y/a/a$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;Lcom/apicloud/a/i/a/y/a/a$b;)V

    goto :goto_4

    :cond_19
    iget-object p2, p0, Lcom/apicloud/a/i/a/y/a/h;->n:Lcom/apicloud/a/i/a/y/a/a$c;

    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/h;->k:Lorg/xml/sax/XMLReader;

    invoke-interface {p2, v1, p1, v0, v2}, Lcom/apicloud/a/i/a/y/a/a$c;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    :cond_1a
    :goto_4
    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/apicloud/a/i/a/y/a/h;->f:Z

    goto :goto_0

    :cond_0
    sput-boolean v0, Lcom/apicloud/a/i/a/y/a/h;->f:Z

    :goto_0
    sput v0, Lcom/apicloud/a/i/a/y/a/h;->g:I

    return-void
.end method

.method private a([CII)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/h;->r:Lcom/apicloud/a/i/a/y/a/b;

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/h;->q:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/b;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    add-int v2, v1, p2

    aget-char v2, p1, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    goto :goto_3

    :cond_1
    const/16 v4, 0x20

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    :goto_2
    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(I)F
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->h()F

    move-result v0

    sget-object v1, Lcom/apicloud/a/i/a/y/a/h;->h:[F

    aget p1, v1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method private b()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/h;->p:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/apicloud/a/i/a/y/a/h;->s:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 p1, -0x1000000

    return p1
.end method

.method private b(Landroid/text/Editable;)V
    .locals 5

    const-string v0, "li"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/String;)V

    sget-boolean v0, Lcom/apicloud/a/i/a/y/a/h;->f:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/apicloud/a/i/a/y/a/h;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apicloud/a/i/a/y/a/h;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-class v1, Lcom/apicloud/a/i/a/y/a/h$g;

    new-instance v2, Lcom/apicloud/a/i/a/y/a/a/b;

    sget v3, Lcom/apicloud/a/i/a/y/a/h;->a:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v3, v0}, Lcom/apicloud/a/i/a/y/a/a/b;-><init>(II)V

    invoke-direct {p0, p1, v1, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/text/Editable;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$r;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v4, v3, v2

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$b;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$b;

    if-eqz v0, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$b;->a(Lcom/apicloud/a/i/a/y/a/h$b;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v4, v3, v2

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$j;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$j;

    if-eqz v0, :cond_2

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$j;->a(Lcom/apicloud/a/i/a/y/a/h$j;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v4, v3, v2

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$i;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$i;

    if-eqz v0, :cond_3

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$i;->a(Lcom/apicloud/a/i/a/y/a/h$i;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    aput-object v4, v3, v2

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_3
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$n;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$n;

    if-eqz v0, :cond_4

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Lcom/apicloud/a/i/a/y/a/a/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$n;->a(Lcom/apicloud/a/i/a/y/a/h$n;)F

    move-result v5

    invoke-direct {v4, p2, v5}, Lcom/apicloud/a/i/a/y/a/a/e;-><init>(Ljava/lang/String;F)V

    aput-object v4, v3, v2

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_4
    const-class p2, Lcom/apicloud/a/i/a/y/a/h$a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/y/a/h$a;

    if-eqz p2, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/y/a/h$a;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private b(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->d()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$g;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/apicloud/a/i/a/y/a/h$g;-><init>(Lcom/apicloud/a/i/a/y/a/h$g;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private c(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h;->b(I)F

    move-result v0

    sget-object v1, Lcom/apicloud/a/i/a/y/a/h;->i:[F

    aget p1, v1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method private c()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private c(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "blockquote"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/String;)V

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$e;

    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/h;->g()I

    move-result v0

    sget v1, Lcom/apicloud/a/i/a/y/a/h;->e:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Lorg/xml/sax/Attributes;IF)V

    new-instance p2, Lcom/apicloud/a/i/a/y/a/h$e;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/apicloud/a/i/a/y/a/h$e;-><init>(Lcom/apicloud/a/i/a/y/a/h$e;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private d()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private d(Landroid/text/Editable;)V
    .locals 7

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$k;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lcom/apicloud/a/i/a/y/a/h;->h:[F

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$k;->a(Lcom/apicloud/a/i/a/y/a/h$k;)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v4, v2, v3

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v3, v2, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$k;->a(Lcom/apicloud/a/i/a/y/a/h$k;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 3

    const-string v0, ""

    const-string v1, "color"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "face"

    invoke-interface {p2, v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/y/a/h;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/apicloud/a/i/a/y/a/h$j;

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/apicloud/a/i/a/y/a/h$j;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/a/y/a/h$h;

    invoke-direct {v0, p2}, Lcom/apicloud/a/i/a/y/a/h$h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private e()I
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private e(Landroid/text/Editable;)V
    .locals 6

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$h;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/TypefaceSpan;

    iget-object v5, v0, Lcom/apicloud/a/i/a/y/a/h$h;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    invoke-direct {p0, p1, v0, v3}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/apicloud/a/i/a/y/a/h$j;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$j;

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/h$j;->a(Lcom/apicloud/a/i/a/y/a/h$j;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v3, v2, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private e(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, ""

    const-string v1, "href"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/apicloud/a/i/a/y/a/h$l;

    invoke-direct {v0, p2}, Lcom/apicloud/a/i/a/y/a/h$l;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method

.method private f()I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private f(Landroid/text/Editable;)V
    .locals 5

    const-class v0, Lcom/apicloud/a/i/a/y/a/h$l;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/y/a/h$l;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/apicloud/a/i/a/y/a/h$l;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v4, v0, Lcom/apicloud/a/i/a/y/a/h$l;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/y/a/h;->a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g()I
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method private h()F
    .locals 2

    sget v0, Lcom/apicloud/a/i/a/y/a/h;->a:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/h;->o:Lcom/apicloud/a/i/a/y/a/a$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/apicloud/a/i/a/y/a/a$a;->a()F

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->k:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->k:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/apicloud/a/i/a/y/a/h;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-lt v3, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-ne v2, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/apicloud/a/i/a/y/a/h;->l:Landroid/text/SpannableStringBuilder;

    aget-object v5, v0, v3

    const/16 v6, 0x33

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/h;->n:Lcom/apicloud/a/i/a/y/a/a$c;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/apicloud/a/i/a/y/a/a$c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/h;->a([CII)V

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/y/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/y/a/h;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
