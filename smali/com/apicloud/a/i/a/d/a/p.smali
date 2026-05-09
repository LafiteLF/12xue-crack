.class abstract Lcom/apicloud/a/i/a/d/a/p;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;

.field protected c:Landroid/view/Surface;

.field protected d:Ljava/io/File;

.field protected e:Ljava/io/File;

.field protected f:Lcom/apicloud/a/i/a/d/a/o;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/p;->g:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/p;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/p;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    return-object v0
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/p;->c:Landroid/view/Surface;

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/d/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/p;->f:Lcom/apicloud/a/i/a/d/a/o;

    return-void
.end method

.method public abstract a(Lcom/apicloud/a/i/a/d/a/s;)V
.end method

.method public final a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/p;->d:Ljava/io/File;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/p;->b:Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/p;->g:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/p;->g:Z

    return v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->f:Lcom/apicloud/a/i/a/d/a/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/d/a/o;->a(Ljava/io/File;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    return-void
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/p;->e:Ljava/io/File;

    return-void
.end method

.method public abstract e()V
.end method
