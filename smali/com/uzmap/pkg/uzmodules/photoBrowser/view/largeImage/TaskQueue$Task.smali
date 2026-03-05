.class abstract Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;
.super Landroid/os/AsyncTask;
.source "TaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->doInBackground()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract doInBackground()V
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onCancelled(Ljava/lang/Void;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPostExecute()V

    return-void
.end method
