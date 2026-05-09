.class public Lcom/apicloud/a/f/e/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/f/e/c$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private final b:Lcom/apicloud/a/d;

.field private c:J

.field private d:Lcom/apicloud/a/f/e/c$a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/e/c;->b:Lcom/apicloud/a/d;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/f/e/c;)Lcom/apicloud/a/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/f/e/c;->b:Lcom/apicloud/a/d;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/f/e/c;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/f/e/c;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/e/c;->b:Lcom/apicloud/a/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/e/c;->b:Lcom/apicloud/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/f/e/c;->b()V

    new-instance v0, Lcom/apicloud/a/f/e/c$a;

    iget-wide v1, p0, Lcom/apicloud/a/f/e/c;->c:J

    iget-boolean v3, p0, Lcom/apicloud/a/f/e/c;->a:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/apicloud/a/f/e/c$a;-><init>(Lcom/apicloud/a/f/e/c;JZ)V

    iput-object v0, p0, Lcom/apicloud/a/f/e/c;->d:Lcom/apicloud/a/f/e/c$a;

    iget-wide v1, p0, Lcom/apicloud/a/f/e/c;->c:J

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/a/f/e/c;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/f/e/c;->c:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/f/e/c;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/e/c;->d:Lcom/apicloud/a/f/e/c$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/f/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
