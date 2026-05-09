.class Landroids/SimpleAsyncTask$3;
.super Landroids/SimpleAsyncTask$WorkerRunnable;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/SimpleAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroids/SimpleAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroids/SimpleAsyncTask;


# direct methods
.method constructor <init>(Landroids/SimpleAsyncTask;)V
    .locals 0

    .line 170
    iput-object p1, p0, Landroids/SimpleAsyncTask$3;->this$0:Landroids/SimpleAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroids/SimpleAsyncTask$WorkerRunnable;-><init>(Landroids/SimpleAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroids/SimpleAsyncTask$3;->this$0:Landroids/SimpleAsyncTask;

    invoke-static {v0}, Landroids/SimpleAsyncTask;->access$400(Landroids/SimpleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 174
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 176
    iget-object v0, p0, Landroids/SimpleAsyncTask$3;->this$0:Landroids/SimpleAsyncTask;

    iget-object v1, p0, Landroids/SimpleAsyncTask$3;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroids/SimpleAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 178
    iget-object v1, p0, Landroids/SimpleAsyncTask$3;->this$0:Landroids/SimpleAsyncTask;

    invoke-static {v1, v0}, Landroids/SimpleAsyncTask;->access$500(Landroids/SimpleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
