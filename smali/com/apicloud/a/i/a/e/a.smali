.class final Lcom/apicloud/a/i/a/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private final b:Lcom/apicloud/a/i/a/e/b;

.field private c:J

.field private d:Lcom/apicloud/a/i/a/e/a$a;

.field private e:Lcom/apicloud/a/c/l;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/e/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lcom/apicloud/a/i/a/e/a;->c:J

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/a;->b:Lcom/apicloud/a/i/a/e/b;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a;->e:Lcom/apicloud/a/c/l;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/e/a;)Lcom/apicloud/a/c/l;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/e/a;->e:Lcom/apicloud/a/c/l;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/e/a;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a;->b:Lcom/apicloud/a/i/a/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a;->b:Lcom/apicloud/a/i/a/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a;->b()V

    new-instance v0, Lcom/apicloud/a/i/a/e/a$a;

    iget-wide v1, p0, Lcom/apicloud/a/i/a/e/a;->c:J

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/apicloud/a/i/a/e/a$a;-><init>(Lcom/apicloud/a/i/a/e/a;JLcom/apicloud/a/i/a/e/a$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a;->d:Lcom/apicloud/a/i/a/e/a$a;

    iget-wide v1, p0, Lcom/apicloud/a/i/a/e/a;->c:J

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/a/i/a/e/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a;->d:Lcom/apicloud/a/i/a/e/a$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/e/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
