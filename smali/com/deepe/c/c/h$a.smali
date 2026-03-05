.class Lcom/deepe/c/c/h$a;
.super Lcom/deepe/c/i/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/i/l<",
        "Ljava/lang/String;",
        "Lcom/deepe/c/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/h;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/deepe/c/c/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/h$a;->a:Lcom/deepe/c/c/h;

    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/deepe/c/i/l;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/deepe/c/c/h$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/c/h;Ljava/lang/String;Lcom/deepe/c/c/h$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/h$a;-><init>(Lcom/deepe/c/c/h;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/h$a;Ljava/lang/String;)Lcom/deepe/c/c/g;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/h$a;->a(Ljava/lang/String;)Lcom/deepe/c/c/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/h$a;Ljava/lang/String;Lcom/deepe/c/c/g;)Lcom/deepe/c/c/g;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/h$a;->b(Ljava/lang/String;Lcom/deepe/c/c/g;)Lcom/deepe/c/c/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/deepe/c/c/g;
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/deepe/c/c/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/deepe/c/c/h$a;->a:Lcom/deepe/c/c/h;

    invoke-static {v1}, Lcom/deepe/c/c/h;->a(Lcom/deepe/c/c/h;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/h$a;->a(Ljava/lang/String;Ljava/io/File;)Lcom/deepe/c/c/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepe/c/c/h$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/g;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/io/File;)Lcom/deepe/c/c/g;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/deepe/c/c/g;

    invoke-direct {v0}, Lcom/deepe/c/c/g;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/deepe/c/c/g;->d:J

    invoke-static {p2}, Lcom/deepe/c/c/h;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/c/h$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/c/c/h$a;->b()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/h$a;->a:Lcom/deepe/c/c/h;

    invoke-static {p1}, Lcom/deepe/c/c/h;->b(Lcom/deepe/c/c/h;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/h$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/h$a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/h$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/h$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/h$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/h$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/c/h$a;->b:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/c/h$a;->b:Z

    return v0
.end method

.method private b(Ljava/lang/String;Lcom/deepe/c/c/g;)Lcom/deepe/c/c/g;
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/c/h$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepe/c/c/h$a;->a(Z)V

    new-instance p1, Lcom/deepe/c/c/h$a$1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-InitImageDiskCache-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/deepe/c/c/h$a$1;-><init>(Lcom/deepe/c/c/h$a;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/h$a$1;->start()V

    return-void
.end method

.method private c()V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/deepe/c/c/h$a;->a:Lcom/deepe/c/c/h;

    invoke-static {v1}, Lcom/deepe/c/c/h;->a(Lcom/deepe/c/c/h;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/deepe/c/c/h$a;->a(Ljava/lang/String;Ljava/io/File;)Lcom/deepe/c/c/g;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/deepe/c/c/g;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/c/h$a;->a(Ljava/lang/String;Lcom/deepe/c/c/g;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Lcom/deepe/c/c/g;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/deepe/c/c/g;->c()I

    move-result p1

    return p1
.end method
