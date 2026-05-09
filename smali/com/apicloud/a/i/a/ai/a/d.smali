.class public Lcom/apicloud/a/i/a/ai/a/d;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ai/a/d$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnTouchListener;

.field private b:Lcom/apicloud/a/i/a/ai/a/d$a;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/StringBuilder;

.field private l:Ljava/util/Formatter;

.field private m:Lcom/apicloud/a/i/a/ai/a/h;

.field private n:Lcom/apicloud/a/i/a/ai/a/h;

.field private o:Lcom/apicloud/a/i/a/ai/a/b;

.field private p:Landroid/os/Handler;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private t:Landroid/view/animation/AlphaAnimation;

.field private u:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/d$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d$1;-><init>(Lcom/apicloud/a/i/a/ai/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/d$2;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d$2;-><init>(Lcom/apicloud/a/i/a/ai/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->a:Landroid/view/View$OnTouchListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/d$3;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d$3;-><init>(Lcom/apicloud/a/i/a/ai/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->q:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/d$4;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d$4;-><init>(Lcom/apicloud/a/i/a/ai/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->r:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/d$5;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d$5;-><init>(Lcom/apicloud/a/i/a/ai/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->s:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const p1, 0x66323232

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/d;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->q()V

    iput-object p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->h()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/d;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/d;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/apicloud/a/i/a/ai/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/a;->a()Lcom/apicloud/a/i/a/ai/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/a;->b()Lcom/apicloud/a/i/a/ai/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->n:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/a;->c()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->s:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/a;->e()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/a;->d()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->f:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->k:Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->k:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->l:Ljava/util/Formatter;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->h:Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->o:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/ai/a/b;->o(Z)V

    :cond_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 7

    div-int/lit16 p1, p1, 0x3e8

    rem-int/lit8 v0, p1, 0x3c

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    div-int/lit16 p1, p1, 0xe10

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->k:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-lez p1, :cond_0

    iget-object v5, p0, Lcom/apicloud/a/i/a/ai/a/d;->l:Ljava/util/Formatter;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->l:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/a/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ai/a/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/ai/a/d;)Z
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->k()V

    return-void
.end method

.method static synthetic f(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->l()V

    return-void
.end method

.method static synthetic g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    return-object p0
.end method

.method private g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/d$a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private h()I
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/d$a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/ai/a/d$a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->d:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    if-lez v1, :cond_1

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v5, v3

    int-to-long v3, v1

    div-long/2addr v5, v3

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {v2}, Lcom/apicloud/a/i/a/ai/a/d$a;->h()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/d;->d:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/d;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->b(Z)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->n:Lcom/apicloud/a/i/a/ai/a/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->i:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->b(Z)V

    return-void
.end method

.method static synthetic j(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->m()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/d$a;->b()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->o()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/d$a;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->n()V

    :goto_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    return-void
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->i:Z

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Z)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->j()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->o:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/b;->j()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->o:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/b;->k()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->o:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/b;->l()V

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/d$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 3

    new-instance v0, Lcom/apicloud/a/i/a/ai/a/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ai/a/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/a;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->r()V

    return-void
.end method

.method private r()V
    .locals 6

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->t:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->t:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->u:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->u:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->n:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/h;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->h()I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->g()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->t:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->j:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->o:Lcom/apicloud/a/i/a/ai/a/b;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->j:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->n:Lcom/apicloud/a/i/a/ai/a/h;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/h;->performClick()Z

    return-void
.end method

.method public d()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x4f

    const/16 v4, 0xbb8

    if-eq v0, v3, :cond_c

    const/16 v3, 0x55

    if-eq v0, v3, :cond_c

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_1

    goto :goto_4

    :cond_1
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->p()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ai/a/d$a;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    :cond_2
    return v2

    :cond_3
    const/16 v3, 0x56

    if-eq v0, v3, :cond_a

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x19

    if-eq v0, v3, :cond_9

    const/16 v3, 0x18

    if-eq v0, v3, :cond_9

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x52

    if-ne v0, v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_8
    return v2

    :cond_9
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->p()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d;->b:Lcom/apicloud/a/i/a/ai/a/d$a;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ai/a/d$a;->b()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->i()V

    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    :cond_b
    return v2

    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->k()V

    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    :cond_d
    return v2
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    return v0
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/d;->u:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaController"

    const-string v1, "already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->g:Z

    :cond_1
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->m:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a/h;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->n:Lcom/apicloud/a/i/a/ai/a/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a/h;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/d;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/d;->g()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method
