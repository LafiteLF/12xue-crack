.class public abstract Lcom/uzmap/pkg/uzcore/g/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/lang/String;F)V
    .locals 4

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    long-to-float p1, v2

    mul-float/2addr p2, p1

    float-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deepe-AppCacheClear-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/g/b;->a(Z)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    invoke-static {v1, v4, v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    invoke-static {v0, v4, v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/c/e;->a(J)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/uzmap/pkg/uzcore/g/b$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/g/f;->a(Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g/b$a;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/g/b;->a(Z)V

    return-void
.end method
