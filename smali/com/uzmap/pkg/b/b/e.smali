.class public Lcom/uzmap/pkg/b/b/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/uzmap/pkg/b/b/e;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/uzmap/pkg/b/b/f;

.field private f:Lcom/uzmap/pkg/b/b/m;

.field private g:Lcom/uzmap/pkg/b/b/i;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/uzmap/pkg/b/b/a;

.field private final p:Landroid/os/Handler;

.field private q:Lcom/uzmap/pkg/b/b/n$a;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Lcom/uzmap/pkg/b/b/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/b/b/e;->a:Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/b/b/e;->a:Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "warn"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/b/b/e;->a:Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/b/b/e;->a:Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->p:Landroid/os/Handler;

    new-instance v0, Lcom/uzmap/pkg/b/b/e$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/e$1;-><init>(Lcom/uzmap/pkg/b/b/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->q:Lcom/uzmap/pkg/b/b/n$a;

    new-instance v0, Lcom/uzmap/pkg/b/b/e$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/e$2;-><init>(Lcom/uzmap/pkg/b/b/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/uzmap/pkg/b/b/e$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/e$3;-><init>(Lcom/uzmap/pkg/b/b/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->s:Ljava/lang/Runnable;

    new-instance v0, Lcom/uzmap/pkg/b/b/e$4;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/e$4;-><init>(Lcom/uzmap/pkg/b/b/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->t:Lcom/uzmap/pkg/b/b/m$b;

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    invoke-static {}, Lcom/uzmap/pkg/b/b/c;->a()Lcom/uzmap/pkg/b/b/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/b/b/c;->a(Lcom/uzmap/pkg/b/b/e;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/b/e;->b:Lcom/uzmap/pkg/b/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/e;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/b/b/e;->b:Lcom/uzmap/pkg/b/b/e;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/b/e;->b:Lcom/uzmap/pkg/b/b/e;

    return-object p0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/e;->e:Lcom/uzmap/pkg/b/b/f;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->e:Lcom/uzmap/pkg/b/b/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/e;->i:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/uzmap/pkg/b/b/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/e;->i()V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->f()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e;->j:Ljava/lang/String;

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/b/b/i;->c(Ljava/lang/String;)J

    move-result-wide v1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v1, 0x0

    :cond_1
    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/e;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Z)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DebugJob :: setAvailable: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/e;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/b/b/b;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/b/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, v0, Lcom/uzmap/pkg/b/b/b;->a:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/i;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/b/b/e$5;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/b/b/e$5;-><init>(Lcom/uzmap/pkg/b/b/e;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e;->e:Lcom/uzmap/pkg/b/b/f;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/e;->h()V

    new-instance p1, Lcom/uzmap/pkg/b/b/n;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/b/b/n;-><init>(Lcom/uzmap/pkg/b/b/e;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/b/b/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/b/b/n;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/b/b/n;->a(J)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->q:Lcom/uzmap/pkg/b/b/n$a;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/b/b/n;->a(Lcom/uzmap/pkg/b/b/n$a;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/n;->start()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/b;->e()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/String;Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->o:Lcom/uzmap/pkg/b/b/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/a;->a()V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e;->s:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    const-string p1, " DebugJob pongApiTracker ....."

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/e;->i()V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/b/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->f:Lcom/uzmap/pkg/b/b/m;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(I)V

    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    const/4 v0, 0x4

    const-string v1, "command"

    invoke-virtual {p1, v1, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e;->r:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    const-string p1, " DebugJob pongPong ....."

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->f:Lcom/uzmap/pkg/b/b/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/m;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/e;->f:Lcom/uzmap/pkg/b/b/m;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/b/e;->c(Z)V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->n:Z

    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->n:Z

    return-void
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->n:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/b/e;->b(Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->b()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const/16 v1, 0x8

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object v1, Lcom/uzmap/pkg/b/b/e;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "tag"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "content"

    invoke-virtual {v0, p1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/uzmap/pkg/b/b/i;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e;->e:Lcom/uzmap/pkg/b/b/f;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    iget-object p2, p0, Lcom/uzmap/pkg/b/b/e;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->o:Lcom/uzmap/pkg/b/b/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/uzmap/pkg/b/b/e;->l:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/uzmap/pkg/b/b/e;->m:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/uzmap/pkg/b/b/e;->k:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/e;->m:Z

    iput-object p3, p0, Lcom/uzmap/pkg/b/b/e;->l:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->g:Lcom/uzmap/pkg/b/b/i;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/b/b/e;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/b/b/e;->i:Ljava/lang/String;

    new-instance v1, Lcom/uzmap/pkg/b/b/m;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/b/b/m;-><init>(Ljava/net/URI;)V

    iput-object v1, p0, Lcom/uzmap/pkg/b/b/e;->f:Lcom/uzmap/pkg/b/b/m;

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->t:Lcom/uzmap/pkg/b/b/m$b;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/b/b/m;->a(Lcom/uzmap/pkg/b/b/m$b;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e;->f:Lcom/uzmap/pkg/b/b/m;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/m;->j()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/e;->g()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/e;->m:Z

    return v0
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const/16 v1, 0x9

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "product"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/b/e;->c(Ljava/lang/String;)V

    return-void
.end method
