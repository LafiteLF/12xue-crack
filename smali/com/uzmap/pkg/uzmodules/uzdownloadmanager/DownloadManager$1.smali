.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

.field final synthetic val$baseDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;->val$baseDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 758
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;->val$baseDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->deleteFile(Ljava/io/File;Z)V

    return-void
.end method
