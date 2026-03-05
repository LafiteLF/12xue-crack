.class public Lcom/uzmap/pkg/uzcore/g/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/g/b$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->h(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_2
    return-wide v2
.end method

.method static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/g/b;->b(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/g/b;->a:Z

    return v0
.end method

.method private static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/uzmap/pkg/uzcore/g/b;->a:Z

    return-void
.end method
