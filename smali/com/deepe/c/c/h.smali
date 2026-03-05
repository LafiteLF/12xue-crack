.class Lcom/deepe/c/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/j$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/h$a;
    }
.end annotation


# static fields
.field private static d:Lcom/deepe/c/c/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/deepe/c/c/h$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/h;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v2, "disk"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/h;->a:Ljava/lang/String;

    new-instance v0, Lcom/deepe/c/c/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/deepe/c/c/h$a;-><init>(Lcom/deepe/c/c/h;Ljava/lang/String;Lcom/deepe/c/c/h$a;)V

    iput-object v0, p0, Lcom/deepe/c/c/h;->c:Lcom/deepe/c/c/h$a;

    sget-object p1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Lcom/deepe/c/c/h;->a(J)V

    sput-object v1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    :cond_0
    sput-object p0, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    return-void
.end method

.method static final declared-synchronized a(Ljava/lang/String;)Lcom/deepe/c/c/h;
    .locals 4

    const-class v0, Lcom/deepe/c/c/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    invoke-direct {v1, p0}, Lcom/deepe/c/c/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/deepe/c/c/h;->a(J)V

    :cond_1
    new-instance v1, Lcom/deepe/c/c/h;

    invoke-direct {v1, p0}, Lcom/deepe/c/c/h;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/deepe/c/c/h;->d:Lcom/deepe/c/c/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Ljava/io/File;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/thumb/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/deepe/c/c/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/deepe/c/c/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/h;->c:Lcom/deepe/c/c/h$a;

    invoke-static {v0, p1, p2}, Lcom/deepe/c/c/h$a;->a(Lcom/deepe/c/c/h$a;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/c/g;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/h;->c:Lcom/deepe/c/c/h$a;

    invoke-static {v0, p1, p2}, Lcom/deepe/c/c/h$a;->a(Lcom/deepe/c/c/h$a;Ljava/lang/String;Lcom/deepe/c/c/g;)Lcom/deepe/c/c/g;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/deepe/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/h;->c:Lcom/deepe/c/c/h$a;

    invoke-static {v0, p1}, Lcom/deepe/c/c/h$a;->a(Lcom/deepe/c/c/h$a;Ljava/lang/String;)Lcom/deepe/c/c/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/h;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
