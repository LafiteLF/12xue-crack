.class public Lcom/uzmap/pkg/uzapp/UPExtraBridge;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;,
        Lcom/uzmap/pkg/uzapp/UPExtraBridge$DownloadReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzapp/UPExtraBridge$DownloadReceiver;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzapp/UPExtraBridge$DownloadReceiver;-><init>(Lcom/uzmap/pkg/uzapp/UPExtraBridge$a;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/b;->a()Lcom/uzmap/pkg/uzapp/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzapp/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
