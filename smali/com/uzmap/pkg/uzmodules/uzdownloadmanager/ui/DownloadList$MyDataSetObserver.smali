.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    return-void
.end method
