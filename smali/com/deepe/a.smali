.class public final Lcom/deepe/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/deepe/a; = null

.field private static d:Z = false


# instance fields
.field private c:Lcom/deepe/c/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/deepe/a;
    .locals 2

    sget-object v0, Lcom/deepe/a;->b:Lcom/deepe/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call AppContext.initialize at first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/a;
    .locals 1

    sget-object v0, Lcom/deepe/a;->b:Lcom/deepe/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a;

    invoke-direct {v0}, Lcom/deepe/a;-><init>()V

    sput-object v0, Lcom/deepe/a;->b:Lcom/deepe/a;

    invoke-virtual {v0, p0}, Lcom/deepe/a;->b(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/deepe/a;->b:Lcom/deepe/a;

    return-object p0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepe/a;->d:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/a;->d:Z

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/deepe/a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/deepe/c/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a;->c:Lcom/deepe/c/k/b;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/deepe/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c()Lcom/deepe/c/k/b;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a;->c:Lcom/deepe/c/k/b;

    return-object v0
.end method

.method public e()V
    .locals 0

    invoke-static {}, Lcom/apicloud/a/b;->n()V

    return-void
.end method
