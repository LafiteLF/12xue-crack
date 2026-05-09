.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private addHeader(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {v0, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 125
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget p2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    .line 127
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, p2, :cond_4

    .line 130
    :cond_3
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, p2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 133
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    .line 134
    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v3, p2, -0x1

    :goto_0
    if-ltz v3, :cond_6

    .line 136
    aget-char v4, v0, v3

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_5

    .line 137
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method private readRequestHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 8

    .line 83
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "headers"

    .line 84
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 86
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "header"

    .line 89
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "value"

    .line 91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->addHeader(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCookies:Ljava/lang/String;

    const-string v1, "Cookie"

    invoke-direct {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->addHeader(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v1, "Referer"

    invoke-direct {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->addHeader(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    throw p1
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
    .locals 2

    .line 38
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$1;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->updateFromDatabase(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->readRequestHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    return-object v0
.end method

.method public updateFromDatabase(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 5

    const-string v0, "_id"

    .line 45
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    .line 46
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v1, "uri"

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIconUri:Ljava/lang/String;

    const-string v1, "icon_uri"

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIconUri:Ljava/lang/String;

    const-string v0, "no_integrity"

    .line 48
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNoIntegrity:Z

    .line 49
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHint:Ljava/lang/String;

    const-string v3, "hint"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHint:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v3, "_data"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v0, "destination"

    .line 52
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    const-string v0, "visibility"

    .line 53
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mVisibility:I

    const-string v0, "status"

    .line 54
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const-string v0, "numfailed"

    .line 55
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    const-string v0, "method"

    .line 56
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0xfffffff

    and-int/2addr v0, v3

    .line 57
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRetryAfter:I

    const-string v0, "lastmod"

    .line 58
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mLastMod:J

    .line 59
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mPackage:Ljava/lang/String;

    const-string v3, "notificationpackage"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mClass:Ljava/lang/String;

    const-string v3, "notificationclass"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mClass:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mExtras:Ljava/lang/String;

    const-string v3, "notificationextras"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCookies:Ljava/lang/String;

    const-string v3, "cookiedata"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUserAgent:Ljava/lang/String;

    const-string v3, "useragent"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v3, "referer"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mReferer:Ljava/lang/String;

    const-string v0, "total_bytes"

    .line 65
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    const-string v0, "current_bytes"

    .line 66
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCurrentBytes:J

    .line 67
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v3, "etag"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v0, "deleted"

    .line 68
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDeleted:Z

    .line 69
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    const-string v3, "mediaprovider_uri"

    invoke-direct {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    const-string v0, "is_public_api"

    .line 70
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIsPublicApi:Z

    const-string v0, "allowed_network_types"

    .line 71
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mAllowedNetworkTypes:I

    const-string v0, "allow_roaming"

    .line 72
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mAllowRoaming:Z

    .line 73
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTitle:Ljava/lang/String;

    const-string v1, "title"

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDescription:Ljava/lang/String;

    const-string v1, "description"

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDescription:Ljava/lang/String;

    const-string v0, "bypass_recommended_size_limit"

    .line 75
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 77
    monitor-enter p0

    :try_start_0
    const-string v0, "control"

    .line 78
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mControl:I

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
