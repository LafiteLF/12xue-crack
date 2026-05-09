.class Lcom/apicloud/a/i/a/d/a/b;
.super Lcom/apicloud/a/i/a/d/a/f;


# static fields
.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/hardware/Camera;

.field private e:I

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Landroid/hardware/Camera$Parameters;

.field private final h:Landroid/hardware/Camera$CameraInfo;

.field private final i:Lcom/apicloud/a/i/a/d/a/l;

.field private final j:Lcom/apicloud/a/i/a/d/a/l;

.field private k:Lcom/apicloud/a/i/a/d/a/a;

.field private l:Z

.field private m:Z

.field private n:Lcom/apicloud/a/i/a/d/a;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/apicloud/a/i/a/d/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "red-eye"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/d/a/f;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/l;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/l;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/l;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/l;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/b$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/d/a/b$1;-><init>(Lcom/apicloud/a/i/a/d/a/b;)V

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/d/a/j;->a(Lcom/apicloud/a/i/a/d/a/j$a;)V

    return-void
.end method

.method private a(Ljava/util/SortedSet;)Lcom/apicloud/a/i/a/d/a/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/apicloud/a/i/a/d/a/k;",
            ">;)",
            "Lcom/apicloud/a/i/a/d/a/k;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/d/a/k;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->h()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->i()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/d/a/b;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return-object v2

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v3

    if-gt v1, v3, :cond_2

    return-object v2
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(Lcom/apicloud/a/i/a/d/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Z)Z
    .locals 3

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/b;->m:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "continuous-picture"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "fixed"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "infinity"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private d(I)I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int p1, v0, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private e(I)I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private f(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private g(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    return v3

    :cond_0
    sget-object p1, Lcom/apicloud/a/i/a/d/a/b;->d:Landroid/util/SparseArray;

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iput v1, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    return v3

    :cond_3
    iput p1, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    return v1
.end method

.method private n()V
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/a/d/a/b;->e:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->h:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v3, p0, Lcom/apicloud/a/i/a/d/a/b;->o:I

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/apicloud/a/i/a/d/a/b;->e:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/b;->r()V

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->e:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/apicloud/a/i/a/d/a/g;->a:Lcom/apicloud/a/i/a/d/a/a;

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->l()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/d/a/b;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/d/a/f$a;->a()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    new-instance v3, Lcom/apicloud/a/i/a/d/a/k;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    new-instance v3, Lcom/apicloud/a/i/a/d/a/k;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v1}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    goto :goto_0
.end method

.method private q()Lcom/apicloud/a/i/a/d/a/a;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/a;

    sget-object v2, Lcom/apicloud/a/i/a/d/a/g;->a:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/d/a/f$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/d/a/b;->o:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->b()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->a()Z

    :cond_1
    return-void
.end method

.method a(Lcom/apicloud/a/i/a/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->n:Lcom/apicloud/a/i/a/d/a;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->b(Lcom/apicloud/a/i/a/d/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method a(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/a/q;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/d/a/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->a()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    new-instance v1, Lcom/apicloud/a/i/a/d/a/b$4;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/d/a/b$4;-><init>(Lcom/apicloud/a/i/a/d/a/b;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Lcom/apicloud/a/i/a/d/a/o;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/p;->a(Ljava/io/File;)V

    new-instance p1, Lcom/apicloud/a/i/a/d/a/s;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/s;-><init>()V

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/d/a/b;->e(I)I

    move-result v0

    iput v0, p1, Lcom/apicloud/a/i/a/d/a/s;->c:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/l;->d(Lcom/apicloud/a/i/a/d/a/a;)Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v1

    iput v1, p1, Lcom/apicloud/a/i/a/d/a/s;->a:I

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v0

    iput v0, p1, Lcom/apicloud/a/i/a/d/a/s;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/p;->a(Lcom/apicloud/a/i/a/d/a/s;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->m:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method a()Z
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/b;->n()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/b;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->c()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->l:Z

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    return v0
.end method

.method a(Lcom/apicloud/a/i/a/d/a/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->l()V

    return v1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    return v1
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->l:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/b;->r()V

    return-void
.end method

.method b(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->g(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->c()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/SurfaceHolder;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->f()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method c(I)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/b;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->o:I

    return v0
.end method

.method f()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/d/a/a;

    iget-object v3, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v3, v2}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    goto :goto_0
.end method

.method g()Lcom/apicloud/a/i/a/d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    return-object v0
.end method

.method h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->m:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "continuous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    return v0
.end method

.method j()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    new-instance v1, Lcom/apicloud/a/i/a/d/a/b$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/d/a/b$2;-><init>(Lcom/apicloud/a/i/a/d/a/b;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/b;->k()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera is not ready. Call start() before takePicture()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method k()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    new-instance v1, Lcom/apicloud/a/i/a/d/a/b$3;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/d/a/b$3;-><init>(Lcom/apicloud/a/i/a/d/a/b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    return-void
.end method

.method l()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/b;->q()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->i:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/d/a/b;->a(Ljava/util/SortedSet;)Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->j:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->k:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/d/a/l;->d(Lcom/apicloud/a/i/a/d/a/a;)Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/d/a/b;->l:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->q:I

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/d/a/b;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->m:Z

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/d/a/b;->b(Z)Z

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/b;->p:I

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/d/a/b;->g(I)Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/b;->g:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/b;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_2
    return-void
.end method

.method m()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b;->r:Lcom/apicloud/a/i/a/d/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/p;->e()V

    :cond_0
    return-void
.end method
