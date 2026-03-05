.class public final Lcom/uzmap/pkg/b/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;


# instance fields
.field d:I

.field private e:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/uzmap/pkg/b/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/b/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aHR0cHM6Ly93d3cuZ29vZ2xlLWFuYWx5dGljcy5jb20vY29sbGVjdA=="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/b/b/a;->a:Ljava/lang/String;

    const-string v0, "aHR0cHM6Ly93d3cuZ29vZ2xlLWFuYWx5dGljcy5jb20vYmF0Y2g="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/b/b/a;->b:Ljava/lang/String;

    const-string v0, "VUEtMTAxMDA2MzMzLTE="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/b/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/a;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/b/b/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/b/b/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/b/b/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "v=1&t=event&tid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/uzmap/pkg/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/a;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/a;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    div-int v2, v1, p1

    rem-int v3, v1, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    if-lez v3, :cond_2

    sub-int p1, v1, v3

    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    mul-int v5, v4, p1

    add-int v6, v5, p1

    invoke-interface {p0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/a;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/a;->f:Ljava/util/List;

    return-object p0
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->networkEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/b/a;)Lcom/deepe/c/i/v;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/a;->e:Lcom/deepe/c/i/v;

    return-object p0
.end method

.method private c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/b/b/a$a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/a;->e:Lcom/deepe/c/i/v;

    invoke-virtual {v1}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/a;->e:Lcom/deepe/c/i/v;

    invoke-virtual {v1}, Lcom/deepe/c/i/v;->clear()V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/b/b/a$a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/a;->e:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/a;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/a;->g:Z

    new-instance v0, Lcom/uzmap/pkg/b/b/a$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deepe-APITracker-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/b/b/a$1;-><init>(Lcom/uzmap/pkg/b/b/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/a$1;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/a$a;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/a$a;-><init>(Lcom/uzmap/pkg/b/b/a;)V

    iput-object p4, v0, Lcom/uzmap/pkg/b/b/a$a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/uzmap/pkg/b/b/a$a;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/uzmap/pkg/b/b/a$a;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/uzmap/pkg/b/b/a$a;->e:Ljava/lang/String;

    if-nez p5, :cond_0

    const-string p1, "android-apploader"

    goto :goto_0

    :cond_0
    const-string p1, "android-diy-apploader"

    :goto_0
    iput-object p1, v0, Lcom/uzmap/pkg/b/b/a$a;->d:Ljava/lang/String;

    iget p1, p0, Lcom/uzmap/pkg/b/b/a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uzmap/pkg/b/b/a;->d:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/a;->e:Lcom/deepe/c/i/v;

    invoke-virtual {p1, v0}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method
