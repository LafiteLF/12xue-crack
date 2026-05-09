.class public Lcom/deepe/c/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/a/b$a;,
        Lcom/deepe/c/a/b$b;,
        Lcom/deepe/c/a/b$c;
    }
.end annotation


# static fields
.field private static a:Lcom/deepe/c/a/b;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/deepe/c/a/b$a;

.field private d:Landroid/app/Application;

.field private e:Lcom/deepe/c/a/b$b;

.field private f:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/deepe/c/a/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/uzmap/pkg/EntranceActivity;

    sput-object v0, Lcom/deepe/c/a/b;->b:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/i/v;

    invoke-direct {v0}, Lcom/deepe/c/i/v;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/a/b;->f:Lcom/deepe/c/i/v;

    return-void
.end method

.method public static a()Lcom/deepe/c/a/b;
    .locals 1

    sget-object v0, Lcom/deepe/c/a/b;->a:Lcom/deepe/c/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/a/b;

    invoke-direct {v0}, Lcom/deepe/c/a/b;-><init>()V

    sput-object v0, Lcom/deepe/c/a/b;->a:Lcom/deepe/c/a/b;

    :cond_0
    sget-object v0, Lcom/deepe/c/a/b;->a:Lcom/deepe/c/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/a/b;->f:Lcom/deepe/c/i/v;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/a/b;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/deepe/c/a/b;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/deepe/c/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/deepe/c/a/b;->d:Landroid/app/Application;

    iget-object p1, p0, Lcom/deepe/c/a/b;->c:Lcom/deepe/c/a/b$a;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/deepe/c/a/b$a;

    invoke-direct {p1, p0, v0}, Lcom/deepe/c/a/b$a;-><init>(Lcom/deepe/c/a/b;Lcom/deepe/c/a/b$a;)V

    iput-object p1, p0, Lcom/deepe/c/a/b;->c:Lcom/deepe/c/a/b$a;

    iget-object v1, p0, Lcom/deepe/c/a/b;->d:Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/a/b;->e:Lcom/deepe/c/a/b$b;

    if-nez p1, :cond_2

    new-instance p1, Lcom/deepe/c/a/b$b;

    invoke-direct {p1, p0, v0}, Lcom/deepe/c/a/b$b;-><init>(Lcom/deepe/c/a/b;Lcom/deepe/c/a/b$b;)V

    iput-object p1, p0, Lcom/deepe/c/a/b;->e:Lcom/deepe/c/a/b$b;

    iget-object v0, p0, Lcom/deepe/c/a/b;->d:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/deepe/c/a/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/a/b;->f:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/a/b;->f:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/deepe/c/a/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/a/b;->f:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/deepe/c/a/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/b;->c:Lcom/deepe/c/a/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/a/b$a;->a()Z

    move-result v1

    :cond_1
    return v1
.end method
