.class public Lcom/apicloud/a/i/a/d/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/apicloud/a/i/a/d/a/h;

.field private static b:I


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/apicloud/a/i/a/d/a/h;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/d/a/h;->a:Lcom/apicloud/a/i/a/d/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/a/h;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/d/a/h;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/h;->a:Lcom/apicloud/a/i/a/d/a/h;

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/d/a/h;->a:Lcom/apicloud/a/i/a/d/a/h;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-static {}, Lcom/apicloud/a/i/a/d/a/h;->a()Lcom/apicloud/a/i/a/d/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/h;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    sget v0, Lcom/apicloud/a/i/a/d/a/h;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apicloud/a/i/a/d/a/h;->b:I

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "camera-data#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/apicloud/a/i/a/d/a/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/h;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method
