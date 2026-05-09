.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;
    }
.end annotation


# static fields
.field private static final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->cancel(Z)Z

    return-void
.end method
