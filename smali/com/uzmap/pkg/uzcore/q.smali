.class public Lcom/uzmap/pkg/uzcore/q;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field private j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

.field private k:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/q;->i:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/q;->c()Lcom/uzmap/pkg/uzcore/q;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/q;->i:Z

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/q;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/q;->i:Z

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/q;->c()Lcom/uzmap/pkg/uzcore/q;

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private c()Lcom/uzmap/pkg/uzcore/q;
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v1, "0"

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->a:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "auto"

    const-string v3, "w"

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v3, "h"

    invoke-interface {v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "marginTop"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->f:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "marginLeft"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->e:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "marginRight"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->h:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    const-string v2, "marginBottom"

    invoke-interface {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/q;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->g:I

    return-object p0
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/uzcore/q;)Lcom/uzmap/pkg/uzcore/q;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->a:I

    :cond_1
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->b:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    :cond_2
    const-string v0, "w"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->c:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    :cond_3
    const-string v0, "h"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->d:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    :cond_4
    const-string v0, "marginLeft"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->e:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->e:I

    :cond_5
    const-string v0, "marginTop"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->f:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->f:I

    :cond_6
    const-string v0, "marginRight"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/uzmap/pkg/uzcore/q;->h:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/q;->h:I

    :cond_7
    const-string v0, "marginBottom"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p1, Lcom/uzmap/pkg/uzcore/q;->g:I

    iput p1, p0, Lcom/uzmap/pkg/uzcore/q;->g:I

    :cond_8
    return-object p0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/q;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/q;->f:I

    if-gt v0, p2, :cond_0

    iget p2, p0, Lcom/uzmap/pkg/uzcore/q;->e:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->j:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    iget v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->a:I

    iget v2, p0, Lcom/uzmap/pkg/uzcore/q;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    iget v3, p0, Lcom/uzmap/pkg/uzcore/q;->f:I

    add-int/2addr v2, v3

    const-string v3, "marginRight"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "marginLeft"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    const-string v3, "marginBottom"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "marginTop"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v4, -0x1

    const/16 v5, 0x50

    if-eq v3, v4, :cond_1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/2addr v5, v3

    :cond_1
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->g:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public b(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/q;->k:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/q;->i:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/y$a;->a(Z)V

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->a:I

    iget v2, p0, Lcom/uzmap/pkg/uzcore/q;->c:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v1, p1, :cond_1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->rightMargin:I

    iget p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->rightMargin:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->h:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->rightMargin:I

    iget p1, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/q;->d:I

    add-int/2addr v1, p1

    if-le v1, p2, :cond_2

    sub-int/2addr p2, v1

    iput p2, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    iput v2, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    goto :goto_1

    :cond_3
    iput v2, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    iget p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    iget p2, p0, Lcom/uzmap/pkg/uzcore/q;->g:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->bottomMargin:I

    :goto_1
    iget p1, p0, Lcom/uzmap/pkg/uzcore/q;->a:I

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->leftMargin:I

    iget p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->leftMargin:I

    iget p2, p0, Lcom/uzmap/pkg/uzcore/q;->e:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->leftMargin:I

    iget p1, p0, Lcom/uzmap/pkg/uzcore/q;->b:I

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    iget p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    iget p2, p0, Lcom/uzmap/pkg/uzcore/q;->f:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/y$a;->topMargin:I

    const-string p1, "marginTop"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, -0x1

    if-nez p1, :cond_4

    const-string p1, "marginBottom"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xc

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/y$a;->addRule(II)V

    :cond_4
    const-string p1, "marginLeft"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "marginRight"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/y$a;->addRule(II)V

    :cond_5
    return-object v0
.end method
