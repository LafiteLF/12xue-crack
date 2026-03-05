.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# instance fields
.field private final mDownloadSpeed:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadTouch:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseArray;

    .line 22
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public notifyDownloadSpeed(JJ)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseArray;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseArray;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 36
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 39
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 41
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
