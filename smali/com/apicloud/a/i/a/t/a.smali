.class public Lcom/apicloud/a/i/a/t/a;
.super Lcom/apicloud/a/i/a/aj/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:J

.field d:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/apicloud/a/i/a/t/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aj/b;-><init>(Lcom/apicloud/a/d;)V

    const-string p1, "self"

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->g:Ljava/lang/String;

    const-string p1, "navigate"

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->i:Ljava/lang/String;

    const-string p1, "release"

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->n:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/a/i/a/t/a;->o:I

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/apicloud/a/i/a/t/a;->c:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/apicloud/a/i/a/t/a;->d:J

    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->b()V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/t/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/t/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/t/a$1;-><init>(Lcom/apicloud/a/i/a/t/a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/t/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/t/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->g:Ljava/lang/String;

    const-string v1, "self"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->i:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->l()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->k()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "navigate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->d()V

    goto :goto_1

    :sswitch_1
    const-string v1, "switchTab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->f()V

    goto :goto_1

    :sswitch_2
    const-string v1, "redirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->j()V

    goto :goto_1

    :sswitch_3
    const-string v1, "navigateBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->e()V

    goto :goto_1

    :sswitch_4
    const-string v1, "reLaunch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->g()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57a6943a -> :sswitch_4
        -0x3aa12208 -> :sswitch_3
        -0x2e430824 -> :sswitch_2
        0x626dd3c1 -> :sswitch_1
        0x7d518571 -> :sswitch_0
    .end sparse-switch
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    const-string v2, "navigationBar"

    invoke-virtual {v1, v2}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/apicloud/a/c;

    invoke-direct {v3}, Lcom/apicloud/a/c;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->h:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "navigateToOpen"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "arg"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/16 v2, 0x70

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    return-void
.end method

.method private e()V
    .locals 5

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    new-instance v2, Lcom/apicloud/a/c;

    invoke-direct {v2}, Lcom/apicloud/a/c;-><init>()V

    const-string v3, "type"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "animation"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lcom/apicloud/a/i/a/t/a;->o:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "delta"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "arg"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->h:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "arg"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    return-void
.end method

.method private g()V
    .locals 5

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    new-instance v2, Lcom/apicloud/a/c;

    invoke-direct {v2}, Lcom/apicloud/a/c;-><init>()V

    const-string v3, "type"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "animation"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "name"

    const-string v3, "root"

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "arg"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    return-void
.end method

.method private j()V
    .locals 4

    invoke-direct {p0}, Lcom/apicloud/a/i/a/t/a;->d()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/t/a$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/t/a$2;-><init>(Lcom/apicloud/a/i/a/t/a;)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private k()V
    .locals 5

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->i:Ljava/lang/String;

    const-string v3, "navigate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->l:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string v3, "appParam"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->n:Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "uri"

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->m:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/t/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->j:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/t/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidPkg"

    invoke-virtual {v1, v4, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/apicloud/a/i/a/t/a;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    if-nez v1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/t/d;->d(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/t/a$3;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/t/a$3;-><init>(Lcom/apicloud/a/i/a/t/a;)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private l()V
    .locals 4

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    new-instance v1, Lcom/apicloud/a/c;

    invoke-direct {v1}, Lcom/apicloud/a/c;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "silent"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/a;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/apicloud/a/f/a/a;->a(ILcom/apicloud/a/c;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Lcom/apicloud/a/i/a/t/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    return-object v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/t/a;->o:I

    return-void
.end method

.method a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/t/a;->c:J

    return-void
.end method

.method a(Lcom/apicloud/a/i/a/t/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->p:Lcom/apicloud/a/i/a/t/d;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->l:Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->g:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/t/a;->b:Z

    return-void
.end method

.method b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/t/a;->d:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->h:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->i:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->j:Ljava/lang/String;

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->k:Ljava/lang/String;

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->n:Ljava/lang/String;

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->m:Ljava/lang/String;

    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[navigator]"

    return-object v0
.end method
