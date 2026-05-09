.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;
.super Ljava/lang/Object;
.source "DownloadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lorg/json/JSONObject;)V

    .line 201
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->access$302(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
