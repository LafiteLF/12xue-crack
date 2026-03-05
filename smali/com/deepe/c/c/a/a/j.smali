.class public Lcom/deepe/c/c/a/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/j$a;,
        Lcom/deepe/c/c/a/a/j$b;,
        Lcom/deepe/c/c/a/a/j$c;,
        Lcom/deepe/c/c/a/a/j$d;,
        Lcom/deepe/c/c/a/a/j$e;,
        Lcom/deepe/c/c/a/a/j$f;,
        Lcom/deepe/c/c/a/a/j$g;,
        Lcom/deepe/c/c/a/a/j$h;,
        Lcom/deepe/c/c/a/a/j$i;,
        Lcom/deepe/c/c/a/a/j$j;
    }
.end annotation


# static fields
.field private static synthetic A:[I

.field private static synthetic B:[I

.field private static synthetic C:[I

.field private static synthetic D:[I

.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z

.field private static final h:Z

.field private static final i:Z

.field private static final j:Z

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final q:Landroid/graphics/Canvas;

.field private final r:F

.field private s:Lcom/deepe/c/c/a/a/k;

.field private t:Lcom/deepe/c/c/a/a/j$g;

.field private u:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/deepe/c/c/a/a/j$g;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/deepe/c/c/a/a/k$ai;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/deepe/c/c/a/a/d$o;

.field private z:Lcom/deepe/c/c/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->f:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->h:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/deepe/c/c/a/a/j;->i:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_9

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    sput-boolean v1, Lcom/deepe/c/c/a/a/j;->j:Z

    const-string v0, "[\\n\\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->k:Ljava/util/regex/Pattern;

    const-string v0, "\\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->l:Ljava/util/regex/Pattern;

    const-string v0, "\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->m:Ljava/util/regex/Pattern;

    const-string v0, "^\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->n:Ljava/util/regex/Pattern;

    const-string v0, "\\s+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->o:Ljava/util/regex/Pattern;

    const-string v0, "\\s{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->p:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Canvas;FLcom/deepe/c/c/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->y:Lcom/deepe/c/c/a/a/d$o;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iput p2, p0, Lcom/deepe/c/c/a/a/j;->r:F

    iput-object p3, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ax;)F
    .locals 2

    new-instance v0, Lcom/deepe/c/c/a/a/j$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepe/c/c/a/a/j$j;-><init>(Lcom/deepe/c/c/a/a/j;Lcom/deepe/c/c/a/a/j$j;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    iget p1, v0, Lcom/deepe/c/c/a/a/j$j;->a:F

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [F

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-lt p2, v0, :cond_0

    return p1

    :cond_0
    aget v2, v1, p2

    add-float/2addr p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private static a(IF)I
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    shl-int/lit8 p1, p1, 0x18

    const v0, 0xffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v0, -0x7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Could not decode bad Data URL"

    invoke-static {v0, p1}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private a(Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)Landroid/graphics/Matrix;
    .locals 9

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/deepe/c/c/a/a;->a()Lcom/deepe/c/c/a/a$a;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v1, p1, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget v2, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    div-float/2addr v1, v2

    iget v2, p1, Lcom/deepe/c/c/a/a/k$b;->d:F

    iget v3, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    div-float/2addr v2, v3

    iget v3, p2, Lcom/deepe/c/c/a/a/k$b;->a:F

    neg-float v3, v3

    iget v4, p2, Lcom/deepe/c/c/a/a/k$b;->b:F

    neg-float v4, v4

    sget-object v5, Lcom/deepe/c/c/a/a;->b:Lcom/deepe/c/c/a/a;

    invoke-virtual {p3, v5}, Lcom/deepe/c/c/a/a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget p2, p1, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget p1, p1, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

    :cond_1
    invoke-virtual {p3}, Lcom/deepe/c/c/a/a;->b()Lcom/deepe/c/c/a/a$b;

    move-result-object v5

    sget-object v6, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_1
    iget v2, p1, Lcom/deepe/c/c/a/a/k$b;->c:F

    div-float/2addr v2, v1

    iget v5, p1, Lcom/deepe/c/c/a/a/k$b;->d:F

    div-float/2addr v5, v1

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->h()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/deepe/c/c/a/a;->a()Lcom/deepe/c/c/a/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x3

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_3
    iget v6, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    sub-float/2addr v6, v2

    goto :goto_2

    :cond_4
    iget v6, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    sub-float/2addr v6, v2

    div-float/2addr v6, v8

    :goto_2
    sub-float/2addr v3, v6

    :goto_3
    invoke-static {}, Lcom/deepe/c/c/a/a/j;->h()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/deepe/c/c/a/a;->a()Lcom/deepe/c/c/a/a$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result p3

    aget p3, v2, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    sub-float/2addr p2, v5

    goto :goto_4

    :pswitch_1
    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    sub-float/2addr p2, v5

    div-float/2addr p2, v8

    :goto_4
    sub-float/2addr v4, p2

    :goto_5
    iget p2, p1, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget p1, p1, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_5
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aj;Z)Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/j$g;-><init>(Lcom/deepe/c/c/a/a/j$g;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$bd;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-nez p2, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "<use> elements inside a <clipPath> cannot reference another <use>"

    invoke-static {v0, p2}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/deepe/c/c/a/a/k$bd;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    if-nez v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    aput-object p2, p1, v3

    const-string p2, "Use reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$g;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object v1

    :cond_2
    instance-of v2, v0, Lcom/deepe/c/c/a/a/k$aj;

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$g;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object v1

    :cond_3
    check-cast v0, Lcom/deepe/c/c/a/a/k$aj;

    invoke-direct {p0, v0, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Z)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$bd;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p2, Lcom/deepe/c/c/a/a/k$bd;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_5
    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    if-eqz v1, :cond_11

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    :cond_6
    instance-of p2, p1, Lcom/deepe/c/c/a/a/k$l;

    if-eqz p2, :cond_f

    move-object p2, p1

    check-cast p2, Lcom/deepe/c/c/a/a/k$l;

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$v;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$v;

    new-instance v2, Lcom/deepe/c/c/a/a/j$c;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v2, v0}, Lcom/deepe/c/c/a/a/j$c;-><init>(Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/j$c;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v2, :cond_c

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v2

    iput-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ab;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ab;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$ab;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$d;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$d;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$d;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$i;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$i;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$i;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$z;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$z;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$z;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_b
    move-object v0, v1

    :cond_c
    :goto_0
    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$l;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_e

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p2, Lcom/deepe/c/c/a/a/k$l;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_e
    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$l;->e:Landroid/graphics/Matrix;

    if-eqz v1, :cond_10

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$l;->e:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_f
    instance-of p2, p1, Lcom/deepe/c/c/a/a/k$av;

    if-eqz p2, :cond_13

    move-object p2, p1

    check-cast p2, Lcom/deepe/c/c/a/a/k$av;

    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$av;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    if-eqz v1, :cond_10

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    :goto_1
    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_10
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->z()Landroid/graphics/Path$FillType;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_11
    :goto_2
    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    if-eqz p2, :cond_12

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_12

    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_12
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$g;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object v0

    :cond_13
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$aj;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Invalid %s element found in clipPath definition"

    invoke-static {p1, p2}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_14
    :goto_3
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$g;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Float;Lcom/deepe/c/c/a/a/o$d;)Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/o$d;->b:Lcom/deepe/c/c/a/a/o$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x442f0000    # 700.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string p2, "cursive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :sswitch_1
    const-string p2, "serif"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_2

    :sswitch_2
    const-string p2, "fantasy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :sswitch_3
    const-string p2, "monospace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2

    :sswitch_4
    const-string p2, "sans-serif"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_2
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_4

    :goto_3
    const/4 p1, 0x0

    :goto_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5b97f43d -> :sswitch_4
        -0x5559f3fd -> :sswitch_3
        -0x407a00da -> :sswitch_2
        0x684317d -> :sswitch_1
        0x432c41c5 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/j$b;Lcom/deepe/c/c/a/a/j$b;Lcom/deepe/c/c/a/a/j$b;)Lcom/deepe/c/c/a/a/j$b;
    .locals 4

    iget v0, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget v1, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    iget v2, p2, Lcom/deepe/c/c/a/a/j$b;->a:F

    iget v3, p1, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/deepe/c/c/a/a/j$b;->b:F

    iget p1, p1, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float/2addr v3, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/j;->b(FFFF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget p1, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget v1, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    iget v2, p3, Lcom/deepe/c/c/a/a/j$b;->a:F

    iget v3, p2, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float/2addr v2, v3

    iget p3, p3, Lcom/deepe/c/c/a/a/j$b;->b:F

    iget v3, p2, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float/2addr p3, v3

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/deepe/c/c/a/a/j;->b(FFFF)F

    move-result p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return-object p2

    :cond_1
    if-nez p1, :cond_3

    iget p1, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    iget p1, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    :cond_2
    return-object p2

    :cond_3
    iget p1, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    neg-float p1, p1

    iput p1, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget p1, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    neg-float p1, p1

    iput p1, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    return-object p2
.end method

.method private a(Lcom/deepe/c/c/a/a/k$am;Lcom/deepe/c/c/a/a/j$g;)Lcom/deepe/c/c/a/a/j$g;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    instance-of v1, p1, Lcom/deepe/c/c/a/a/k$ak;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/deepe/c/c/a/a/k$ak;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$am;->v:Lcom/deepe/c/c/a/a/k$ai;

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    iput-object p1, p2, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iput-object p1, p2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    return-object p2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/k$ak;

    invoke-direct {p0, p2, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$am;->v:Lcom/deepe/c/c/a/a/k$ai;

    check-cast p1, Lcom/deepe/c/c/a/a/k$am;

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;)Lcom/deepe/c/c/a/a/k$b;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/j;->d()Lcom/deepe/c/c/a/a/k$b;

    move-result-object p2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result p2

    goto :goto_2

    :cond_3
    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    :goto_2
    new-instance p4, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p4, p1, v0, p3, p2}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    return-object p4
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v0, v0, Lcom/deepe/c/c/a/a/j$g;->f:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    sget-object p2, Lcom/deepe/c/c/a/a/j;->k:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/deepe/c/c/a/a/j;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/deepe/c/c/a/a/j;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    sget-object p2, Lcom/deepe/c/c/a/a/j;->n:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    sget-object p2, Lcom/deepe/c/c/a/a/j;->o:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object p2, Lcom/deepe/c/c/a/a/j;->p:Ljava/util/regex/Pattern;

    goto :goto_0
.end method

.method private a(FFFF)V
    .locals 1

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$c;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$c;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$c;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$c;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    sub-float/2addr p4, v0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method static synthetic a(FFFFFZZFFLcom/deepe/c/c/a/a/k$x;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/deepe/c/c/a/a/j;->b(FFFFFZZFFLcom/deepe/c/c/a/a/k$x;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    goto :goto_0

    :cond_0
    sget v0, Lcom/deepe/c/c/a/a/f;->b:I

    invoke-static {p1, p2, p3, v0}, Lcom/deepe/c/c/a/a/f;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting blend mode to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->g()[I

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_9
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_a
    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_b
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_c
    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_d
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    goto :goto_0

    :pswitch_e
    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->M:Lcom/deepe/c/c/a/a/o$n;

    sget-object v1, Lcom/deepe/c/c/a/a/o$n;->b:Lcom/deepe/c/c/a/a/o$n;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V
    .locals 4

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-virtual {v1, v0}, Lcom/deepe/c/c/a/a/o;->a(Z)V

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/d$n;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->y:Lcom/deepe/c/c/a/a/d$o;

    iget-object v3, v1, Lcom/deepe/c/c/a/a/d$n;->a:Lcom/deepe/c/c/a/a/d$q;

    invoke-static {v2, v3, p2}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/k$ak;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/deepe/c/c/a/a/d$n;->b:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    if-eqz v0, :cond_5

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$ak;->s:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V
    .locals 11

    const-wide/16 v0, 0x1000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->n:Lcom/deepe/c/c/a/a/k$f;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->n:Lcom/deepe/c/c/a/a/k$f;

    :cond_0
    const-wide/16 v0, 0x800

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->m:Ljava/lang/Float;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->m:Ljava/lang/Float;

    :cond_1
    const-wide/16 v0, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    sget-object v3, Lcom/deepe/c/c/a/a/k$f;->c:Lcom/deepe/c/c/a/a/k$f;

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    :cond_3
    const-wide/16 v3, 0x4

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    :cond_4
    const-wide/16 v3, 0x1805

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    invoke-direct {p0, p1, v2, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;ZLcom/deepe/c/c/a/a/k$an;)V

    :cond_5
    const-wide/16 v3, 0x2

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->c:Lcom/deepe/c/c/a/a/o$b;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->c:Lcom/deepe/c/c/a/a/o$b;

    :cond_6
    const-wide/16 v3, 0x8

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    sget-object v3, Lcom/deepe/c/c/a/a/k$f;->c:Lcom/deepe/c/c/a/a/k$f;

    if-eq v0, v3, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    :cond_8
    const-wide/16 v3, 0x10

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->f:Ljava/lang/Float;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->f:Ljava/lang/Float;

    :cond_9
    const-wide/16 v3, 0x1818

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    invoke-direct {p0, p1, v1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;ZLcom/deepe/c/c/a/a/k$an;)V

    :cond_a
    const-wide v3, 0x800000000L

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->M:Lcom/deepe/c/c/a/a/o$n;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->M:Lcom/deepe/c/c/a/a/o$n;

    :cond_b
    const-wide/16 v3, 0x20

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->g:Lcom/deepe/c/c/a/a/k$p;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->g:Lcom/deepe/c/c/a/a/k$p;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/o;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, p2, Lcom/deepe/c/c/a/a/o;->h:Lcom/deepe/c/c/a/a/o$g;

    iput-object v5, v0, Lcom/deepe/c/c/a/a/o;->h:Lcom/deepe/c/c/a/a/o$g;

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->i()[I

    move-result-object v0

    iget-object v5, p2, Lcom/deepe/c/c/a/a/o;->h:Lcom/deepe/c/c/a/a/o$g;

    invoke-virtual {v5}, Lcom/deepe/c/c/a/a/o$g;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_e
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_f
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_10
    :goto_3
    const-wide/16 v5, 0x80

    invoke-direct {p0, p2, v5, v6}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, p2, Lcom/deepe/c/c/a/a/o;->i:Lcom/deepe/c/c/a/a/o$h;

    iput-object v5, v0, Lcom/deepe/c/c/a/a/o;->i:Lcom/deepe/c/c/a/a/o$h;

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->j()[I

    move-result-object v0

    iget-object v5, p2, Lcom/deepe/c/c/a/a/o;->i:Lcom/deepe/c/c/a/a/o$h;

    invoke-virtual {v5}, Lcom/deepe/c/c/a/a/o$h;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    goto :goto_5

    :cond_11
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_12
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    :cond_13
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_14
    :goto_5
    const-wide/16 v3, 0x100

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->j:Ljava/lang/Float;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->j:Ljava/lang/Float;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->j:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_15
    const-wide/16 v3, 0x200

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->k:[Lcom/deepe/c/c/a/a/k$p;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->k:[Lcom/deepe/c/c/a/a/k$p;

    :cond_16
    const-wide/16 v3, 0x400

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->l:Lcom/deepe/c/c/a/a/k$p;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->l:Lcom/deepe/c/c/a/a/k$p;

    :cond_17
    const-wide/16 v3, 0x600

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->k:[Lcom/deepe/c/c/a/a/k$p;

    const/4 v3, 0x0

    if-nez v0, :cond_18

    :goto_6
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_9

    :cond_18
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->k:[Lcom/deepe/c/c/a/a/k$p;

    array-length v0, v0

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_19

    move v4, v0

    goto :goto_7

    :cond_19
    mul-int/lit8 v4, v0, 0x2

    :goto_7
    new-array v5, v4, [F

    const/4 v6, 0x0

    move v7, v1

    move v8, v6

    :goto_8
    if-lt v7, v4, :cond_1c

    cmpl-float v0, v8, v6

    if-nez v0, :cond_1a

    goto :goto_6

    :cond_1a
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->l:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    cmpg-float v3, v0, v6

    if-gez v3, :cond_1b

    rem-float/2addr v0, v8

    add-float/2addr v0, v8

    :cond_1b
    iget-object v3, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    invoke-direct {v4, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_9

    :cond_1c
    iget-object v9, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v9, v9, Lcom/deepe/c/c/a/a/o;->k:[Lcom/deepe/c/c/a/a/k$p;

    rem-int v10, v7, v0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v9

    aput v9, v5, v7

    aget v9, v5, v7

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_1d
    :goto_9
    const-wide/16 v3, 0x4000

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/j;->b()F

    move-result v0

    iget-object v3, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/o;->p:Lcom/deepe/c/c/a/a/k$p;

    iput-object v4, v3, Lcom/deepe/c/c/a/a/o;->p:Lcom/deepe/c/c/a/a/k$p;

    iget-object v3, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/o;->p:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/o;->p:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1e
    const-wide/16 v3, 0x2000

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->o:Ljava/util/List;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->o:Ljava/util/List;

    :cond_1f
    const-wide/32 v3, 0x8000

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x1

    cmpl-float v0, v0, v3

    const/high16 v3, 0x442f0000    # 700.0f

    const/high16 v4, 0x43c80000    # 400.0f

    const v5, 0x44098000    # 550.0f

    if-nez v0, :cond_22

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v7, v0, v6

    if-ltz v7, :cond_20

    cmpg-float v7, v0, v5

    if-gez v7, :cond_20

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_c

    :cond_20
    cmpl-float v5, v0, v5

    const v6, 0x443b8000    # 750.0f

    if-ltz v5, :cond_21

    cmpg-float v5, v0, v6

    if-gez v5, :cond_21

    goto :goto_b

    :cond_21
    cmpl-float v0, v0, v6

    if-ltz v0, :cond_26

    :goto_a
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_c

    :cond_22
    iget-object v0, p2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v6

    if-nez v0, :cond_25

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v6, 0x43af0000    # 350.0f

    cmpg-float v7, v0, v6

    if-gez v7, :cond_23

    :goto_b
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_c

    :cond_23
    cmpl-float v4, v0, v6

    if-ltz v4, :cond_24

    cmpg-float v4, v0, v5

    if-gez v4, :cond_24

    goto :goto_a

    :cond_24
    cmpl-float v3, v0, v5

    if-ltz v3, :cond_26

    const/high16 v3, 0x44610000    # 900.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_26

    goto :goto_a

    :cond_25
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    :goto_c
    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    :cond_26
    const-wide/32 v3, 0x10000

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    :cond_27
    const-wide/high16 v3, 0x8000000000000L

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    :cond_28
    const-wide/32 v3, 0x20000

    invoke-direct {p0, p2, v3, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    iput-object v3, v0, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    sget-object v4, Lcom/deepe/c/c/a/a/o$k;->d:Lcom/deepe/c/c/a/a/o$k;

    if-ne v3, v4, :cond_29

    move v3, v2

    goto :goto_d

    :cond_29
    move v3, v1

    :goto_d
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    sget-object v4, Lcom/deepe/c/c/a/a/o$k;->b:Lcom/deepe/c/c/a/a/o$k;

    if-ne v3, v4, :cond_2a

    move v3, v2

    goto :goto_e

    :cond_2a
    move v3, v1

    :goto_e
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->b:Z

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    sget-object v4, Lcom/deepe/c/c/a/a/o$k;->d:Lcom/deepe/c/c/a/a/o$k;

    if-ne v3, v4, :cond_2b

    move v3, v2

    goto :goto_f

    :cond_2b
    move v3, v1

    :goto_f
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/deepe/c/c/a/a/o;->t:Lcom/deepe/c/c/a/a/o$k;

    sget-object v4, Lcom/deepe/c/c/a/a/o$k;->b:Lcom/deepe/c/c/a/a/o$k;

    if-ne v3, v4, :cond_2c

    move v1, v2

    :cond_2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2d
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->u:Lcom/deepe/c/c/a/a/o$l;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->u:Lcom/deepe/c/c/a/a/o$l;

    :cond_2e
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    :cond_2f
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    :cond_30
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    :cond_31
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    :cond_32
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    :cond_33
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->B:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->B:Ljava/lang/Boolean;

    :cond_34
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->C:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->C:Ljava/lang/Boolean;

    :cond_35
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->x:Lcom/deepe/c/c/a/a/k$c;

    :cond_36
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    :cond_37
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->G:Lcom/deepe/c/c/a/a/o$b;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->G:Lcom/deepe/c/c/a/a/o$b;

    :cond_38
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    :cond_39
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->D:Lcom/deepe/c/c/a/a/k$an;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->D:Lcom/deepe/c/c/a/a/k$an;

    :cond_3a
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->E:Ljava/lang/Float;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->E:Ljava/lang/Float;

    :cond_3b
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->K:Lcom/deepe/c/c/a/a/k$an;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->K:Lcom/deepe/c/c/a/a/k$an;

    :cond_3c
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->L:Ljava/lang/Float;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->L:Ljava/lang/Float;

    :cond_3d
    const-wide v0, 0x2000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->N:Lcom/deepe/c/c/a/a/o$i;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->N:Lcom/deepe/c/c/a/a/o$i;

    :cond_3e
    const-wide v0, 0x4000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->O:Lcom/deepe/c/c/a/a/o$f;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->O:Lcom/deepe/c/c/a/a/o$f;

    :cond_3f
    const-wide v0, 0x8000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    :cond_40
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->Q:Lcom/deepe/c/c/a/a/o$c;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->Q:Lcom/deepe/c/c/a/a/o$c;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->Q:Lcom/deepe/c/c/a/a/o$c;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/o$c;)V

    :cond_41
    const-wide v0, 0x200000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->W:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->W:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->W:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_42
    const-wide v0, 0x10000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_43
    const-wide v0, 0x20000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_44
    const-wide v0, 0x40000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_45
    const-wide v0, 0x80000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_46
    const-wide v0, 0x100000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;)V

    :cond_47
    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->f:Z

    if-eqz v0, :cond_48

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->X:Lcom/deepe/c/c/a/a/b;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->X:Lcom/deepe/c/c/a/a/b;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->X:Lcom/deepe/c/c/a/a/b;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/b;->a(Lcom/deepe/c/c/a/a/b;)V

    :cond_48
    const-wide v0, 0x400000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->Y:Lcom/deepe/c/c/a/a/o$o;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->Y:Lcom/deepe/c/c/a/a/o$o;

    :cond_49
    const-wide v0, 0x800000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->Z:Lcom/deepe/c/c/a/a/o$e;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->Z:Lcom/deepe/c/c/a/a/o$e;

    :cond_4a
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->aa:Lcom/deepe/c/c/a/a/o$m;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->aa:Lcom/deepe/c/c/a/a/o$m;

    :cond_4b
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->e:Z

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/j;->b()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/j;->b()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_4c
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->ac:Lcom/deepe/c/c/a/a/k$p;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->ac:Lcom/deepe/c/c/a/a/k$p;

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->h:Z

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/o;->ac:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setWordSpacing(F)V

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->ac:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {p2, p0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setWordSpacing(F)V

    :cond_4d
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/j$g;ZLcom/deepe/c/c/a/a/k$an;)V
    .locals 2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->f:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    instance-of v1, p3, Lcom/deepe/c/c/a/a/k$f;

    if-eqz v1, :cond_1

    check-cast p3, Lcom/deepe/c/c/a/a/k$f;

    :goto_1
    iget p3, p3, Lcom/deepe/c/c/a/a/k$f;->a:I

    goto :goto_2

    :cond_1
    instance-of p3, p3, Lcom/deepe/c/c/a/a/k$g;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p3, p3, Lcom/deepe/c/c/a/a/o;->n:Lcom/deepe/c/c/a/a/k$f;

    goto :goto_1

    :goto_2
    invoke-static {p3, v0}, Lcom/deepe/c/c/a/a/j;->a(IF)I

    move-result p3

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    goto :goto_3

    :cond_2
    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aa;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Polygon render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$aa;->e:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aa;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$aa;->a:[F

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aa;->a:[F

    array-length v0, v0

    :cond_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$z;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_6
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$l;)V

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ab;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rect render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ab;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ab;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$ab;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ae;)V
    .locals 4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ae;->a:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->b:Lcom/deepe/c/c/a/a/k$p;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Svg render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p4, :cond_2

    iget-object p4, p1, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    if-eqz p4, :cond_1

    iget-object p4, p1, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iput-object p2, v0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v0, v0, Lcom/deepe/c/c/a/a/k$b;->b:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v1, v1, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    :cond_4
    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p2, p3, p4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object p3, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p3, p1, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p3, p3, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget p3, p3, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object p4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p4, p4, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget p4, p4, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    const/4 p3, 0x0

    :goto_1
    iput-object p3, p2, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result p2

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->w()V

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;Z)V

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ai;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->v:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->w:Ljava/util/Stack;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ai;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;)V

    :cond_0
    invoke-interface {p1}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->n()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$am;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;)V

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aj;)V
    .locals 7

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->v:Lcom/deepe/c/c/a/a/k$ai;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->w:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/k$b;->a:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/k$b;->b:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/k$b;->b()F

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v6, v6, Lcom/deepe/c/c/a/a/k$b;->b:F

    aput v6, v1, v2

    const/4 v2, 0x4

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v6}, Lcom/deepe/c/c/a/a/k$b;->b()F

    move-result v6

    aput v6, v1, v2

    const/4 v2, 0x5

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v6}, Lcom/deepe/c/c/a/a/k$b;->c()F

    move-result v6

    aput v6, v1, v2

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/k$b;->a:F

    const/4 v6, 0x6

    aput v2, v1, v6

    const/4 v2, 0x7

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$b;->c()F

    move-result p1

    aput p1, v1, v2

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/RectF;

    aget v0, v1, v3

    aget v2, v1, v4

    aget v3, v1, v3

    aget v4, v1, v4

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-le v5, v6, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->v:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$aj;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_2

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, p1}, Lcom/deepe/c/c/a/a/k$b;->a(FFFF)Lcom/deepe/c/c/a/a/k$b;

    move-result-object p1

    iput-object p1, v0, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_1

    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, p1}, Lcom/deepe/c/c/a/a/k$b;->a(FFFF)Lcom/deepe/c/c/a/a/k$b;

    move-result-object p1

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k$b;->a(Lcom/deepe/c/c/a/a/k$b;)V

    goto :goto_1

    :cond_3
    aget v0, v1, v5

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    aget v0, v1, v5

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_4
    aget v0, v1, v5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    aget v0, v1, v5

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_5
    add-int/lit8 v0, v5, 0x1

    aget v2, v1, v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    aget v2, v1, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    :cond_6
    aget v2, v1, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    aget v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_7
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    check-cast v1, Lcom/deepe/c/c/a/a/k$u;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/k$u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    instance-of v1, v0, Lcom/deepe/c/c/a/a/k$y;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/deepe/c/c/a/a/k$y;

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;Lcom/deepe/c/c/a/a/k$y;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;Lcom/deepe/c/c/a/a/k$y;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-object v6, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/deepe/c/c/a/a/k$y;->h:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/deepe/c/c/a/a/k$y;->h:Ljava/lang/String;

    invoke-direct {v0, v2, v7}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$y;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v8, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v9, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v10, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v10

    goto :goto_8

    :cond_5
    move v10, v7

    goto :goto_8

    :cond_6
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, v0, v8}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v3

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v9, v0, v8}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v9

    goto :goto_5

    :cond_8
    move v9, v7

    :goto_5
    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v10, v0, v8}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v10

    goto :goto_6

    :cond_9
    move v10, v7

    :goto_6
    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v11, v0, v8}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v8

    goto :goto_7

    :cond_a
    move v8, v7

    :goto_7
    iget-object v11, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v11, v11, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v12, v12, Lcom/deepe/c/c/a/a/k$b;->c:F

    mul-float/2addr v3, v12

    add-float/2addr v3, v11

    iget-object v11, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v11, v11, Lcom/deepe/c/c/a/a/k$b;->b:F

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v12, v12, Lcom/deepe/c/c/a/a/k$b;->d:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v11

    iget-object v11, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v11, v11, Lcom/deepe/c/c/a/a/k$b;->c:F

    mul-float/2addr v10, v11

    iget-object v11, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v11, v11, Lcom/deepe/c/c/a/a/k$b;->d:F

    mul-float/2addr v8, v11

    move/from16 v16, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v16

    :goto_8
    cmpl-float v11, v9, v7

    if-eqz v11, :cond_1b

    cmpl-float v11, v10, v7

    if-nez v11, :cond_b

    goto/16 :goto_12

    :cond_b
    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$y;->w:Lcom/deepe/c/c/a/a;

    if-eqz v11, :cond_c

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$y;->w:Lcom/deepe/c/c/a/a;

    goto :goto_9

    :cond_c
    sget-object v11, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    iget-object v12, v0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v12, Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v12}, Lcom/deepe/c/c/a/a/j$g;-><init>()V

    invoke-static {}, Lcom/deepe/c/c/a/a/o;->a()Lcom/deepe/c/c/a/a/o;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    iget-object v13, v12, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v13, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v12}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;Lcom/deepe/c/c/a/a/j$g;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v12

    iput-object v12, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v14, v2, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    iget-object v14, v2, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/16 v12, 0x8

    new-array v14, v12, [F

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v12, v12, Lcom/deepe/c/c/a/a/k$b;->a:F

    aput v12, v14, v5

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v12, v12, Lcom/deepe/c/c/a/a/k$b;->b:F

    aput v12, v14, v4

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v12}, Lcom/deepe/c/c/a/a/k$b;->b()F

    move-result v12

    const/4 v15, 0x2

    aput v12, v14, v15

    const/4 v12, 0x3

    iget-object v15, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v15, v15, Lcom/deepe/c/c/a/a/k$b;->b:F

    aput v15, v14, v12

    const/4 v12, 0x4

    iget-object v15, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v15}, Lcom/deepe/c/c/a/a/k$b;->b()F

    move-result v15

    aput v15, v14, v12

    const/4 v12, 0x5

    iget-object v15, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v15}, Lcom/deepe/c/c/a/a/k$b;->c()F

    move-result v15

    aput v15, v14, v12

    iget-object v12, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v12, v12, Lcom/deepe/c/c/a/a/k$b;->a:F

    const/4 v15, 0x6

    aput v12, v14, v15

    const/4 v12, 0x7

    iget-object v7, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a/k$b;->c()F

    move-result v7

    aput v7, v14, v12

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v7, Landroid/graphics/RectF;

    aget v12, v14, v5

    aget v13, v14, v4

    aget v15, v14, v5

    aget v5, v14, v4

    invoke-direct {v7, v12, v13, v15, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x6

    const/4 v15, 0x2

    :goto_a
    if-le v15, v5, :cond_d

    new-instance v12, Lcom/deepe/c/c/a/a/k$b;

    iget v5, v7, Landroid/graphics/RectF;->left:F

    iget v13, v7, Landroid/graphics/RectF;->top:F

    iget v14, v7, Landroid/graphics/RectF;->right:F

    iget v15, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    iget v15, v7, Landroid/graphics/RectF;->bottom:F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v15, v7

    invoke-direct {v12, v5, v13, v14, v15}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    goto :goto_b

    :cond_d
    aget v12, v14, v15

    iget v13, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    aget v12, v14, v15

    iput v12, v7, Landroid/graphics/RectF;->left:F

    :cond_e
    aget v12, v14, v15

    iget v13, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    aget v12, v14, v15

    iput v12, v7, Landroid/graphics/RectF;->right:F

    :cond_f
    add-int/lit8 v12, v15, 0x1

    aget v13, v14, v12

    iget v4, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v13, v4

    if-gez v4, :cond_10

    aget v4, v14, v12

    iput v4, v7, Landroid/graphics/RectF;->top:F

    :cond_10
    aget v4, v14, v12

    iget v13, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v13

    if-lez v4, :cond_11

    aget v4, v14, v12

    iput v4, v7, Landroid/graphics/RectF;->bottom:F

    :cond_11
    add-int/lit8 v15, v15, 0x2

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    iget v4, v12, Lcom/deepe/c/c/a/a/k$b;->a:F

    sub-float/2addr v4, v3

    div-float/2addr v4, v9

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, v12, Lcom/deepe/c/c/a/a/k$b;->b:F

    sub-float/2addr v4, v8

    div-float/2addr v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v8, v4

    invoke-virtual {v12}, Lcom/deepe/c/c/a/a/k$b;->b()F

    move-result v4

    invoke-virtual {v12}, Lcom/deepe/c/c/a/a/k$b;->c()F

    move-result v5

    new-instance v7, Lcom/deepe/c/c/a/a/k$b;

    const/4 v12, 0x0

    invoke-direct {v7, v12, v12, v9, v10}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    invoke-direct {v0, v6}, Lcom/deepe/c/c/a/a/j;->a(F)Z

    move-result v6

    :goto_c
    cmpg-float v12, v8, v5

    if-ltz v12, :cond_14

    if-eqz v6, :cond_13

    invoke-direct {v0, v2}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    return-void

    :cond_14
    move v12, v3

    :goto_d
    cmpg-float v13, v12, v4

    if-ltz v13, :cond_15

    add-float/2addr v8, v10

    goto :goto_c

    :cond_15
    iput v12, v7, Lcom/deepe/c/c/a/a/k$b;->a:F

    iput v8, v7, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    iget-object v13, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v13, v13, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v13, v13, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_16

    iget v13, v7, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v14, v7, Lcom/deepe/c/c/a/a/k$b;->b:F

    iget v15, v7, Lcom/deepe/c/c/a/a/k$b;->c:F

    move/from16 p2, v3

    iget v3, v7, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-direct {v0, v13, v14, v15, v3}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    goto :goto_e

    :cond_16
    move/from16 p2, v3

    :goto_e
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->x:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$y;->x:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v0, v7, v13, v11}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_10

    :cond_17
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    if-eqz v3, :cond_18

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto :goto_f

    :cond_18
    const/4 v3, 0x1

    :goto_f
    iget-object v13, v0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12, v8}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v13, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v13, v13, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget-object v14, v1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget v14, v14, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_19
    :goto_10
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$y;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    add-float/2addr v12, v9

    move/from16 v3, p2

    goto :goto_d

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/deepe/c/c/a/a/k$am;

    invoke-direct {v0, v13}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;)V

    goto :goto_11

    :cond_1b
    :goto_12
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-direct {p0, v1, v2, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$s;

    invoke-direct {p0, v0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$s;Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-direct {p0, v3, v2, v1}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$s;Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59ce07    # 0.2127f
        0x3f3710cb    # 0.7151f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
    .end array-data
.end method

.method private a(Lcom/deepe/c/c/a/a/k$al;Lcom/deepe/c/c/a/a/k$al;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_3

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    :cond_3
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$am;)V
    .locals 1

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$t;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$am;)V

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ae;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/deepe/c/c/a/a/k$ae;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ae;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$bd;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/deepe/c/c/a/a/k$bd;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$bd;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ar;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/deepe/c/c/a/a/k$ar;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ar;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$m;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/deepe/c/c/a/a/k$m;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$m;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$o;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/deepe/c/c/a/a/k$o;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$o;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$v;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/deepe/c/c/a/a/k$v;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$v;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ab;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/deepe/c/c/a/a/k$ab;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ab;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$d;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/deepe/c/c/a/a/k$d;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$d;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$i;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/deepe/c/c/a/a/k$i;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$i;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$q;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/deepe/c/c/a/a/k$q;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$q;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$aa;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/deepe/c/c/a/a/k$aa;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aa;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$z;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/deepe/c/c/a/a/k$z;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$z;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$av;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/deepe/c/c/a/a/k$av;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$av;)V

    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$am;Lcom/deepe/c/c/a/a/j$i;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ax;

    invoke-virtual {p2, v0}, Lcom/deepe/c/c/a/a/j$i;->a(Lcom/deepe/c/c/a/a/k$ax;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ay;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    check-cast p1, Lcom/deepe/c/c/a/a/k$ay;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ay;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    goto/16 :goto_9

    :cond_2
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$au;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TSpan render"

    invoke-static {v3, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    check-cast p1, Lcom/deepe/c/c/a/a/k$au;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->r()V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$au;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$au;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    instance-of v0, p2, Lcom/deepe/c/c/a/a/j$e;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-nez v1, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/deepe/c/c/a/a/j$e;

    iget v4, v4, Lcom/deepe/c/c/a/a/j$e;->b:F

    goto :goto_2

    :cond_4
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$au;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    :goto_2
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$au;->c:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$au;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$au;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    goto :goto_4

    :cond_6
    :goto_3
    move-object v5, p2

    check-cast v5, Lcom/deepe/c/c/a/a/j$e;

    iget v5, v5, Lcom/deepe/c/c/a/a/j$e;->c:F

    :goto_4
    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$au;->d:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$au;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$au;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v6, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v6

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v3

    :goto_6
    iget-object v7, p1, Lcom/deepe/c/c/a/a/k$au;->e:Ljava/util/List;

    if-eqz v7, :cond_a

    iget-object v7, p1, Lcom/deepe/c/c/a/a/k$au;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$au;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    move v3, v2

    :cond_a
    :goto_7
    move v2, v3

    move v3, v4

    goto :goto_8

    :cond_b
    move v2, v3

    move v5, v2

    move v6, v5

    :goto_8
    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->s()Lcom/deepe/c/c/a/a/o$j;

    move-result-object v1

    sget-object v4, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-eq v1, v4, :cond_d

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;)F

    move-result v4

    sget-object v7, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v1, v7, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    :cond_c
    sub-float/2addr v3, v4

    :cond_d
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$au;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$aj;

    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    if-eqz v0, :cond_e

    move-object v0, p2

    check-cast v0, Lcom/deepe/c/c/a/a/j$e;

    add-float/2addr v3, v6

    iput v3, v0, Lcom/deepe/c/c/a/a/j$e;->b:F

    add-float/2addr v5, v2

    iput v5, v0, Lcom/deepe/c/c/a/a/j$e;->c:F

    :cond_e
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$at;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$at;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v3, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$at;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$aj;

    invoke-direct {p0, v3}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$am;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v3, v0, Lcom/deepe/c/c/a/a/k$at;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object p1

    instance-of v3, p1, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v3, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/deepe/c/c/a/a/k$ax;

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/deepe/c/c/a/a/j$i;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$at;->a:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "Tref reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    :goto_9
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$am;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->x()V

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$bd;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    check-cast p1, Lcom/deepe/c/c/a/a/k$bd;

    invoke-direct {p0, p1, p3, p4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$bd;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/deepe/c/c/a/a/k$v;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/deepe/c/c/a/a/k$v;

    invoke-direct {p0, p1, p3, p4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$v;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/deepe/c/c/a/a/k$av;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/deepe/c/c/a/a/k$av;

    invoke-direct {p0, p1, p3, p4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$av;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/deepe/c/c/a/a/k$l;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/deepe/c/c/a/a/k$l;

    invoke-direct {p0, p1, p3, p4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$l;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Invalid %s element found in clipPath definition"

    invoke-static {p1, p2}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->y()V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ap;Lcom/deepe/c/c/a/a/k$ap;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    :cond_3
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    iput-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    :cond_4
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    if-nez v0, :cond_5

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    :cond_5
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ar;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ar;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ar;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$ar;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$as;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Symbol render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$as;->w:Lcom/deepe/c/c/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$as;->w:Lcom/deepe/c/c/a/a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iput-object p2, v1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v1, v1, Lcom/deepe/c/c/a/a/k$b;->b:F

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v3, v3, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    :cond_2
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$as;->x:Lcom/deepe/c/c/a/a/k$b;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$as;->x:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, v1, v2, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$as;->x:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v0, v0, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v1, v1, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p2, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;Z)V

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$av;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Text render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->r()V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    :goto_5
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->s()Lcom/deepe/c/c/a/a/o$j;

    move-result-object v0

    sget-object v5, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-eq v0, v5, :cond_b

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;)F

    move-result v5

    sget-object v6, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v0, v6, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    :cond_a
    sub-float/2addr v1, v5

    :cond_b
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v0, :cond_c

    new-instance v0, Lcom/deepe/c/c/a/a/j$h;

    invoke-direct {v0, p0, v1, v3}, Lcom/deepe/c/c/a/a/j$h;-><init>(Lcom/deepe/c/c/a/a/j;FF)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    new-instance v5, Lcom/deepe/c/c/a/a/k$b;

    iget-object v6, v0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_c
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v0

    new-instance v5, Lcom/deepe/c/c/a/a/j$e;

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v1, v3}, Lcom/deepe/c/c/a/a/j$e;-><init>(Lcom/deepe/c/c/a/a/j;FF)V

    invoke-direct {p0, p1, v5}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_d
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$av;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 9

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    :goto_5
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v5, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-eq v1, v5, :cond_b

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;)F

    move-result v1

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v6, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v5, v6, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    :cond_a
    sub-float/2addr v0, v1

    :cond_b
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_c

    new-instance v1, Lcom/deepe/c/c/a/a/j$h;

    invoke-direct {v1, p0, v0, v3}, Lcom/deepe/c/c/a/a/j$h;-><init>(Lcom/deepe/c/c/a/a/j;FF)V

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    new-instance v5, Lcom/deepe/c/c/a/a/k$b;

    iget-object v6, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_c
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/deepe/c/c/a/a/j$f;

    add-float/2addr v0, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/deepe/c/c/a/a/j$f;-><init>(Lcom/deepe/c/c/a/a/j;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->z()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V
    .locals 4

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$ax;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/k$am;

    instance-of v3, v2, Lcom/deepe/c/c/a/a/k$bb;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/deepe/c/c/a/a/k$bb;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/deepe/c/c/a/a/j$i;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;Lcom/deepe/c/c/a/a/j$i;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ax;Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$ax;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/k$am;

    instance-of v3, v2, Lcom/deepe/c/c/a/a/k$ax;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/deepe/c/c/a/a/k$ax;

    invoke-direct {p0, v2, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/deepe/c/c/a/a/k$bb;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/deepe/c/c/a/a/k$bb;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/k$bb;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lcom/deepe/c/c/a/a/k$ay;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TextPath render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->r()V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$ay;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$ay;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$ay;->a:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "TextPath reference \'%s\' not found"

    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v1, Lcom/deepe/c/c/a/a/k$v;

    new-instance v2, Lcom/deepe/c/c/a/a/j$c;

    iget-object v3, v1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v2, v3}, Lcom/deepe/c/c/a/a/j$c;-><init>(Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/j$c;->a()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, v1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ay;->b:Lcom/deepe/c/c/a/a/k$p;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ay;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->s()Lcom/deepe/c/c/a/a/o$j;

    move-result-object v1

    sget-object v4, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-eq v1, v4, :cond_6

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;)F

    move-result v4

    sget-object v5, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v1, v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    :cond_5
    sub-float/2addr v0, v4

    :cond_6
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$ay;->h()Lcom/deepe/c/c/a/a/k$ba;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$aj;

    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    new-instance v4, Lcom/deepe/c/c/a/a/j$d;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/deepe/c/c/a/a/j$d;-><init>(Lcom/deepe/c/c/a/a/j;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_7
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$bd;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Use render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->c:Lcom/deepe/c/c/a/a/k$p;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$bd;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v3, :cond_7

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :cond_7
    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;)V

    instance-of v2, v1, Lcom/deepe/c/c/a/a/k$ae;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    check-cast v1, Lcom/deepe/c/c/a/a/k$ae;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {p0, v3, v3, v2, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v2

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;)V

    :goto_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    goto :goto_4

    :cond_8
    instance-of v2, v1, Lcom/deepe/c/c/a/a/k$as;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$bd;->e:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_2

    :cond_9
    new-instance v2, Lcom/deepe/c/c/a/a/k$p;

    sget-object v5, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    invoke-direct {v2, v4, v5}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    :goto_2
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v5, :cond_a

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$bd;->f:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_3

    :cond_a
    new-instance v5, Lcom/deepe/c/c/a/a/k$p;

    sget-object v6, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    invoke-direct {v5, v4, v6}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    move-object v4, v5

    :goto_3
    invoke-direct {p0, v3, v3, v2, v4}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;Lcom/deepe/c/c/a/a/k$p;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v2

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    check-cast v1, Lcom/deepe/c/c/a/a/k$as;

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$as;Lcom/deepe/c/c/a/a/k$b;)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;)V

    :goto_4
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->n()V

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$bd;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->b:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$bd;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$bd;->a:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, p2}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$d;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Circle render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$d;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$d;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$d;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$d;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$d;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$i;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ellipse render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$i;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$i;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$i;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$i;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$i;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$i;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$i;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$j;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$j;->u:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p2}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Gradient reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lcom/deepe/c/c/a/a/k$j;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Gradient href attributes must point to other gradient elements"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in gradient href attribute \'%s\'"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object p2, v0

    check-cast p2, Lcom/deepe/c/c/a/a/k$j;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$j;->b:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->b:Ljava/lang/Boolean;

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->c:Landroid/graphics/Matrix;

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$j;->c:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->c:Landroid/graphics/Matrix;

    :cond_4
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->d:Lcom/deepe/c/c/a/a/k$k;

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$j;->d:Lcom/deepe/c/c/a/a/k$k;

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->d:Lcom/deepe/c/c/a/a/k$k;

    :cond_5
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    :cond_6
    :try_start_0
    instance-of v1, p1, Lcom/deepe/c/c/a/a/k$al;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/deepe/c/c/a/a/k$al;

    check-cast v0, Lcom/deepe/c/c/a/a/k$al;

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$al;Lcom/deepe/c/c/a/a/k$al;)V

    goto :goto_0

    :cond_7
    move-object v1, p1

    check-cast v1, Lcom/deepe/c/c/a/a/k$ap;

    check-cast v0, Lcom/deepe/c/c/a/a/k$ap;

    invoke-direct {p0, v1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ap;Lcom/deepe/c/c/a/a/k$ap;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$j;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$j;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$j;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$l;)V
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    const-string v1, "Marker reference \'%s\' not found"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$l;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/deepe/c/c/a/a/k$r;

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v0, v2

    :goto_0
    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$l;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Lcom/deepe/c/c/a/a/k$r;

    goto :goto_1

    :cond_3
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v5, v2

    :goto_1
    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$l;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Lcom/deepe/c/c/a/a/k$r;

    goto :goto_2

    :cond_5
    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v6, v2

    :goto_2
    instance-of v1, p1, Lcom/deepe/c/c/a/a/k$v;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/deepe/c/c/a/a/j$a;

    check-cast p1, Lcom/deepe/c/c/a/a/k$v;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v1, p0, p1}, Lcom/deepe/c/c/a/a/j$a;-><init>(Lcom/deepe/c/c/a/a/j;Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/j$a;->a()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_7
    instance-of v1, p1, Lcom/deepe/c/c/a/a/k$q;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/deepe/c/c/a/a/k$q;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$q;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_8
    check-cast p1, Lcom/deepe/c/c/a/a/k$z;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$z;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v8, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v8, v8, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v9, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v9, v9, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iput-object v2, v9, Lcom/deepe/c/c/a/a/o;->A:Ljava/lang/String;

    iput-object v2, v8, Lcom/deepe/c/c/a/a/o;->z:Ljava/lang/String;

    iput-object v2, v7, Lcom/deepe/c/c/a/a/o;->y:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/j$b;

    invoke-direct {p0, v0, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$r;Lcom/deepe/c/c/a/a/j$b;)V

    :cond_b
    if-eqz v5, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/j$b;

    move v3, v4

    :goto_4
    add-int/lit8 v7, v1, -0x1

    if-lt v3, v7, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepe/c/c/a/a/j$b;

    iget-boolean v8, v2, Lcom/deepe/c/c/a/a/j$b;->e:Z

    if-eqz v8, :cond_d

    invoke-direct {p0, v0, v2, v7}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$b;Lcom/deepe/c/c/a/a/j$b;Lcom/deepe/c/c/a/a/j$b;)Lcom/deepe/c/c/a/a/j$b;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v2

    :goto_5
    invoke-direct {p0, v5, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$r;Lcom/deepe/c/c/a/a/j$b;)V

    move-object v2, v7

    goto :goto_4

    :cond_e
    :goto_6
    if-eqz v6, :cond_f

    sub-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$b;

    invoke-direct {p0, v6, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$r;Lcom/deepe/c/c/a/a/j$b;)V

    :cond_f
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$l;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$l;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$l;->e:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ab;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ab;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$ab;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$d;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$d;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$d;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$i;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$i;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$i;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$z;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$z;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$z;)Landroid/graphics/Path;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->z()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_7
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$m;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " render"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$m;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$m;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;Z)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$o;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Image render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/k$p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->w:Lcom/deepe/c/c/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$o;->w:Lcom/deepe/c/c/a/a;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    :goto_0
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$o;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/deepe/c/c/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$o;->a:Ljava/lang/String;

    aput-object p1, v1, v0

    const-string p1, "Could not locate image \'%s\'"

    invoke-static {p1, v1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance v3, Lcom/deepe/c/c/a/a/k$b;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v4, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$o;->f:Landroid/graphics/Matrix;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$o;->f:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_8
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$o;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$o;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    goto :goto_1

    :cond_9
    move v4, v6

    :goto_1
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$o;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v5, :cond_a

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$o;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    goto :goto_2

    :cond_a
    move v5, v6

    :goto_2
    iget-object v7, p1, Lcom/deepe/c/c/a/a/k$o;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v7, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v7

    iget-object v8, p1, Lcom/deepe/c/c/a/a/k$o;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v8, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v8

    iget-object v9, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    new-instance v10, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v10, v4, v5, v7, v8}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v10, v9, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v4, v4, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v5, v5, Lcom/deepe/c/c/a/a/k$b;->b:F

    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v7, v7, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget-object v8, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v8, v8, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget v8, v8, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    :cond_b
    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iput-object v4, p1, Lcom/deepe/c/c/a/a/k$o;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v4

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->w()V

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, v7, v3, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/o;->N:Lcom/deepe/c/c/a/a/o$i;

    sget-object v5, Lcom/deepe/c/c/a/a/o$i;->c:Lcom/deepe/c/c/a/a/o$i;

    if-ne v3, v5, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    :goto_3
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v4, :cond_d

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_d
    :goto_4
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$q;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Line render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v0, v0, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$q;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$q;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$l;)V

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$r;Lcom/deepe/c/c/a/a/j$b;)V
    .locals 11

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->f:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p2, Lcom/deepe/c/c/a/a/j$b;->d:F

    float-to-double v2, v0

    iget v0, p2, Lcom/deepe/c/c/a/a/j$b;->c:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-boolean v2, p1, Lcom/deepe/c/c/a/a/k$r;->a:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->g:Lcom/deepe/c/c/a/a/k$p;

    iget v3, p0, Lcom/deepe/c/c/a/a/j;->r:F

    invoke-virtual {v2, v3}, Lcom/deepe/c/c/a/a/k$p;->a(F)F

    move-result v2

    :goto_1
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v3

    iput-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p2, Lcom/deepe/c/c/a/a/j$b;->a:F

    iget p2, p2, Lcom/deepe/c/c/a/a/j$b;->b:F

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$r;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$r;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {p2, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->d:Lcom/deepe/c/c/a/a/k$p;

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$r;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$r;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v5, :cond_7

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$r;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    :cond_7
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$r;->x:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v5, :cond_e

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$r;->x:Lcom/deepe/c/c/a/a/k$b;

    iget v5, v5, Lcom/deepe/c/c/a/a/k$b;->c:F

    div-float v5, v2, v5

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$r;->x:Lcom/deepe/c/c/a/a/k$b;

    iget v6, v6, Lcom/deepe/c/c/a/a/k$b;->d:F

    div-float v6, v4, v6

    iget-object v7, p1, Lcom/deepe/c/c/a/a/k$r;->w:Lcom/deepe/c/c/a/a;

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/deepe/c/c/a/a/k$r;->w:Lcom/deepe/c/c/a/a;

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    :goto_5
    sget-object v8, Lcom/deepe/c/c/a/a;->b:Lcom/deepe/c/c/a/a;

    invoke-virtual {v7, v8}, Lcom/deepe/c/c/a/a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a;->b()Lcom/deepe/c/c/a/a$b;

    move-result-object v8

    sget-object v9, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    if-ne v8, v9, :cond_9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_6

    :cond_9
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_6
    move v6, v5

    :cond_a
    neg-float p2, p2

    mul-float/2addr p2, v5

    neg-float v0, v0

    mul-float/2addr v0, v6

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$r;->x:Lcom/deepe/c/c/a/a/k$b;

    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    mul-float/2addr p2, v5

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$r;->x:Lcom/deepe/c/c/a/a/k$b;

    iget v0, v0, Lcom/deepe/c/c/a/a/k$b;->d:F

    mul-float/2addr v0, v6

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->h()[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a;->a()Lcom/deepe/c/c/a/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_c

    const/4 v9, 0x4

    if-eq v8, v9, :cond_b

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c

    const/4 v9, 0x7

    if-eq v8, v9, :cond_b

    const/16 v9, 0x9

    if-eq v8, v9, :cond_c

    const/16 v9, 0xa

    if-eq v8, v9, :cond_b

    move p2, v1

    goto :goto_8

    :cond_b
    sub-float p2, v2, p2

    goto :goto_7

    :cond_c
    sub-float p2, v2, p2

    div-float/2addr p2, v10

    :goto_7
    sub-float p2, v1, p2

    :goto_8
    invoke-static {}, Lcom/deepe/c/c/a/a/j;->h()[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a;->a()Lcom/deepe/c/c/a/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    sub-float v0, v4, v0

    goto :goto_9

    :pswitch_1
    sub-float v0, v4, v0

    div-float/2addr v0, v10

    :goto_9
    sub-float/2addr v1, v0

    :goto_a
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p2, v1, v2, v4}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    :cond_d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_e
    neg-float p2, p2

    neg-float v0, v0

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-direct {p0, v1, v1, v2, v4}, Lcom/deepe/c/c/a/a/j;->a(FFFF)V

    :cond_f
    :goto_b
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;Z)V

    if-eqz p2, :cond_10

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_10
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/deepe/c/c/a/a/k$s;Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mask render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->a:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p3, Lcom/deepe/c/c/a/a/k$b;->c:F

    :goto_1
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    goto :goto_3

    :cond_2
    iget v4, p3, Lcom/deepe/c/c/a/a/k$b;->d:F

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    const v4, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$s;->e:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0, v3}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v5, :cond_5

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$s;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0, v3}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v4

    :cond_5
    iget v5, p3, Lcom/deepe/c/c/a/a/k$b;->c:F

    mul-float/2addr v1, v5

    iget v5, p3, Lcom/deepe/c/c/a/a/k$b;->d:F

    mul-float/2addr v4, v5

    :goto_3
    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a

    cmpl-float v1, v4, v5

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->l()V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iput-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/deepe/c/c/a/a/o;->m:Ljava/lang/Float;

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$s;->b:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$s;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v0

    :cond_7
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v4, p3, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget v4, p3, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ai;Z)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_9

    invoke-direct {p0, p2, p3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    :cond_9
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    :cond_a
    :goto_4
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$v;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Path render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v0, v0, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v0, v0, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    new-instance v0, Lcom/deepe/c/c/a/a/j$c;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/j$c;-><init>(Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/j$c;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_5
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->v()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_6
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$l;)V

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$v;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    new-instance v0, Lcom/deepe/c/c/a/a/j$c;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/j$c;-><init>(Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/j$c;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$v;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->z()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$y;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$y;->u:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p2}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Pattern reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v3, v0, Lcom/deepe/c/c/a/a/k$y;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Pattern href attributes must point to other pattern elements"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in pattern href attribute \'%s\'"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v0, Lcom/deepe/c/c/a/a/k$y;

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->a:Ljava/lang/Boolean;

    :cond_3
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->b:Ljava/lang/Boolean;

    :cond_4
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    if-nez p2, :cond_5

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->c:Landroid/graphics/Matrix;

    :cond_5
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    if-nez p2, :cond_6

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->d:Lcom/deepe/c/c/a/a/k$p;

    :cond_6
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    if-nez p2, :cond_7

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->e:Lcom/deepe/c/c/a/a/k$p;

    :cond_7
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    if-nez p2, :cond_8

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->f:Lcom/deepe/c/c/a/a/k$p;

    :cond_8
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    if-nez p2, :cond_9

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->g:Lcom/deepe/c/c/a/a/k$p;

    :cond_9
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->i:Ljava/util/List;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->i:Ljava/util/List;

    :cond_a
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->x:Lcom/deepe/c/c/a/a/k$b;

    if-nez p2, :cond_b

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->x:Lcom/deepe/c/c/a/a/k$b;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->x:Lcom/deepe/c/c/a/a/k$b;

    :cond_b
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->w:Lcom/deepe/c/c/a/a;

    if-nez p2, :cond_c

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->w:Lcom/deepe/c/c/a/a;

    iput-object p2, p1, Lcom/deepe/c/c/a/a/k$y;->w:Lcom/deepe/c/c/a/a;

    :cond_c
    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->h:Ljava/lang/String;

    if-eqz p2, :cond_d

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$y;->h:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$y;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private a(Lcom/deepe/c/c/a/a/k$z;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PolyLine render"

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v1, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->t()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->e:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$z;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    array-length v0, v0

    :cond_4
    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$z;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->v()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Landroid/graphics/Path;)V

    :cond_6
    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-boolean v2, v2, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Path;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$l;)V

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/j$g;-><init>(Lcom/deepe/c/c/a/a/j$g;)V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-void
.end method

.method private a(ZLcom/deepe/c/c/a/a/k$ac;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x180000000L

    const-wide v4, 0x100000000L

    const-wide v6, 0x80000000L

    iget-object v8, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, v8, v6, v7}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v6

    if-eqz p1, :cond_3

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v7, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->I:Lcom/deepe/c/c/a/a/k$an;

    iput-object v7, v6, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->I:Lcom/deepe/c/c/a/a/k$an;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v6, Lcom/deepe/c/c/a/a/j$g;->b:Z

    :cond_1
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, v0, v4, v5}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->J:Ljava/lang/Float;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    :cond_2
    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, p2, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v7, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->I:Lcom/deepe/c/c/a/a/k$an;

    iput-object v7, v6, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->I:Lcom/deepe/c/c/a/a/k$an;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, v6, Lcom/deepe/c/c/a/a/j$g;->c:Z

    :cond_5
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, v0, v4, v5}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->J:Ljava/lang/Float;

    iput-object v1, v0, Lcom/deepe/c/c/a/a/o;->f:Ljava/lang/Float;

    :cond_6
    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$ac;->r:Lcom/deepe/c/c/a/a/o;

    invoke-direct {p0, p2, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/o;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    :goto_2
    invoke-direct {p0, p2, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;ZLcom/deepe/c/c/a/a/k$an;)V

    :cond_7
    return-void
.end method

.method private a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$al;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$al;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$al;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$al;->b:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$al;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget-object v6, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    :goto_1
    const/4 v7, 0x0

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v3, :cond_7

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v8, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v9, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    goto :goto_4

    :cond_5
    sget-object v10, Lcom/deepe/c/c/a/a/k$p;->d:Lcom/deepe/c/c/a/a/k$p;

    :goto_4
    invoke-virtual {v10, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v10

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_6

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v11, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v11

    goto :goto_5

    :cond_6
    move v11, v7

    :goto_5
    move v13, v8

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    goto :goto_a

    :cond_7
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$al;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v8, v0, v9}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v8

    goto :goto_6

    :cond_8
    move v8, v7

    :goto_6
    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$al;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v10, v0, v9}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v10

    goto :goto_7

    :cond_9
    move v10, v7

    :goto_7
    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$al;->h:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v11, v0, v9}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v11

    goto :goto_8

    :cond_a
    move v11, v9

    :goto_8
    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v12, :cond_b

    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$al;->i:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v12, v0, v9}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v9

    goto :goto_9

    :cond_b
    move v9, v7

    :goto_9
    move v13, v8

    move/from16 v16, v9

    move v14, v10

    move v15, v11

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    invoke-direct {v0, v2}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v8

    iput-object v8, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_c

    iget v3, v1, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v9, v1, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget v1, v1, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$al;->c:Landroid/graphics/Matrix;

    if-eqz v1, :cond_d

    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$al;->c:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_d
    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$al;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    iget-object v1, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    if-eqz p1, :cond_e

    iput-boolean v5, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    goto :goto_b

    :cond_e
    iput-boolean v5, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    :goto_b
    return-void

    :cond_f
    new-array v3, v1, [I

    new-array v9, v1, [F

    const/high16 v10, -0x40800000    # -1.0f

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$al;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_15

    cmpl-float v5, v13, v15

    if-nez v5, :cond_10

    cmpl-float v5, v14, v16

    if-eqz v5, :cond_11

    :cond_10
    if-ne v1, v4, :cond_12

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    sub-int/2addr v1, v4

    aget v1, v3, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_12
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v4, v2, Lcom/deepe/c/c/a/a/k$al;->d:Lcom/deepe/c/c/a/a/k$k;

    if-eqz v4, :cond_14

    iget-object v4, v2, Lcom/deepe/c/c/a/a/k$al;->d:Lcom/deepe/c/c/a/a/k$k;

    sget-object v5, Lcom/deepe/c/c/a/a/k$k;->b:Lcom/deepe/c/c/a/a/k$k;

    if-ne v4, v5, :cond_13

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_d

    :cond_13
    iget-object v2, v2, Lcom/deepe/c/c/a/a/k$al;->d:Lcom/deepe/c/c/a/a/k$k;

    sget-object v4, Lcom/deepe/c/c/a/a/k$k;->c:Lcom/deepe/c/c/a/a/k$k;

    if-ne v2, v4, :cond_14

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_14
    :goto_d
    move-object/from16 v19, v1

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    new-instance v1, Landroid/graphics/LinearGradient;

    move-object v12, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(F)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_15
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/deepe/c/c/a/a/k$am;

    check-cast v12, Lcom/deepe/c/c/a/a/k$ad;

    iget-object v4, v12, Lcom/deepe/c/c/a/a/k$ad;->a:Ljava/lang/Float;

    if-eqz v4, :cond_16

    iget-object v4, v12, Lcom/deepe/c/c/a/a/k$ad;->a:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_e

    :cond_16
    move v4, v7

    :goto_e
    if-eqz v5, :cond_18

    cmpl-float v18, v4, v10

    if-ltz v18, :cond_17

    goto :goto_f

    :cond_17
    aput v10, v9, v5

    goto :goto_10

    :cond_18
    :goto_f
    aput v4, v9, v5

    move v10, v4

    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    iget-object v4, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0, v4, v12}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    iget-object v4, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/o;->D:Lcom/deepe/c/c/a/a/k$an;

    check-cast v4, Lcom/deepe/c/c/a/a/k$f;

    if-nez v4, :cond_19

    sget-object v4, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    :cond_19
    iget v4, v4, Lcom/deepe/c/c/a/a/k$f;->a:I

    iget-object v12, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v12, v12, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v12, v12, Lcom/deepe/c/c/a/a/o;->E:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v4, v12}, Lcom/deepe/c/c/a/a/j;->a(IF)I

    move-result v4

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    const/4 v4, 0x1

    goto/16 :goto_c
.end method

.method private a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$ap;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$ap;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$ap;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$ap;->b:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/deepe/c/c/a/a/k$ap;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget-object v6, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    :goto_1
    const/4 v7, 0x0

    if-eqz v3, :cond_a

    new-instance v8, Lcom/deepe/c/c/a/a/k$p;

    const/high16 v9, 0x42480000    # 50.0f

    sget-object v10, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    invoke-direct {v8, v9, v10}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v9, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v9

    :goto_2
    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v10, :cond_4

    iget-object v10, v2, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v10, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v10

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v10

    :goto_3
    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_5

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    :cond_5
    invoke-virtual {v8, v0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v8

    sget-boolean v11, Lcom/deepe/c/c/a/a/j;->j:Z

    if-eqz v11, :cond_9

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_6

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v11, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v11

    goto :goto_4

    :cond_6
    move v11, v9

    :goto_4
    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v12, :cond_7

    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v12, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v12

    goto :goto_5

    :cond_7
    move v12, v10

    :goto_5
    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v13, :cond_8

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v13, v0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v13

    goto :goto_6

    :cond_8
    move v13, v7

    :goto_6
    move v15, v11

    move/from16 v16, v12

    move/from16 v17, v13

    goto :goto_7

    :cond_9
    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_7
    move v12, v8

    move v8, v9

    goto/16 :goto_d

    :cond_a
    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_b

    iget-object v8, v2, Lcom/deepe/c/c/a/a/k$ap;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v8, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v8

    goto :goto_8

    :cond_b
    move v8, v9

    :goto_8
    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v11, :cond_c

    iget-object v11, v2, Lcom/deepe/c/c/a/a/k$ap;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v11, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v11

    goto :goto_9

    :cond_c
    move v11, v9

    :goto_9
    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v12, :cond_d

    iget-object v12, v2, Lcom/deepe/c/c/a/a/k$ap;->h:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v12, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v12

    goto :goto_a

    :cond_d
    move v12, v9

    :goto_a
    sget-boolean v13, Lcom/deepe/c/c/a/a/j;->j:Z

    if-eqz v13, :cond_11

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v13, :cond_e

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$ap;->i:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v13, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v13

    goto :goto_b

    :cond_e
    move v13, v9

    :goto_b
    iget-object v14, v2, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v14, :cond_f

    iget-object v9, v2, Lcom/deepe/c/c/a/a/k$ap;->j:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v9, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v9

    :cond_f
    iget-object v14, v2, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v14, :cond_10

    iget-object v14, v2, Lcom/deepe/c/c/a/a/k$ap;->k:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v14, v0, v10}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v10

    goto :goto_c

    :cond_10
    move v10, v7

    :goto_c
    move/from16 v16, v9

    move/from16 v17, v10

    move v10, v11

    move v15, v13

    goto :goto_d

    :cond_11
    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    move v10, v11

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    invoke-direct {v0, v2}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v9

    iput-object v9, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_12

    iget v3, v1, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v11, v1, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v9, v3, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget v1, v1, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v9, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_12
    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$ap;->c:Landroid/graphics/Matrix;

    if-eqz v1, :cond_13

    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$ap;->c:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_13
    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$ap;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    iget-object v1, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    if-eqz p1, :cond_14

    iput-boolean v5, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    goto :goto_e

    :cond_14
    iput-boolean v5, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    :goto_e
    return-void

    :cond_15
    sget-boolean v3, Lcom/deepe/c/c/a/a/j;->j:Z

    const/4 v11, 0x0

    if-eqz v3, :cond_16

    new-array v3, v1, [J

    move-object/from16 v21, v3

    move-object/from16 v18, v11

    goto :goto_f

    :cond_16
    new-array v3, v1, [I

    move-object/from16 v18, v3

    move-object/from16 v21, v11

    :goto_f
    new-array v3, v1, [F

    const/high16 v11, -0x40800000    # -1.0f

    iget-object v13, v2, Lcom/deepe/c/c/a/a/k$ap;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1c

    cmpl-float v5, v12, v7

    if-eqz v5, :cond_1b

    if-ne v1, v4, :cond_17

    goto :goto_13

    :cond_17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v4, v2, Lcom/deepe/c/c/a/a/k$ap;->d:Lcom/deepe/c/c/a/a/k$k;

    if-eqz v4, :cond_19

    iget-object v4, v2, Lcom/deepe/c/c/a/a/k$ap;->d:Lcom/deepe/c/c/a/a/k$k;

    sget-object v5, Lcom/deepe/c/c/a/a/k$k;->b:Lcom/deepe/c/c/a/a/k$k;

    if-ne v4, v5, :cond_18

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_11

    :cond_18
    iget-object v2, v2, Lcom/deepe/c/c/a/a/k$ap;->d:Lcom/deepe/c/c/a/a/k$k;

    sget-object v4, Lcom/deepe/c/c/a/a/k$k;->c:Lcom/deepe/c/c/a/a/k$k;

    if-ne v2, v4, :cond_19

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_19
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    sget-boolean v2, Lcom/deepe/c/c/a/a/j;->j:Z

    if-eqz v2, :cond_1a

    new-instance v2, Landroid/graphics/RadialGradient;

    move-object v14, v2

    move/from16 v18, v8

    move/from16 v19, v10

    move/from16 v20, v12

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    invoke-direct/range {v14 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFFFFF[J[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_12

    :cond_1a
    new-instance v2, Landroid/graphics/RadialGradient;

    move-object v14, v2

    move v15, v8

    move/from16 v16, v10

    move/from16 v17, v12

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_12
    invoke-virtual {v2, v9}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(F)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1b
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    sub-int/2addr v1, v4

    aget v1, v18, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_1c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/deepe/c/c/a/a/k$am;

    check-cast v14, Lcom/deepe/c/c/a/a/k$ad;

    iget-object v4, v14, Lcom/deepe/c/c/a/a/k$ad;->a:Ljava/lang/Float;

    if-eqz v4, :cond_1d

    iget-object v4, v14, Lcom/deepe/c/c/a/a/k$ad;->a:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_14

    :cond_1d
    move v4, v7

    :goto_14
    if-eqz v5, :cond_1f

    cmpl-float v20, v4, v11

    if-ltz v20, :cond_1e

    goto :goto_15

    :cond_1e
    aput v11, v3, v5

    goto :goto_16

    :cond_1f
    :goto_15
    aput v4, v3, v5

    move v11, v4

    :goto_16
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->l()V

    iget-object v4, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0, v4, v14}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/k$ak;)V

    iget-object v4, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/o;->D:Lcom/deepe/c/c/a/a/k$an;

    check-cast v4, Lcom/deepe/c/c/a/a/k$f;

    if-nez v4, :cond_20

    sget-object v4, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    :cond_20
    sget-boolean v14, Lcom/deepe/c/c/a/a/j;->j:Z

    iget v4, v4, Lcom/deepe/c/c/a/a/k$f;->a:I

    if-eqz v14, :cond_21

    iget-object v14, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v14, v14, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v14, v14, Lcom/deepe/c/c/a/a/o;->E:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-static {v4, v14}, Lcom/deepe/c/c/a/a/j;->a(IF)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v22

    aput-wide v22, v21, v5

    goto :goto_17

    :cond_21
    iget-object v14, v0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v14, v14, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v14, v14, Lcom/deepe/c/c/a/a/o;->E:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-static {v4, v14}, Lcom/deepe/c/c/a/a/j;->a(IF)I

    move-result v4

    aput v4, v18, v5

    :goto_17
    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/c/a/a/j;->m()V

    const/4 v4, 0x1

    goto/16 :goto_10
.end method

.method private a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$u;)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p3, Lcom/deepe/c/c/a/a/k$u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v0, "Fill"

    goto :goto_0

    :cond_0
    const-string v0, "Stroke"

    :goto_0
    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object v2, p3, Lcom/deepe/c/c/a/a/k$u;->a:Ljava/lang/String;

    aput-object v2, p2, v0

    const-string v0, "%s reference \'%s\' not found"

    invoke-static {v0, p2}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p3, Lcom/deepe/c/c/a/a/k$u;->b:Lcom/deepe/c/c/a/a/k$an;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p3, p3, Lcom/deepe/c/c/a/a/k$u;->b:Lcom/deepe/c/c/a/a/k$an;

    invoke-direct {p0, p2, p1, p3}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;ZLcom/deepe/c/c/a/a/k$an;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iput-boolean v1, p1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iput-boolean v1, p1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    :goto_1
    return-void

    :cond_3
    instance-of p3, v0, Lcom/deepe/c/c/a/a/k$al;

    if-eqz p3, :cond_4

    check-cast v0, Lcom/deepe/c/c/a/a/k$al;

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/c/a/a/j;->a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$al;)V

    goto :goto_2

    :cond_4
    instance-of p3, v0, Lcom/deepe/c/c/a/a/k$ap;

    if-eqz p3, :cond_5

    check-cast v0, Lcom/deepe/c/c/a/a/k$ap;

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/c/a/a/j;->a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$ap;)V

    goto :goto_2

    :cond_5
    instance-of p2, v0, Lcom/deepe/c/c/a/a/k$ac;

    if-eqz p2, :cond_6

    check-cast v0, Lcom/deepe/c/c/a/a/k$ac;

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(ZLcom/deepe/c/c/a/a/k$ac;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(F)Z
    .locals 4

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->m:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/deepe/c/c/a/a/j;->b(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean p1, Lcom/deepe/c/c/a/a/j;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    sget-object v2, Lcom/deepe/c/c/a/a/o$a;->a:Lcom/deepe/c/c/a/a/o$a;

    if-eq p1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Paint;)V

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/deepe/c/c/a/a/j;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/j$g;-><init>(Lcom/deepe/c/c/a/a/j$g;)V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object p1

    instance-of p1, p1, Lcom/deepe/c/c/a/a/k$s;

    if-nez p1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    aput-object v3, p1, v1

    const-string v1, "Mask reference \'%s\' not found"

    invoke-static {v1, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iput-object v2, p1, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/deepe/c/c/a/a/j;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->u()Z

    move-result p0

    return p0
.end method

.method private a(Lcom/deepe/c/c/a/a/o;J)Z
    .locals 2

    iget-wide v0, p1, Lcom/deepe/c/c/a/a/o;->a:J

    and-long p1, v0, p2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static a(DD)[F
    .locals 17

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v4, v0

    div-double v4, p2, v4

    div-double v1, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v6, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v8

    div-double/2addr v6, v1

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    int-to-double v8, v2

    mul-double/2addr v8, v4

    add-double v8, p0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-int/lit8 v14, v3, 0x1

    mul-double v15, v6, v12

    move-wide/from16 p2, v4

    sub-double v4, v10, v15

    double-to-float v4, v4

    aput v4, v1, v3

    add-int/lit8 v3, v14, 0x1

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    double-to-float v4, v12

    aput v4, v1, v14

    add-double v8, v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    add-int/lit8 v10, v3, 0x1

    mul-double v11, v6, v8

    add-double/2addr v11, v4

    double-to-float v11, v11

    aput v11, v1, v3

    add-int/lit8 v3, v10, 0x1

    mul-double v11, v6, v4

    sub-double v11, v8, v11

    double-to-float v11, v11

    aput v11, v1, v10

    add-int/lit8 v10, v3, 0x1

    double-to-float v4, v4

    aput v4, v1, v3

    add-int/lit8 v3, v10, 0x1

    double-to-float v4, v8

    aput v4, v1, v10

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, p2

    goto :goto_0
.end method

.method private b(FFFF)F
    .locals 0

    mul-float/2addr p1, p3

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    return p1
.end method

.method private static b(F)I
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private b(Lcom/deepe/c/c/a/a/k$ab;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$ab;->f:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    iget-object v4, v1, Lcom/deepe/c/c/a/a/k$ab;->g:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    :goto_1
    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$ab;->a:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$ab;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iget-object v6, v1, Lcom/deepe/c/c/a/a/k$ab;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/deepe/c/c/a/a/k$ab;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v6, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v6

    move v13, v6

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    iget-object v6, v1, Lcom/deepe/c/c/a/a/k$ab;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v6, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v6

    iget-object v7, v1, Lcom/deepe/c/c/a/a/k$ab;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v7, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v7

    iget-object v8, v1, Lcom/deepe/c/c/a/a/k$ab;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v8, :cond_5

    new-instance v8, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v8, v5, v13, v6, v7}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v8, v1, Lcom/deepe/c/c/a/a/k$ab;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_5
    add-float v15, v5, v6

    add-float v1, v13, v7

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_7

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const v3, 0x3f0d6289

    mul-float v16, v2, v3

    mul-float/2addr v3, v4

    add-float v12, v13, v4

    invoke-virtual {v14, v5, v12}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v17, v12, v3

    add-float v11, v5, v2

    sub-float v21, v11, v16

    move-object v6, v14

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v21

    move v10, v13

    move/from16 p1, v11

    move/from16 v22, v12

    move v12, v13

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v2, v15, v2

    invoke-virtual {v14, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, v2, v16

    move-object v7, v14

    move v8, v6

    move v9, v13

    move v10, v15

    move/from16 v11, v17

    move v12, v15

    move/from16 v13, v22

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v1, v4

    invoke-virtual {v14, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v12, v3

    move-object v3, v14

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v2, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v6, v3

    move/from16 v7, v21

    move v8, v1

    move v9, v5

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, v14

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method private b(Lcom/deepe/c/c/a/a/k$av;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$av;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$av;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$av;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    :goto_5
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$av;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v5, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-eq v1, v5, :cond_9

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;)F

    move-result v1

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v6, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v5, v6, :cond_8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    :cond_8
    sub-float/2addr v0, v1

    :cond_9
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_a

    new-instance v1, Lcom/deepe/c/c/a/a/j$h;

    invoke-direct {v1, p0, v0, v3}, Lcom/deepe/c/c/a/a/j$h;-><init>(Lcom/deepe/c/c/a/a/j;FF)V

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    new-instance v5, Lcom/deepe/c/c/a/a/k$b;

    iget-object v6, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v6, v7, v8, v1}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v5, p1, Lcom/deepe/c/c/a/a/k$av;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_a
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/deepe/c/c/a/a/j$f;

    add-float/2addr v0, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/deepe/c/c/a/a/j$f;-><init>(Lcom/deepe/c/c/a/a/j;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ax;Lcom/deepe/c/c/a/a/j$i;)V

    return-object v1
.end method

.method private b(Lcom/deepe/c/c/a/a/k$d;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$d;->a:Lcom/deepe/c/c/a/a/k$p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$d;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v1, Lcom/deepe/c/c/a/a/k$d;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/deepe/c/c/a/a/k$d;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lcom/deepe/c/c/a/a/k$d;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, v0}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    sub-float v11, v2, v4

    sub-float v12, v3, v4

    add-float v13, v2, v4

    add-float v14, v3, v4

    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$d;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v5, :cond_2

    new-instance v5, Lcom/deepe/c/c/a/a/k$b;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v4

    invoke-direct {v5, v11, v12, v6, v6}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v5, v1, Lcom/deepe/c/c/a/a/k$d;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float/2addr v1, v4

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v15, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v1

    sub-float v17, v3, v1

    move-object v4, v15

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v18, v3, v1

    move v5, v13

    move/from16 v6, v18

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v2, v1

    move v5, v1

    move v6, v14

    move v7, v11

    move/from16 v8, v18

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v1

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    return-object v15
.end method

.method private b(Lcom/deepe/c/c/a/a/k$i;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$i;->a:Lcom/deepe/c/c/a/a/k$p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/deepe/c/c/a/a/k$i;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v1, Lcom/deepe/c/c/a/a/k$i;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/deepe/c/c/a/a/k$i;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lcom/deepe/c/c/a/a/k$i;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v4, v0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v4

    iget-object v5, v1, Lcom/deepe/c/c/a/a/k$i;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v5, v0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v5

    sub-float v11, v2, v4

    sub-float v12, v3, v5

    add-float v13, v2, v4

    add-float v14, v3, v5

    iget-object v6, v1, Lcom/deepe/c/c/a/a/k$i;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v6, :cond_2

    new-instance v6, Lcom/deepe/c/c/a/a/k$b;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v4, v7

    mul-float/2addr v7, v5

    invoke-direct {v6, v11, v12, v8, v7}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v6, v1, Lcom/deepe/c/c/a/a/k$i;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v15, v4, v1

    mul-float/2addr v1, v5

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v15

    sub-float v17, v3, v1

    move-object v4, v10

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move-object/from16 v18, v10

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v1, v3

    move-object/from16 v4, v18

    move v5, v13

    move v6, v1

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v2, v15

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v1

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v13

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    return-object v18
.end method

.method static synthetic b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object p0
.end method

.method private b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance p1, Lcom/deepe/c/c/a/a/k$b;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    return-object p1
.end method

.method private b(Lcom/deepe/c/c/a/a/k$q;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/k$q;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/j$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$q;->a:Lcom/deepe/c/c/a/a/k$p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$q;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$q;->b:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$q;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$q;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$q;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$q;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_3

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$q;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {p1, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/deepe/c/c/a/a/j$b;

    sub-float v5, v3, v0

    sub-float v6, v1, v2

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/deepe/c/c/a/a/j$b;

    invoke-direct {v0, v3, v1, v5, v6}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private b(Lcom/deepe/c/c/a/a/k$z;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/k$z;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/j$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/deepe/c/c/a/a/j$b;

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget v5, v5, v1

    iget-object v6, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v8, v8}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    move v5, v8

    :goto_1
    if-lt v2, v0, :cond_4

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$aa;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget v0, v0, v1

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget v0, v0, v7

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget v0, v0, v1

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget p1, p1, v7

    invoke-virtual {v4, v0, p1}, Lcom/deepe/c/c/a/a/j$b;->a(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/deepe/c/c/a/a/j$b;

    iget v5, v4, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float v5, v0, v5

    iget v4, v4, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float v4, p1, v4

    invoke-direct {v2, v0, p1, v5, v4}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {v2, p1}, Lcom/deepe/c/c/a/a/j$b;->a(Lcom/deepe/c/c/a/a/j$b;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    return-object v3

    :cond_4
    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    aget v8, v5, v2

    iget-object v5, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v8, v5}, Lcom/deepe/c/c/a/a/j$b;->a(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/deepe/c/c/a/a/j$b;

    iget v9, v4, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float v9, v8, v9

    iget v4, v4, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float v4, v5, v4

    invoke-direct {v6, v8, v5, v9, v4}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    add-int/lit8 v2, v2, 0x2

    move-object v4, v6

    goto :goto_1
.end method

.method private static b(FFFFFZZFFLcom/deepe/c/c/a/a/k$x;)V
    .locals 28

    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v4, p9

    cmpl-float v5, p0, v2

    if-nez v5, :cond_0

    cmpl-float v5, p1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-eqz v6, :cond_b

    cmpl-float v5, p3, v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v7, v0

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    sub-float v11, p0, v2

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-float v15, p1, v3

    float-to-double v3, v15

    div-double/2addr v3, v13

    mul-double v15, v9, v11

    mul-double v17, v7, v3

    add-double v13, v15, v17

    neg-double v0, v7

    mul-double/2addr v0, v11

    mul-double/2addr v3, v9

    add-double/2addr v0, v3

    mul-float v3, v5, v5

    float-to-double v3, v3

    mul-float v11, v6, v6

    float-to-double v11, v11

    mul-double v15, v13, v13

    mul-double v17, v0, v0

    div-double v19, v15, v3

    div-double v21, v17, v11

    add-double v19, v19, v21

    const-wide v21, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v21, v19, v21

    if-lez v21, :cond_2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v11, 0x3ff0000a7c5ac472L    # 1.00001

    mul-double/2addr v3, v11

    float-to-double v11, v5

    mul-double/2addr v11, v3

    double-to-float v5, v11

    float-to-double v11, v6

    mul-double/2addr v3, v11

    double-to-float v6, v3

    mul-float v3, v5, v5

    float-to-double v3, v3

    mul-float v11, v6, v6

    float-to-double v11, v11

    :cond_2
    const/16 v19, 0x1

    move-wide/from16 v20, v7

    move/from16 v7, p5

    move/from16 v8, p6

    if-ne v7, v8, :cond_3

    const/4 v7, -0x1

    goto :goto_0

    :cond_3
    move/from16 v7, v19

    :goto_0
    int-to-double v7, v7

    mul-double v22, v3, v11

    mul-double v3, v3, v17

    sub-double v22, v22, v3

    mul-double/2addr v11, v15

    sub-double v22, v22, v11

    add-double/2addr v3, v11

    div-double v22, v22, v3

    const-wide/16 v3, 0x0

    cmpg-double v11, v22, v3

    if-gez v11, :cond_4

    move-wide/from16 v22, v3

    :cond_4
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v7, v11

    float-to-double v11, v5

    mul-double v15, v11, v0

    float-to-double v3, v6

    div-double/2addr v15, v3

    mul-double/2addr v15, v7

    mul-double v22, v3, v13

    move/from16 v24, v5

    move/from16 v25, v6

    div-double v5, v22, v11

    neg-double v5, v5

    mul-double/2addr v7, v5

    add-float v5, p0, v2

    float-to-double v5, v5

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v5, v5, v22

    move/from16 v2, p8

    move-wide/from16 p2, v3

    add-float v3, p1, v2

    float-to-double v3, v3

    div-double v3, v3, v22

    mul-double v22, v9, v15

    mul-double v26, v20, v7

    sub-double v22, v22, v26

    add-double v5, v5, v22

    mul-double v20, v20, v15

    mul-double/2addr v9, v7

    add-double v20, v20, v9

    add-double v3, v3, v20

    sub-double v9, v13, v15

    div-double/2addr v9, v11

    sub-double v20, v0, v7

    div-double v20, v20, p2

    neg-double v13, v13

    sub-double/2addr v13, v15

    div-double/2addr v13, v11

    neg-double v0, v0

    sub-double/2addr v0, v7

    div-double v0, v0, p2

    mul-double v7, v9, v9

    mul-double v11, v20, v20

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/16 v15, 0x0

    cmpg-double v22, v20, v15

    if-gez v22, :cond_5

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_5
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    :goto_1
    div-double v11, v9, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double/2addr v15, v11

    mul-double v11, v13, v13

    mul-double v22, v0, v0

    add-double v11, v11, v22

    mul-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v11, v9, v13

    mul-double v22, v20, v0

    add-double v11, v11, v22

    mul-double/2addr v9, v0

    mul-double v20, v20, v13

    sub-double v9, v9, v20

    const-wide/16 v0, 0x0

    cmpg-double v9, v9, v0

    if-gez v9, :cond_6

    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_2

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2
    float-to-double v9, v9

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Lcom/deepe/c/c/a/a/j;->a(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    cmpl-double v7, v9, v0

    move/from16 v0, p7

    move v1, v2

    move-object/from16 v2, p9

    if-nez v7, :cond_7

    invoke-interface {v2, v0, v1}, Lcom/deepe/c/c/a/a/k$x;->b(FF)V

    return-void

    :cond_7
    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    if-nez p6, :cond_8

    if-lez v7, :cond_8

    sub-double/2addr v9, v11

    goto :goto_3

    :cond_8
    if-eqz p6, :cond_9

    const-wide/16 v7, 0x0

    cmpg-double v7, v9, v7

    if-gez v7, :cond_9

    add-double/2addr v9, v11

    :cond_9
    :goto_3
    rem-double/2addr v9, v11

    rem-double v7, v15, v11

    invoke-static {v7, v8, v9, v10}, Lcom/deepe/c/c/a/a/j;->a(DD)[F

    move-result-object v7

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v9, v24

    move/from16 v10, v25

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v9, p4

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v5, v5

    double-to-float v3, v3

    invoke-virtual {v8, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    array-length v3, v7

    add-int/lit8 v3, v3, -0x2

    aput v0, v7, v3

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aput v1, v7, v0

    const/4 v0, 0x0

    :goto_4
    array-length v1, v7

    if-lt v0, v1, :cond_a

    return-void

    :cond_a
    aget v1, v7, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v7, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, v7, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, v7, v5

    add-int/lit8 v6, v0, 0x4

    aget v6, v7, v6

    add-int/lit8 v8, v0, 0x5

    aget v8, v7, v8

    move-object/from16 p0, p9

    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v8

    invoke-interface/range {p0 .. p6}, Lcom/deepe/c/c/a/a/k$x;->a(FFFFFF)V

    add-int/lit8 v0, v0, 0x6

    goto :goto_4

    :cond_b
    :goto_5
    move v0, v2

    move v1, v3

    move-object v2, v4

    invoke-interface {v2, v0, v1}, Lcom/deepe/c/c/a/a/k$x;->b(FF)V

    return-void
.end method

.method private b(Lcom/deepe/c/c/a/a/k$aj;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    return-void
.end method

.method private b(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/deepe/c/c/a/a/k$am;)V
    .locals 1

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ak;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/deepe/c/c/a/a/k$ak;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$ak;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$ak;->q:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/deepe/c/c/a/a/j$g;->f:Z

    :cond_1
    return-void
.end method

.method private b(Lcom/deepe/c/c/a/a/k$ar;)V
    .locals 8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$ar;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/k$am;

    instance-of v2, v1, Lcom/deepe/c/c/a/a/k$af;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/deepe/c/c/a/a/k$af;

    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$af;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$af;->e()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$af;->c()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v4, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    if-nez v4, :cond_5

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->q()V

    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$af;->f()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    invoke-virtual {v5, v4}, Lcom/deepe/c/c/a/d;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_a
    :goto_1
    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$af;->g()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v6, v6, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v7, v7, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/deepe/c/c/a/d;->a(Ljava/lang/String;FLjava/lang/String;F)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_e
    :goto_2
    invoke-direct {p0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;)V

    :goto_3
    return-void
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/deepe/c/c/a/a/j;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    return-object p0
.end method

.method private c(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)Landroid/graphics/Path;
    .locals 5

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$aj;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$am;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clipPath"

    if-eq v3, v4, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Lcom/deepe/c/c/a/a/k$e;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$e;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-nez v1, :cond_3

    iget v1, p2, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v3, p2, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$e;->b:Landroid/graphics/Matrix;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/deepe/c/c/a/a/k$e;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$e;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_6

    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$e;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_6
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$e;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1, v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_7
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/j$g;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-object p2

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$am;

    instance-of v4, v3, Lcom/deepe/c/c/a/a/k$aj;

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    check-cast v3, Lcom/deepe/c/c/a/a/k$aj;

    invoke-direct {p0, v3, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$aj;Z)Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_1
.end method

.method private c(Lcom/deepe/c/c/a/a/k$q;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$q;->a:Lcom/deepe/c/c/a/a/k$p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$q;->a:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$q;->b:Lcom/deepe/c/c/a/a/k$p;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/deepe/c/c/a/a/k$q;->b:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v2

    :goto_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$q;->c:Lcom/deepe/c/c/a/a/k$p;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$q;->c:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v3, p0}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;)F

    move-result v3

    :goto_2
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$q;->d:Lcom/deepe/c/c/a/a/k$p;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$q;->d:Lcom/deepe/c/c/a/a/k$p;

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/k$p;->b(Lcom/deepe/c/c/a/a/j;)F

    move-result v1

    :goto_3
    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$q;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v4, :cond_4

    new-instance v4, Lcom/deepe/c/c/a/a/k$b;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v4, p1, Lcom/deepe/c/c/a/a/k$q;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method private c(Lcom/deepe/c/c/a/a/k$z;)Landroid/graphics/Path;
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-lez v1, :cond_4

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    instance-of v1, p1, Lcom/deepe/c/c/a/a/k$aa;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_3

    :cond_2
    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    if-nez v2, :cond_3

    aget v3, v3, v2

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_3
    aget v3, v3, v2

    iget-object v4, p1, Lcom/deepe/c/c/a/a/k$z;->a:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->o:Lcom/deepe/c/c/a/a/k$b;

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Landroid/graphics/Path;)Lcom/deepe/c/c/a/a/k$b;

    move-result-object v1

    iput-object v1, p1, Lcom/deepe/c/c/a/a/k$z;->o:Lcom/deepe/c/c/a/a/k$b;

    :cond_5
    return-object v0
.end method

.method private c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;
    .locals 2

    new-instance v0, Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/j$g;-><init>()V

    invoke-static {}, Lcom/deepe/c/c/a/a/o;->a()Lcom/deepe/c/c/a/a/o;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;Lcom/deepe/c/c/a/a/j$g;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/deepe/c/c/a/a/k$aj;)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->b:Lcom/deepe/c/c/a/a/k$an;

    check-cast v2, Lcom/deepe/c/c/a/a/k$u;

    invoke-direct {p0, v0, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$u;)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$u;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->e:Lcom/deepe/c/c/a/a/k$an;

    check-cast v1, Lcom/deepe/c/c/a/a/k$u;

    invoke-direct {p0, v0, p1, v1}, Lcom/deepe/c/c/a/a/j;->a(ZLcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$u;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/a/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private d(Lcom/deepe/c/c/a/a/k$aj;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V

    return-void
.end method

.method private d(Lcom/deepe/c/c/a/a/k$aj;Lcom/deepe/c/c/a/a/k$b;)V
    .locals 5

    iget-object v0, p1, Lcom/deepe/c/c/a/a/k$aj;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/o;->F:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k$am;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "clipPath"

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    check-cast v0, Lcom/deepe/c/c/a/a/k$e;

    iget-object v3, v0, Lcom/deepe/c/c/a/a/k$e;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void

    :cond_2
    iget-object v3, v0, Lcom/deepe/c/c/a/a/k$e;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/deepe/c/c/a/a/k$e;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    instance-of v4, p1, Lcom/deepe/c/c/a/a/k$m;

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k$aj;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {p1, p2}, Lcom/deepe/c/c/a/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->x()V

    if-nez v3, :cond_5

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p2, Lcom/deepe/c/c/a/a/k$b;->a:F

    iget v3, p2, Lcom/deepe/c/c/a/a/k$b;->b:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p2, Lcom/deepe/c/c/a/a/k$b;->c:F

    iget p2, p2, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    iget-object p1, v0, Lcom/deepe/c/c/a/a/k$e;->b:Landroid/graphics/Matrix;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$e;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/k$am;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->d(Lcom/deepe/c/c/a/a/k$aj;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iget-object p2, v0, Lcom/deepe/c/c/a/a/k$e;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->y()V

    return-void

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/k$am;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$am;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->a:Z

    return v0
.end method

.method private static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->e:Z

    return v0
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/j;->A:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/o$a;->values()[Lcom/deepe/c/c/a/a/o$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->q:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->o:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->h:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->g:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->e:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->k:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->l:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->i:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->m:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->f:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->p:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->b:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->a:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->d:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->n:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->c:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->j:Lcom/deepe/c/c/a/a/o$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$a;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lcom/deepe/c/c/a/a/j;->A:[I

    return-object v0
.end method

.method static synthetic h()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/j;->B:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a$a;->values()[Lcom/deepe/c/c/a/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a$a;->a:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a$a;->j:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a$a;->g:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a$a;->d:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/c/a/a$a;->i:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/c/a/a$a;->f:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/deepe/c/c/a/a$a;->c:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/deepe/c/c/a/a$a;->h:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/deepe/c/c/a/a$a;->e:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/deepe/c/c/a/a$a;->b:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    sput-object v0, Lcom/deepe/c/c/a/a/j;->B:[I

    return-object v0
.end method

.method static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/j;->C:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/o$g;->values()[Lcom/deepe/c/c/a/a/o$g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/o$g;->a:Lcom/deepe/c/c/a/a/o$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/o$g;->b:Lcom/deepe/c/c/a/a/o$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/o$g;->c:Lcom/deepe/c/c/a/a/o$g;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/deepe/c/c/a/a/j;->C:[I

    return-object v0
.end method

.method static synthetic j()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/j;->D:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/o$h;->values()[Lcom/deepe/c/c/a/a/o$h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/o$h;->c:Lcom/deepe/c/c/a/a/o$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/o$h;->a:Lcom/deepe/c/c/a/a/o$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/o$h;->b:Lcom/deepe/c/c/a/a/o$h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/o$h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/deepe/c/c/a/a/j;->D:[I

    return-object v0
.end method

.method private k()V
    .locals 3

    new-instance v0, Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/j$g;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-static {}, Lcom/deepe/c/c/a/a/o;->a()Lcom/deepe/c/c/a/a/o;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j$g;Lcom/deepe/c/c/a/a/o;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/deepe/c/c/a/a/j$g;->f:Z

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    new-instance v1, Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v1, v2}, Lcom/deepe/c/c/a/a/j$g;-><init>(Lcom/deepe/c/c/a/a/j$g;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->w:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->v:Ljava/util/Stack;

    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(Z)V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/j$g;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->v:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->w:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method private o()Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->a(F)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->m:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->H:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->O:Lcom/deepe/c/c/a/a/o$f;

    sget-object v1, Lcom/deepe/c/c/a/a/o$f;->b:Lcom/deepe/c/c/a/a/o$f;

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->P:Lcom/deepe/c/c/a/a/o$a;

    sget-object v1, Lcom/deepe/c/c/a/a/o$a;->a:Lcom/deepe/c/c/a/a/o$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static declared-synchronized q()V
    .locals 3

    const-class v0, Lcom/deepe/c/c/a/a/j;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Structure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "ConditionalProcessing"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Style"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepe/c/c/a/a/j;->x:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private r()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    invoke-direct {p0, v1, v2, v3}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;Ljava/lang/Float;Lcom/deepe/c/c/a/a/o$d;)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v4, v4, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v5, v5, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/deepe/c/c/a/d;->a(Ljava/lang/String;FLjava/lang/String;F)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    const-string v2, "serif"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;Ljava/lang/Float;Lcom/deepe/c/c/a/a/o$d;)Landroid/graphics/Typeface;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->q:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "wght"

    invoke-virtual {v0, v3, v2}, Lcom/deepe/c/c/a/a/b;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    sget-object v2, Lcom/deepe/c/c/a/a/o$d;->b:Lcom/deepe/c/c/a/a/o$d;

    const-string v3, "slnt"

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    sget-object v2, Lcom/deepe/c/c/a/a/b;->a:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v4, "ital"

    invoke-virtual {v0, v4, v2}, Lcom/deepe/c/c/a/a/b;->a(Ljava/lang/String;F)V

    :goto_2
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    sget-object v2, Lcom/deepe/c/c/a/a/b;->b:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/deepe/c/c/a/a/b;->a(Ljava/lang/String;F)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->r:Lcom/deepe/c/c/a/a/o$d;

    sget-object v2, Lcom/deepe/c/c/a/a/o$d;->c:Lcom/deepe/c/c/a/a/o$d;

    if-ne v0, v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/o;->s:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "wdth"

    invoke-virtual {v0, v3, v2}, Lcom/deepe/c/c/a/a/b;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fontVariationSettings = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_7
    sget-boolean v0, Lcom/deepe/c/c/a/a/j;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fontFeatureSettings = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/deepe/c/c/a/a/j;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private s()Lcom/deepe/c/c/a/a/o$j;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->u:Lcom/deepe/c/c/a/a/o$l;

    sget-object v1, Lcom/deepe/c/c/a/a/o$l;->a:Lcom/deepe/c/c/a/a/o$l;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v1, Lcom/deepe/c/c/a/a/o$j;->b:Lcom/deepe/c/c/a/a/o$j;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    sget-object v1, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/deepe/c/c/a/a/o$j;->c:Lcom/deepe/c/c/a/a/o$j;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepe/c/c/a/a/o$j;->a:Lcom/deepe/c/c/a/a/o$j;

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->v:Lcom/deepe/c/c/a/a/o$j;

    return-object v0
.end method

.method private t()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private v()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->c:Lcom/deepe/c/c/a/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->c:Lcom/deepe/c/c/a/a/o$b;

    sget-object v1, Lcom/deepe/c/c/a/a/o$b;->b:Lcom/deepe/c/c/a/a/o$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->K:Lcom/deepe/c/c/a/a/k$an;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->K:Lcom/deepe/c/c/a/a/k$an;

    check-cast v0, Lcom/deepe/c/c/a/a/k$f;

    :goto_0
    iget v0, v0, Lcom/deepe/c/c/a/a/k$f;->a:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->K:Lcom/deepe/c/c/a/a/k$an;

    instance-of v0, v0, Lcom/deepe/c/c/a/a/k$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->n:Lcom/deepe/c/c/a/a/k$f;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->L:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/o;->L:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/j;->a(IF)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    sget v1, Lcom/deepe/c/c/a/a/f;->a:I

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/f;->a(Landroid/graphics/Canvas;I)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/j$g;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/j$g;-><init>(Lcom/deepe/c/c/a/a/j$g;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->q:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->u:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/j$g;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    return-void
.end method

.method private z()Landroid/graphics/Path$FillType;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->G:Lcom/deepe/c/c/a/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->G:Lcom/deepe/c/c/a/a/o$b;

    sget-object v1, Lcom/deepe/c/c/a/a/o$b;->b:Lcom/deepe/c/c/a/a/o$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/a/a/j;->r:F

    return v0
.end method

.method a(Lcom/deepe/c/c/a/a/k;Lcom/deepe/c/c/a/a/i;)V
    .locals 7

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k;->e()Lcom/deepe/c/c/a/a/k$ae;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Nothing to render. Document is empty."

    invoke-static {p2, p1}, Lcom/deepe/c/c/a/a/j;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j;->s:Lcom/deepe/c/c/a/a/k;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/i;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/deepe/c/c/a/a/k;->d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;

    move-result-object v2

    instance-of v4, v2, Lcom/deepe/c/c/a/a/k$be;

    if-nez v4, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/i;->f:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "View element with id \"%s\" not found."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast v2, Lcom/deepe/c/c/a/a/k$be;

    iget-object v4, v2, Lcom/deepe/c/c/a/a/k$be;->x:Lcom/deepe/c/c/a/a/k$b;

    if-nez v4, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/deepe/c/c/a/a/i;->f:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "View element with id \"%s\" is missing a viewBox attribute."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v2, Lcom/deepe/c/c/a/a/k$be;->x:Lcom/deepe/c/c/a/a/k$b;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/k$be;->w:Lcom/deepe/c/c/a/a;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/deepe/c/c/a/a/i;->e:Lcom/deepe/c/c/a/a/k$b;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/deepe/c/c/a/a/k$ae;->x:Lcom/deepe/c/c/a/a/k$b;

    :goto_0
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/deepe/c/c/a/a/i;->c:Lcom/deepe/c/c/a/a;

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/deepe/c/c/a/a/k$ae;->w:Lcom/deepe/c/c/a/a;

    :goto_1
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p2, Lcom/deepe/c/c/a/a/i;->a:Ljava/lang/String;

    if-eqz v4, :cond_6

    new-instance v4, Lcom/deepe/c/c/a/a/d;

    sget-object v5, Lcom/deepe/c/c/a/a/d$s;->b:Lcom/deepe/c/c/a/a/d$s;

    iget-object v6, p0, Lcom/deepe/c/c/a/a/j;->z:Lcom/deepe/c/c/a/d;

    invoke-direct {v4, v5, v6}, Lcom/deepe/c/c/a/a/d;-><init>(Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V

    iget-object v5, p2, Lcom/deepe/c/c/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/deepe/c/c/a/a/d;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$p;

    move-result-object v4

    :goto_2
    invoke-virtual {p1, v4}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a/d$p;)V

    goto :goto_3

    :cond_6
    iget-object v4, p2, Lcom/deepe/c/c/a/a/i;->b:Lcom/deepe/c/c/a/a/d$p;

    if-eqz v4, :cond_7

    iget-object v4, p2, Lcom/deepe/c/c/a/a/i;->b:Lcom/deepe/c/c/a/a/d$p;

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->f()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/deepe/c/c/a/a/d$o;

    invoke-direct {v4}, Lcom/deepe/c/c/a/a/d$o;-><init>()V

    iput-object v4, p0, Lcom/deepe/c/c/a/a/j;->y:Lcom/deepe/c/c/a/a/d$o;

    iget-object v5, p2, Lcom/deepe/c/c/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/deepe/c/c/a/a/k;->d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$ak;

    move-result-object v5

    iput-object v5, v4, Lcom/deepe/c/c/a/a/d$o;->a:Lcom/deepe/c/c/a/a/k$ak;

    :cond_8
    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->k()V

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/k$am;)V

    invoke-direct {p0, v3}, Lcom/deepe/c/c/a/a/j;->a(Z)V

    new-instance v3, Lcom/deepe/c/c/a/a/k$b;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/i;->g:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v3, v4}, Lcom/deepe/c/c/a/a/k$b;-><init>(Lcom/deepe/c/c/a/a/k$b;)V

    iget-object v4, v0, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/deepe/c/c/a/a/k$ae;->c:Lcom/deepe/c/c/a/a/k$p;

    iget v5, v3, Lcom/deepe/c/c/a/a/k$b;->c:F

    invoke-virtual {v4, p0, v5}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v4

    iput v4, v3, Lcom/deepe/c/c/a/a/k$b;->c:F

    :cond_9
    iget-object v4, v0, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/deepe/c/c/a/a/k$ae;->d:Lcom/deepe/c/c/a/a/k$p;

    iget v5, v3, Lcom/deepe/c/c/a/a/k$b;->d:F

    invoke-virtual {v4, p0, v5}, Lcom/deepe/c/c/a/a/k$p;->a(Lcom/deepe/c/c/a/a/j;F)F

    move-result v4

    iput v4, v3, Lcom/deepe/c/c/a/a/k$b;->d:F

    :cond_a
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/k$ae;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a/k$b;Lcom/deepe/c/c/a/a;)V

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/j;->m()V

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/i;->a()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/k;->h()V

    :cond_b
    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "renderOptions shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()F
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method c()F
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method d()Lcom/deepe/c/c/a/a/k$b;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j;->t:Lcom/deepe/c/c/a/a/j$g;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    return-object v0
.end method
