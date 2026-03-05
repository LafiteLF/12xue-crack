.class public Lcom/apicloud/devlop/FNImageClip/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private filePaths:[Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private mimeTypes:[Ljava/lang/String;

.field private scanTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->scanTimes:I

    .line 21
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    const/4 v0, 0x0

    .line 47
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->filePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->filePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mimeTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mimeTypes:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 67
    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->scanTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->scanTimes:I

    .line 68
    iget-object p2, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->filePaths:[Ljava/lang/String;

    if-eqz p2, :cond_0

    array-length p2, p2

    if-ne p1, p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->scanTimes:I

    :cond_0
    return-void
.end method

.method public scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mimeTypes:[Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method
