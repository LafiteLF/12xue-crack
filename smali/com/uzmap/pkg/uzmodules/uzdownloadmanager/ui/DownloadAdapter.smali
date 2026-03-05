.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# static fields
.field private static final mo_download_mgr_default_icon:I

.field private static final mo_download_mgr_list_item:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field protected mDescriptionColumnId:I

.field private mDownloadSelectionListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

.field private mFinishBytesColumnId:I

.field private mIconColumnId:I

.field private mIdColumnId:I

.field private mInEditMode:Z

.field private mMediaTypeColumnId:I

.field private mReasonColumnId:I

.field private mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mo_download_mgr_list_item"

    .line 37
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mo_download_mgr_list_item:I

    .line 38
    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getAppIcon()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mo_download_mgr_default_icon:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 61
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 63
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDownloadSelectionListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

    const/4 p1, 0x3

    .line 64
    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p3

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 65
    invoke-static {p1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    const-string p1, "_id"

    .line 67
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mIdColumnId:I

    const-string p1, "title"

    .line 68
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTitleColumnId:I

    const-string p1, "description"

    .line 69
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDescriptionColumnId:I

    const-string p1, "status"

    .line 70
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mStatusColumnId:I

    const-string p1, "icon_uri"

    .line 71
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mIconColumnId:I

    const-string p1, "reason"

    .line 72
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mReasonColumnId:I

    const-string p1, "total_size"

    .line 73
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTotalBytesColumnId:I

    const-string p1, "bytes_so_far"

    .line 74
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mFinishBytesColumnId:I

    const-string p1, "media_type"

    .line 75
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mMediaTypeColumnId:I

    const-string p1, "last_modified_timestamp"

    .line 76
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDateColumnId:I

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->retrieveIconFromLocal(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    return-void
.end method

.method private getPercent()D
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 146
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mFinishBytesColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v0

    .line 149
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "B"

    const-string v2, ""

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0M"

    :goto_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .line 126
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 127
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 128
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 129
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getStatus()I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private getStatusText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    return-object p1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "\u4e0b\u8f7d\u5b8c\u6210"

    return-object p1

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x3

    const-string v1, "\u6682\u505c\u4e2d.."

    if-ne p1, v0, :cond_3

    :cond_3
    return-object v1

    :cond_4
    const-string p1, "\u6b63\u5728\u4e0b\u8f7d"

    return-object p1

    :cond_5
    const-string p1, "\u7b49\u5f85\u4e0b\u8f7d"

    return-object p1
.end method

.method private retrieveAndSetIcon(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mIconColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->get()Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->sysExecuteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setIcon(Landroid/graphics/Bitmap;)V

    return-void

    .line 207
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->retrieveIconFromLocal(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    return-void

    .line 212
    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    .line 222
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 224
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 225
    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 226
    invoke-static {}, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->get()Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->executeBitmap(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;Landroid/graphics/BitmapFactory$Options;)V

    return-void

    .line 229
    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->retrieveIconFromLocal(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    return-void
.end method

.method private retrieveIconFromLocal(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->getMediaType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mo_download_mgr_default_icon:I

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setIcon(I)V

    return-void

    .line 242
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "file"

    const-string v4, ""

    .line 243
    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 247
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mo_download_mgr_default_icon:I

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setIcon(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 249
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 4

    .line 93
    instance-of v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    .line 97
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setDownloadId(J)V

    .line 99
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTitleColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "\u672a\u77e5\u6587\u4ef6\u540d"

    .line 103
    :cond_1
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setMimeTypeAndSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->getPercent()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setProgress(F)V

    .line 108
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mInEditMode:Z

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setEditMode(Z)V

    .line 109
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->getStatus()I

    move-result v2

    .line 110
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->getStatusText(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setStatus(ILjava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDownloadSelectionListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

    invoke-interface {v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;->isDownloadSelected(J)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setChecked(Z)V

    .line 113
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->retrieveAndSetIcon(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->bindView(Landroid/view/View;)V

    return-void
.end method

.method protected getDateString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 118
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusStringId()Ljava/lang/String;
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    return-object v0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "\u6682\u505c\u4e2d.."

    if-ne v0, v1, :cond_3

    :cond_3
    return-object v2

    :cond_4
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    return-object v0

    :cond_5
    const-string v0, "\u7b49\u5f85\u4e0b\u8f7d"

    return-object v0
.end method

.method public newView()Landroid/view/View;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mo_download_mgr_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;

    .line 88
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mDownloadSelectionListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setSelectListener(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->mInEditMode:Z

    .line 82
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
