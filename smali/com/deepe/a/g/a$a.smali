.class public Lcom/deepe/a/g/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:Z

.field public e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Landroid/view/View;

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/deepe/a/g/a$a;->a:I

    const v0, -0xa8946b

    iput v0, p0, Lcom/deepe/a/g/a$a;->b:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/deepe/a/g/a$a;->c:F

    const/16 v0, 0x11

    iput v0, p0, Lcom/deepe/a/g/a$a;->q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/deepe/a/g/a$a;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/a$a;->s:Z

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$a;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/deepe/a/g/a$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$a;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/deepe/a/g/a$a;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/deepe/a/g/a$a;
    .locals 0

    iput p1, p0, Lcom/deepe/a/g/a$a;->c:F

    return-object p0
.end method

.method public a(I)Lcom/deepe/a/g/a$a;
    .locals 0

    iput p1, p0, Lcom/deepe/a/g/a$a;->r:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/a/g/a$a;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/g/a$a;->s:Z

    return-object p0
.end method

.method public a(ZLjava/lang/String;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/g/a$a;->d:Z

    iput-object p2, p0, Lcom/deepe/a/g/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/deepe/a/g/a;
    .locals 6

    new-instance v0, Lcom/deepe/a/g/a;

    iget-object v1, p0, Lcom/deepe/a/g/a$a;->f:Landroid/content/Context;

    iget v2, p0, Lcom/deepe/a/g/a$a;->c:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/a/g/a;-><init>(Landroid/content/Context;FLcom/deepe/a/g/a;)V

    iget-boolean v1, p0, Lcom/deepe/a/g/a$a;->s:Z

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a;->setCancelable(Z)V

    iget-boolean v1, p0, Lcom/deepe/a/g/a$a;->s:Z

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/deepe/a/g/a$b;

    iget-object v2, p0, Lcom/deepe/a/g/a$a;->f:Landroid/content/Context;

    iget v4, p0, Lcom/deepe/a/g/a$a;->c:F

    invoke-direct {v1, v2, v4, v3}, Lcom/deepe/a/g/a$b;-><init>(Landroid/content/Context;FLcom/deepe/a/g/a$b;)V

    iget-object v2, p0, Lcom/deepe/a/g/a$a;->g:Ljava/lang/String;

    const/16 v3, 0x8

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->a(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/deepe/a/g/a$b;->a(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/deepe/a/g/a$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->a(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    iget v4, p0, Lcom/deepe/a/g/a$a;->q:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->l:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/deepe/a/g/a$a;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/deepe/a/g/a$a;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget-object v4, p0, Lcom/deepe/a/g/a$a;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget v4, p0, Lcom/deepe/a/g/a$a;->b:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->c(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Lcom/deepe/a/g/a$a$1;

    invoke-direct {v4, p0, v0}, Lcom/deepe/a/g/a$a$1;-><init>(Lcom/deepe/a/g/a$a;Lcom/deepe/a/g/a;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/deepe/a/g/a$b;->c(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->d(Lcom/deepe/a/g/a$b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->j:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget-object v5, p0, Lcom/deepe/a/g/a$a;->j:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget v5, p0, Lcom/deepe/a/g/a$a;->b:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Lcom/deepe/a/g/a$a$2;

    invoke-direct {v5, p0, v0}, Lcom/deepe/a/g/a$a$2;-><init>(Lcom/deepe/a/g/a$a;Lcom/deepe/a/g/a;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->e(Lcom/deepe/a/g/a$b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget v5, p0, Lcom/deepe/a/g/a$a;->c:F

    invoke-static {v4, v5}, Lcom/deepe/a/g/a;->a(ZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->k:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/a/g/a$a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget v3, p0, Lcom/deepe/a/g/a$a;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/deepe/a/g/a$a$3;

    invoke-direct {v3, p0, v0}, Lcom/deepe/a/g/a$a$3;-><init>(Lcom/deepe/a/g/a$a;Lcom/deepe/a/g/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/deepe/a/g/a$b;->f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->e(Lcom/deepe/a/g/a$b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget v3, p0, Lcom/deepe/a/g/a$a;->c:F

    invoke-static {v4, v3}, Lcom/deepe/a/g/a;->a(ZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->l:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->c(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/a/g/a$a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->g(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/a/g/a$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/deepe/a/g/a$b;->g(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/deepe/a/g/a$a;->r:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    iget-object v2, p0, Lcom/deepe/a/g/a$a;->p:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$b;->a(Landroid/view/View;)V

    :cond_6
    iget-boolean v2, p0, Lcom/deepe/a/g/a$a;->d:Z

    iget-object v3, p0, Lcom/deepe/a/g/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/deepe/a/g/a$b;->a(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/a/g/a$a;->i:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$b;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/deepe/a/g/a;->c()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/deepe/a/g/a;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v1}, Lcom/deepe/a/g/a;->a(Lcom/deepe/a/g/a;Lcom/deepe/a/g/a$b;)V

    return-object v0
.end method

.method public b(I)Lcom/deepe/a/g/a$a;
    .locals 0

    iput p1, p0, Lcom/deepe/a/g/a$a;->b:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/a/g/a$a;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(I)Lcom/deepe/a/g/a$a;
    .locals 0

    iput p1, p0, Lcom/deepe/a/g/a$a;->a:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/a/g/a$a;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
