.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ICON_URI:Ljava/lang/String; = "icon_uri"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field private static final LONG_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final UNDERLYING_COLUMNS:[Ljava/lang/String;

.field private static mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "_id"

    const-string v1, "mediaprovider_uri"

    const-string v2, "title"

    const-string v3, "description"

    const-string v4, "uri"

    const-string v5, "icon_uri"

    const-string v6, "media_type"

    const-string v7, "total_size"

    const-string v8, "local_uri"

    const-string v9, "status"

    const-string v10, "reason"

    const-string v11, "bytes_so_far"

    const-string v12, "last_modified_timestamp"

    .line 247
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->COLUMNS:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "mediaprovider_uri"

    const-string v3, "title"

    const-string v4, "description"

    const-string v5, "uri"

    const-string v6, "icon_uri"

    const-string v7, "mimetype"

    const-string v8, "total_bytes"

    const-string v9, "status"

    const-string v10, "current_bytes"

    const-string v11, "lastmod"

    const-string v12, "destination"

    const-string v13, "hint"

    const-string v14, "_data"

    .line 264
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "_id"

    const-string v2, "total_size"

    const-string v3, "status"

    const-string v4, "reason"

    const-string v5, "bytes_so_far"

    const-string v6, "last_modified_timestamp"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    const/4 v0, 0x0

    .line 733
    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mContext:Landroid/content/Context;

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 751
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 752
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 753
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->computeTotalDownloads()I

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 755
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;

    invoke-direct {v0, p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 760
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .line 25
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
    .locals 1

    .line 736
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    .line 739
    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-object p0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4

    .line 1001
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1002
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1003
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 986
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    .line 988
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "_id"

    .line 990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    .line 991
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 993
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public computeTotalDownloads()I
    .locals 4

    .line 935
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    .line 936
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 940
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 941
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public enqueue(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;)J
    .locals 4

    .line 788
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 790
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadUri =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager enqueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id =="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method getDownloadUri(J)Landroid/net/Uri;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public varargs markRowDeleted([J)I
    .locals 4

    if-eqz p1, :cond_0

    .line 807
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 809
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "r"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public varargs pause([J)I
    .locals 5

    if-eqz p1, :cond_1

    .line 867
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 871
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 872
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "control"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xc1

    .line 873
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    array-length v2, p1

    if-ne v2, v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 869
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 843
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v0
.end method

.method public varargs remove([J)I
    .locals 3

    if-eqz p1, :cond_0

    .line 825
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 827
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs restartDownload([J)V
    .locals 4

    .line 952
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 954
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "status"

    if-nez v1, :cond_2

    .line 955
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot restart incomplete download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    .line 958
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 954
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 962
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 965
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 966
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "current_bytes"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, -0x1

    .line 967
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "total_bytes"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    .line 968
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v1, 0xbe

    .line 969
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 963
    throw p1
.end method

.method public varargs resume([J)I
    .locals 6

    if-eqz p1, :cond_1

    .line 891
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 895
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 896
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "control"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xc0

    .line 897
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 899
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v4, p1, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 893
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input param \'ids\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAccessAllDownloads(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 772
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0

    .line 775
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    :goto_0
    return-void
.end method

.method public urlExists(Ljava/lang/String;)J
    .locals 3

    .line 912
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    .line 913
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterByUrl(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 914
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 918
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 920
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    .line 921
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 922
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 924
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method
