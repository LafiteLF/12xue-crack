.class public Lcom/apicloud/a/i/a/y/a/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/y/a/n$a;,
        Lcom/apicloud/a/i/a/y/a/n$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/apicloud/a/d;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/apicloud/a/i/a/y/a/g;

.field private e:Lcom/apicloud/a/i/a/y/a/m;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->b:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/a/n;->c:Landroid/widget/TextView;

    return-void
.end method

.method private a()I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/apicloud/a/a/d;->c:I

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/y/a/n;)Lcom/apicloud/a/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/y/a/n;->b:Lcom/apicloud/a/d;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/y/a/n;)I
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/n;->a()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/y/a/n;)Lcom/apicloud/a/i/a/y/a/m;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/y/a/n;->e:Lcom/apicloud/a/i/a/y/a/m;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/i/a/y/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->e:Lcom/apicloud/a/i/a/y/a/m;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->a:Ljava/lang/String;

    new-instance p1, Lcom/apicloud/a/i/a/y/a/g;

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/y/a/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->d:Lcom/apicloud/a/i/a/y/a/g;

    new-instance v0, Lcom/apicloud/a/i/a/y/a/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/y/a/n$a;-><init>(Lcom/apicloud/a/i/a/y/a/n;Lcom/apicloud/a/i/a/y/a/n$a;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/y/a/g;->a(Lcom/apicloud/a/i/a/y/a/c;)Lcom/apicloud/a/i/a/y/a/g;

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->d:Lcom/apicloud/a/i/a/y/a/g;

    new-instance v0, Lcom/apicloud/a/i/a/y/a/n$b;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/y/a/n$b;-><init>(Lcom/apicloud/a/i/a/y/a/n;Lcom/apicloud/a/i/a/y/a/n$b;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/y/a/g;->a(Lcom/apicloud/a/i/a/y/a/m;)Lcom/apicloud/a/i/a/y/a/g;

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/n;->d:Lcom/apicloud/a/i/a/y/a/g;

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/n;->b:Lcom/apicloud/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/y/a/g;->a(Landroid/widget/TextView;Lcom/apicloud/a/d;)V

    return-void
.end method
