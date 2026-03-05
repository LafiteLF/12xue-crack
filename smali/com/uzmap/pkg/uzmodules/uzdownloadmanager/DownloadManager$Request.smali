.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mIconUri:Landroid/net/Uri;

.field private mIsVisibleInDownloadsUi:Z

.field private mMimeType:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mShowNotification:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 293
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mShowNotification:Z

    .line 314
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRoamingAllowed:Z

    const/4 v1, -0x1

    .line 315
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 316
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mUri:Landroid/net/Uri;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 323
    throw p1
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 5

    .line 547
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http_header_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 556
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 396
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    return-void

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "subPath cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 511
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_public_api"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "notificationpackage"

    .line 512
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    const-string v1, "destination"

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 515
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "hint"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mIconUri:Landroid/net/Uri;

    const-string v1, "icon_uri"

    if-eqz p1, :cond_1

    .line 522
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 528
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 531
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    const-string v1, "description"

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    const-string v1, "mimetype"

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mShowNotification:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "visibility"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow_roaming"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 540
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_visible_in_downloads_ui"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, ":"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 413
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "header may not contain \':\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "header cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowedNetworkTypes(I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 478
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mAllowedNetworkTypes:I

    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mRoamingAllowed:Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 373
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 388
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setShowRunningNotification(Z)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mShowNotification:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    return-object p0
.end method
