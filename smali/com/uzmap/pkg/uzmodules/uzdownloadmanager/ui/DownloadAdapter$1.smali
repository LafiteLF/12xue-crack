.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;
.super Ljava/lang/Object;
.source "DownloadAdapter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->retrieveAndSetIcon(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

.field final synthetic val$convertView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;->val$convertView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILandroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 216
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;->val$convertView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;->val$convertView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    :goto_0
    return-void
.end method
