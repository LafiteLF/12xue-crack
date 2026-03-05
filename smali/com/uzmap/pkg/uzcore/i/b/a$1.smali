.class Lcom/uzmap/pkg/uzcore/i/b/a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Landroid/app/DownloadManager;

.field private final synthetic c:Landroid/app/DownloadManager$Request;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->b:Landroid/app/DownloadManager;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->c:Landroid/app/DownloadManager$Request;

    iput-object p5, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->b:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->c:Landroid/app/DownloadManager$Request;

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->c:Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->b:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$1;->c:Landroid/app/DownloadManager$Request;

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d..."

    goto :goto_0

    :cond_1
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25..."

    :goto_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void
.end method
