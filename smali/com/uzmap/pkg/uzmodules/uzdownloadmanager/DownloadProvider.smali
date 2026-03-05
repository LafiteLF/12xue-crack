.class public final Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$ReadOnlyCursorWrapper;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$DatabaseHelper;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;
    }
.end annotation


# static fields
.field private static final ALL_DOWNLOADS:I = 0x3

.field private static final ALL_DOWNLOADS_ID:I = 0x4

.field private static BASE_URIS:[Landroid/net/Uri; = null

.field private static final DB_NAME:Ljava/lang/String; = "uz_downloads.db"

.field private static final DB_TABLE:Ljava/lang/String; = "uz_downloads"

.field private static final DB_VERSION:I = 0x6a

.field private static final DOWNLOAD_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field private static final DOWNLOAD_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/download"

.field private static final MY_DOWNLOADS:I = 0x1

.field private static final MY_DOWNLOADS_ID:I = 0x2

.field private static final REQUEST_HEADERS_URI:I = 0x5

.field private static final sAppReadableColumnsArray:[Ljava/lang/String;

.field private static sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDefContainerUid:I

.field private mHandler:Landroid/os/Handler;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

.field private mSystemUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "_id"

    const-string v3, "entity"

    const-string v4, "_data"

    const-string v5, "mimetype"

    const-string v6, "visibility"

    const-string v7, "destination"

    const-string v8, "control"

    const-string v9, "status"

    const-string v10, "lastmod"

    const-string v11, "notificationpackage"

    const-string v12, "notificationclass"

    const-string v13, "total_bytes"

    const-string v14, "current_bytes"

    const-string v15, "title"

    const-string v16, "description"

    const-string v17, "uri"

    const-string v18, "icon_uri"

    const-string v19, "is_visible_in_downloads_ui"

    const-string v20, "hint"

    const-string v21, "mediaprovider_uri"

    const-string v22, "deleted"

    .line 83
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 110
    :goto_0
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 111
    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemUid:I

    .line 120
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mDefContainerUid:I

    return-void
.end method

.method private checkFileUriDestination(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "hint"

    .line 552
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 557
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "file"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination must be on external storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a file URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESTINATION_FILE_URI must include a file URI under COLUMN_FILE_NAME_HINT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 1046
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 1039
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 1053
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1055
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 1061
    invoke-static {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1062
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1063
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    const-string v0, "_id"

    .line 708
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "uz_downloads"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 709
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 711
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 712
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 713
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_id="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "request_headers"

    const/4 v1, 0x0

    .line 714
    invoke-virtual {p1, v0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 711
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 717
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 718
    throw p1
.end method

.method private getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 667
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;
    .locals 2

    .line 835
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$1;)V

    .line 836
    invoke-virtual {v0, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x2

    if-eq p4, p2, :cond_0

    const/4 p2, 0x4

    if-ne p4, p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    .line 838
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "_id = ?"

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->appendClause(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private initURIMatcher()V
    .locals 6

    .line 362
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getAuthorities(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const/4 v2, 0x1

    const-string v3, "my_downloads"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const/4 v3, 0x2

    const-string v4, "my_downloads/#"

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v4, "all_downloads"

    const/4 v5, 0x3

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v4, "all_downloads/#"

    const/4 v5, 0x4

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const/4 v4, 0x5

    const-string v5, "my_downloads/#/headers"

    invoke-virtual {v1, v0, v5, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v5, "all_downloads/#/headers"

    invoke-virtual {v1, v0, v5, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v5, "download"

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v5, "download/#"

    invoke-virtual {v1, v0, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v5, "download/#/headers"

    invoke-virtual {v1, v0, v5, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-array v0, v3, [Landroid/net/Uri;

    .line 375
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 376
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    return-void
.end method

.method private insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 2

    .line 674
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 675
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "download_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    invoke-virtual {p4}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 677
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v1, "http_header_"

    .line 678
    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 679
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ":"

    .line 680
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 683
    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 684
    aget-object p4, p3, p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    const-string v1, "header"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 685
    aget-object p3, p3, p4

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string p4, "value"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    const-string p4, "request_headers"

    .line 686
    invoke-virtual {p1, p4, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 681
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid HTTP header line: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uid: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1005
    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v0, "empty cursor in openFile"

    const/4 v1, 0x0

    const-string v2, "null cursor in openFile"

    if-nez p2, :cond_0

    .line 1010
    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    goto :goto_1

    .line 1012
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1013
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 1017
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1019
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :goto_1
    const-string p2, "_data"

    .line 1021
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1023
    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    goto :goto_3

    .line 1025
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1026
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    goto :goto_2

    .line 1028
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filename in openFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "file exists in openFile"

    .line 1031
    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 1034
    :cond_4
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_3
    return-void
.end method

.method private logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting query, database is "

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    const-string p5, "not "

    .line 628
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p5, "null; "

    .line 630
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] is "

    const/4 v1, 0x0

    const-string v2, "; "

    if-nez p1, :cond_1

    const-string p1, "projection is null; "

    .line 632
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 633
    :cond_1
    array-length v3, p1

    if-nez v3, :cond_2

    const-string p1, "projection is empty; "

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v3, v1

    .line 636
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    const-string v4, "projection["

    .line 637
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "selection is "

    .line 644
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4

    const-string p1, "selectionArgs is null; "

    .line 648
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 649
    :cond_4
    array-length p1, p3

    if-nez p1, :cond_5

    const-string p1, "selectionArgs is empty; "

    .line 650
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 652
    :cond_5
    :goto_2
    array-length p1, p3

    if-ge v1, p1, :cond_6

    const-string p1, "selectionArgs["

    .line 653
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    aget-object p1, p3, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const-string p1, "sort is "

    .line 660
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    .line 662
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    return-void
.end method

.method private notifyContentChanged(Landroid/net/Uri;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_1

    .line 823
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 825
    :goto_1
    sget-object p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-eqz p1, :cond_2

    .line 827
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 829
    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private queryCleared(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 998
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    throw p1
.end method

.method private queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p2, "header"

    const-string v0, "value"

    .line 697
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "request_headers"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 699
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 701
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$ReadOnlyCursorWrapper;

    invoke-direct {p2, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$ReadOnlyCursorWrapper;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;Landroid/database/Cursor;)V

    return-object p2
.end method

.method private shouldRestrictVisibility()Z
    .locals 3

    .line 726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 727
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemUid:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mDefContainerUid:I

    if-eq v0, v1, :cond_0

    .line 730
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 856
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 857
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 859
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleting unknown/invalid URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 872
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 865
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;

    move-result-object p2

    .line 866
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p3, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->deleteRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object p2

    const-string v2, "uz_downloads"

    invoke-virtual {v0, v2, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 874
    invoke-direct {p0, p1, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 413
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/download"

    return-object p1

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling getType on an unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/download"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 433
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 435
    sget-object v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    .line 476
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ne v4, v5, :cond_12

    .line 440
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "uri"

    .line 441
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "icon_uri"

    .line 442
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "entity"

    .line 443
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "no_integrity"

    .line 444
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "hint"

    .line 445
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "mimetype"

    .line 446
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v8, "is_public_api"

    .line 447
    invoke-static {v8, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 448
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v9, "destination"

    .line 449
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    if-eqz v11, :cond_5

    .line 451
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x4

    if-eqz v13, :cond_2

    .line 452
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v12, :cond_2

    .line 453
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v14, :cond_1

    goto :goto_1

    .line 454
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "unauthorized destination code"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 459
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_3

    move-object v11, v6

    .line 463
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v14, :cond_4

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 466
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v10, "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI"

    .line 464
    invoke-virtual {v13, v5, v14, v15, v10}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 468
    invoke-direct {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->checkFileUriDestination(Landroid/content/ContentValues;)V

    .line 470
    :cond_4
    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v5, "visibility"

    .line 472
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_7

    .line 474
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_6

    .line 475
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 479
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 478
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 482
    :cond_7
    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v5, "control"

    .line 484
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const/16 v5, 0xbe

    .line 485
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "lastmod"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "notificationpackage"

    .line 487
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "notificationclass"

    .line 488
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_a

    if-nez v10, :cond_8

    if-eqz v8, :cond_a

    .line 490
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    if-eqz v12, :cond_9

    .line 492
    :try_start_0
    iget-object v13, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v13, v12, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->userOwnsPackage(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 493
    :cond_9
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_a

    .line 495
    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    const-string v5, "notificationextras"

    .line 502
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v5, "cookiedata"

    .line 503
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v5, "useragent"

    .line 504
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v5, "referer"

    .line 505
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v5, "otheruid"

    .line 506
    invoke-static {v5, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "uid"

    invoke-virtual {v7, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-nez v6, :cond_b

    .line 509
    invoke-static {v9, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    :cond_b
    const-string v6, ""

    const-string v10, "title"

    .line 511
    invoke-static {v10, v2, v7, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v10, "description"

    .line 512
    invoke-static {v10, v2, v7, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const/4 v6, -0x1

    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v10, "total_bytes"

    invoke-virtual {v7, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    .line 514
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "current_bytes"

    invoke-virtual {v7, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "is_visible_in_downloads_ui"

    .line 515
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 516
    invoke-static {v10, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_e

    .line 519
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v16, v6

    goto :goto_4

    :cond_e
    :goto_3
    const/16 v16, 0x1

    .line 520
    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_5
    if-eqz v8, :cond_f

    const-string v6, "allowed_network_types"

    .line 523
    invoke-static {v6, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v6, "allow_roaming"

    .line 524
    invoke-static {v6, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 526
    :cond_f
    sget-boolean v6, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v6, :cond_10

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initiating download with UID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "other UID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 534
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 535
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {v6, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v6, 0x0

    const-string v8, "uz_downloads"

    .line 536
    invoke-virtual {v3, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_11

    const-string v1, "couldn\'t insert into downloads database"

    .line 538
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    return-object v6

    .line 541
    :cond_11
    invoke-direct {v0, v3, v7, v8, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->insertRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 542
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 543
    invoke-direct {v0, v1, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 437
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling insert on an unknown/invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown/Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate()Z
    .locals 4

    .line 385
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->initURIMatcher()V

    .line 386
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    .line 389
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mHandler:Landroid/os/Handler;

    .line 390
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$DatabaseHelper;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/16 v0, 0x3e8

    .line 392
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mSystemUid:I

    const/4 v0, 0x0

    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.defcontainer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 399
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    .line 402
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mDefContainerUid:I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 883
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 886
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 887
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->openFileLollipop(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "_data"

    .line 889
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 892
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-nez v2, :cond_3

    .line 896
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 898
    :cond_3
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 901
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 902
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 905
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_9

    .line 912
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "r"

    .line 915
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 918
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    const-string p1, "couldn\'t open file"

    .line 920
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 921
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 916
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_8
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Invalid filename."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 910
    :cond_9
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "No filename found."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    if-eqz v0, :cond_a

    .line 905
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 907
    :cond_a
    throw p1
.end method

.method public openFileLollipop(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 928
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 929
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->logVerboseOpenFileInfo(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const-string v0, "_data"

    const-string v1, "status"

    const-string v2, "destination"

    const-string v3, "scanned"

    .line 931
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->queryCleared(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 938
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    .line 942
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 944
    :cond_2
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 946
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 947
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    .line 948
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    .line 949
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 950
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 951
    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    if-eqz v5, :cond_4

    const/4 v2, 0x4

    if-eq v5, v2, :cond_4

    const/4 v2, 0x6

    if-ne v5, v2, :cond_5

    :cond_4
    if-eq v6, v4, :cond_5

    move v1, v3

    .line 960
    :cond_5
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v7, :cond_8

    .line 965
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 969
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p2

    const/high16 v2, 0x10000000

    if-ne p2, v2, :cond_6

    .line 971
    invoke-static {v0, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 975
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;Ljava/io/File;Landroid/net/Uri;Z)V

    invoke-static {v0, p2, v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 990
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open for writing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 967
    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 963
    :cond_8
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "No filename found."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 957
    :cond_9
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Failed moveToFirst"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 960
    :goto_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 961
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 579
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 580
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 581
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    .line 591
    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->queryRequestHeaders(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 588
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Request header queries do not support projections, selections or sorting"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_1
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;

    move-result-object v7

    .line 594
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->shouldRestrictVisibility()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_2

    .line 596
    sget-object p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 598
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 599
    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "column "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed in queries"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v1, :cond_5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    .line 607
    invoke-direct/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->logVerboseQueryInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 609
    :cond_5
    invoke-virtual {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-virtual {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "uz_downloads"

    move-object v1, v0

    move-object v3, p2

    move-object v8, p5

    .line 609
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 612
    new-instance p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$ReadOnlyCursorWrapper;

    invoke-direct {p3, p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$ReadOnlyCursorWrapper;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;Landroid/database/Cursor;)V

    move-object p2, p3

    :cond_6
    if-eqz p2, :cond_7

    .line 615
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "created cursor "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " on behalf of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "query failed in downloads database"

    .line 618
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    :goto_2
    return-object p2

    .line 583
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "querying unknown URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 584
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 739
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {v9, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 740
    iget-object v0, v6, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v0, "deleted"

    .line 743
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v12, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    .line 750
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v14, "status"

    const-string v15, "title"

    if-eq v1, v2, :cond_2

    .line 751
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "entity"

    .line 752
    invoke-static {v2, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "visibility"

    .line 753
    invoke-static {v2, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "control"

    .line 754
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 756
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v13, v12

    .line 763
    :cond_1
    invoke-static {v14, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 764
    invoke-static {v2, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 765
    invoke-static {v15, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "mediaprovider_uri"

    .line 766
    invoke-static {v2, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string v2, "description"

    .line 767
    invoke-static {v2, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 768
    invoke-static {v0, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    move-object v8, v1

    goto :goto_2

    :cond_2
    const-string v0, "_data"

    .line 771
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 773
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 774
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_5
    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 781
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbe

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v11

    :goto_1
    const-string v1, "bypass_recommended_size_limit"

    .line 783
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    const/4 v13, 0x1

    .line 789
    :cond_8
    :goto_2
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    :cond_9
    move-object/from16 v1, p4

    goto :goto_3

    .line 805
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :goto_3
    invoke-direct {v6, v7, v9, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getWhereClause(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;

    move-result-object v1

    .line 796
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 797
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->getParameters()[Ljava/lang/String;

    move-result-object v1

    const-string v3, "uz_downloads"

    .line 797
    invoke-virtual {v10, v3, v8, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 807
    :cond_b
    invoke-direct {v6, v7, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->notifyContentChanged(Landroid/net/Uri;I)V

    if-eqz v13, :cond_c

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 810
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_c
    return v11
.end method
