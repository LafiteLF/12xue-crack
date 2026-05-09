.class public Lcom/deepe/a/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/c/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/location/LocationManager;

.field private d:Lcom/deepe/a/c/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/c/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/a/c/h;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/deepe/a/c/i;

    invoke-direct {v0, p0}, Lcom/deepe/a/c/i;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/deepe/a/c/h;

    invoke-direct {v0, p0}, Lcom/deepe/a/c/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/a/c/h;->d()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/deepe/a/c/b;->a(Ljava/lang/Integer;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/c/h;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/h;->d:Lcom/deepe/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/c/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/a/c/h;->d:Lcom/deepe/a/c/a;

    :cond_0
    return-void
.end method

.method protected final a(JLcom/deepe/a/c/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/a/c/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepe/a/c/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/deepe/a/c/h;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepe/a/c/h;->a(JLcom/deepe/a/c/c;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "provider "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/deepe/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/deepe/a/c/h;->a(JLjava/lang/String;Lcom/deepe/a/c/c;)V

    return-void
.end method

.method protected a(JLjava/lang/String;Lcom/deepe/a/c/c;)V
    .locals 8

    new-instance v7, Lcom/deepe/a/c/h$2;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/deepe/a/c/h$2;-><init>(Lcom/deepe/a/c/h;JJLcom/deepe/a/c/c;)V

    invoke-virtual {p0, v7}, Lcom/deepe/a/c/h;->a(Lcom/deepe/a/c/a;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/deepe/a/c/h;->d()Landroid/location/LocationManager;

    move-result-object p2

    invoke-virtual {p2, p3, v7, p1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-virtual {v7}, Lcom/deepe/a/c/h$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/deepe/a/c/h;->a(Lcom/deepe/a/c/a;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "exception: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/deepe/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected final a(Lcom/deepe/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/h;->d:Lcom/deepe/a/c/a;

    return-void
.end method

.method public final a(Lcom/deepe/a/c/d;Lcom/deepe/a/c/c;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/a/c/d;->e:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/deepe/a/c/h;->a(Ljava/lang/Integer;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepe/a/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "none providers effective."

    invoke-virtual {p2, p1}, Lcom/deepe/a/c/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/a/c/h$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/deepe/a/c/h$1;-><init>(Lcom/deepe/a/c/h;Lcom/deepe/a/c/d;Lcom/deepe/a/c/c;)V

    invoke-static {v0}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/a/c/h;->d()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/h;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/c/h;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final d()Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/h;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/c/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->o(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/a/c/h;->c:Landroid/location/LocationManager;

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/c/h;->c:Landroid/location/LocationManager;

    return-object v0
.end method
