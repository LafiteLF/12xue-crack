.class public Lcom/deepe/c/a/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/pm/PackageInfo;

.field private d:Landroid/content/pm/ApplicationInfo;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Y29tLmFwaWNsb3VkLmFwcGxvYWRlcg=="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/a/g;->a:Ljava/lang/String;

    const-string v0, "Y29tLnlvbnlvdS55b25kZXZlbG9wZXI="

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/a/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/a/g;->e:Z

    iput-boolean v0, p0, Lcom/deepe/c/a/g;->f:Z

    iput-boolean v0, p0, Lcom/deepe/c/a/g;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/a/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/deepe/c/a/g;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/deepe/c/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepe/c/a/g;->e:Z

    sget-object v0, Lcom/deepe/c/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepe/c/a/g;->f:Z

    iget-object p1, p0, Lcom/deepe/c/a/g;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/deepe/c/a/g;->h:Z

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/a/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/a/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x5880

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/deepe/c/a/g;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/a/g;->d:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/deepe/c/a/g;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "QVBJQ0xPVURfQ0hBTk5FTA=="

    invoke-static {p1}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/a/g;->h:Z

    return v0
.end method

.method public final b()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/a/g;->c:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/a/g;->f()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/g;->c:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final c()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/a/g;->d:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/a/g;->f()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/g;->d:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/a/g;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepe/c/a/g;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/a/g;->f:Z

    return v0
.end method
