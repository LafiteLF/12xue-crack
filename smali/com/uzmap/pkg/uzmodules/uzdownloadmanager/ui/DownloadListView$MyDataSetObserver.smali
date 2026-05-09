.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DownloadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$1;)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    return-void
.end method
