.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;
.super Ljava/lang/Object;
.source "DownloadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->deleteUnzipFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

.field final synthetic val$unzipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Ljava/io/File;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;->val$unzipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;->val$unzipFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->deleteFile(Ljava/io/File;Z)V

    return-void
.end method
