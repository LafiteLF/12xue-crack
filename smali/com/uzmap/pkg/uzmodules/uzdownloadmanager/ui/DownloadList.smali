.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ldx"

.field static final title_back:I

.field static final title_edit:I

.field static final title_text:I


# instance fields
.field private mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;

.field private mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ListView;

.field private mDateSortedAdapter:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

.field private mEditMode:Z

.field private mEditView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mIdColumnId:I

.field private mLocalUriColumnId:I

.field private mMediaProviderUriId:I

.field private mMediaTypeColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumndId:I

.field private mSelectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusColumnId:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleColumnId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "title_back"

    .line 66
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_back:I

    const-string v0, "title_edit"

    .line 67
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_edit:I

    const-string v0, "title_text"

    .line 68
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_text:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    .line 62
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->handleDownloadsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->deleteDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method private activeListView()Landroid/widget/ListView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private changeEditMode()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedAdapter:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditMode:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->setEditMode(Z)V

    return-void
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 3

    .line 484
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private chooseListToShow()V
    .locals 3

    .line 222
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->empty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditView:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 229
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :goto_0
    return-void
.end method

.method private deleteDownload()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 411
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->deleteDownload(J)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private deleteDownload(J)V
    .locals 6

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 423
    :goto_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 425
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mMediaProviderUriId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->markRowDeleted([J)I

    .line 430
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->updateUi()V

    return-void

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' couldn\'t be deleted"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ldx"

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->remove([J)I

    .line 445
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->updateUi()V

    return-void
.end method

.method private empty()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 239
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 308
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 310
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u76ee\u6807\u6587\u4ef6\u5df2\u5b58\u5728\u3002"

    return-object p1

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "\u4e0b\u8f7d\u4e2d\u65ad\uff0c\u65e0\u6cd5\u7ee7\u7eed\u8fdb\u884c\u3002"

    return-object p1

    :pswitch_2
    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u672a\u5b89\u88c5\u5916\u90e8\u5a92\u4f53\u3002"

    return-object p1

    .line 318
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u65e0\u6cd5\u5b8c\u6210\u4e0b\u8f7d\uff0c\u5916\u90e8\u5b58\u50a8\u5668\u7684\u7a7a\u95f4\u4e0d\u8db3\u3002"

    return-object p1

    :cond_1
    const-string p1, "\u65e0\u6cd5\u5b8c\u6210\u4e0b\u8f7d\uff0c\u5185\u90e8\u4e0b\u8f7d\u5b58\u50a8\u5668\u7684\u7a7a\u95f4\u4e0d\u8db3\u3002"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 248
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "\u60a8\u60f3\u8981\u7a0d\u540e\u91cd\u65b0\u5c1d\u8bd5\u4e0b\u8f7d\u8be5\u6587\u4ef6\uff0c\u8fd8\u662f\u5c06\u5176\u4ece\u961f\u5217\u4e2d\u5220\u9664\uff1f"

    return-object v0
.end method

.method private handleDownloadsChanged()V
    .locals 2

    .line 464
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 465
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 467
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    return-void
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 6

    .line 278
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 279
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 287
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6587\u4ef6\u5c1a\u4e0d\u53ef\u7528"

    .line 288
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v2, "\u8be5\u6587\u4ef6\u5df2\u52a0\u5165\u961f\u5217\uff0c\u4f9b\u4ee5\u540e\u4e0b\u8f7d\u3002"

    .line 289
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "\u4fdd\u7559"

    .line 290
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 295
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->resume([J)I

    goto :goto_0

    .line 282
    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->pause([J)I

    :goto_0
    return-void
.end method

.method private haveCursors()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 3

    .line 337
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 341
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 345
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 1

    .line 475
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeFistDownloadTitle()Ljava/lang/String;
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 382
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 383
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mTitleColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 388
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "  "

    :cond_1
    return-object v1
.end method

.method private moveToDownload(J)Z
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 4

    .line 257
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10000001

    .line 269
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p1, 0x1

    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u6587\u4ef6"

    .line 273
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :catch_2
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldx"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string p1, "\u672a\u627e\u5230\u5df2\u4e0b\u8f7d\u7684\u6587\u4ef6\u3002"

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method

.method private setupViews()V
    .locals 3

    const-string v0, "mo_download_mgr_list"

    .line 121
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->setContentView(I)V

    const-string v0, "size_ordered_list"

    .line 123
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ListView;

    .line 125
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "empty"

    .line 126
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEmptyView:Landroid/view/View;

    .line 128
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_back:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_edit:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_text:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mTitle:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mTitle:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u4e0b\u8f7d\u7ba1\u7406"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 2

    .line 356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const-string p2, "\u91cd\u8bd5"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showOrHideSelectionMenu()V
    .locals 3

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u63d0\u793a"

    .line 366
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u786e\u5b9a\u8981\u5220\u9664:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->makeFistDownloadTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u7684\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 368
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$3;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V

    const-string v2, "\u5220\u9664"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateUi()V
    .locals 4

    .line 449
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$4;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$4;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V

    .line 455
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEmptyView:Landroid/view/View;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->chooseListToShow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDownloadSelected(J)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 207
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 184
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_back:I

    if-ne p1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->finish()V

    goto :goto_1

    .line 186
    :cond_0
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->title_edit:I

    if-ne p1, v0, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->empty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 190
    :cond_1
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditMode:Z

    if-nez p1, :cond_2

    .line 191
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditView:Landroid/widget/TextView;

    const-string v0, "\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditMode:Z

    goto :goto_0

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditView:Landroid/widget/TextView;

    const-string v0, "\u7f16\u8f91"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditMode:Z

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->changeEditMode()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->setupViews()V

    .line 95
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->setAccessAllDownloads(Z)V

    .line 99
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const-string v1, "_id"

    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 104
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 105
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->haveCursors()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 107
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mStatusColumnId:I

    .line 108
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mIdColumnId:I

    .line 109
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mTitleColumnId:I

    .line 110
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "local_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mLocalUriColumnId:I

    .line 111
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "media_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mMediaTypeColumnId:I

    .line 112
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "reason"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mReasonColumndId:I

    .line 113
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v0, "mediaprovider_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mMediaProviderUriId:I

    .line 114
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p1, p0, v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedAdapter:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    .line 115
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method public onDownloadSelectionChanged(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 172
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mSelectedIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->showOrHideSelectionMenu()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 162
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mEditMode:Z

    if-eqz p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 166
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 147
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->refresh()V

    :cond_0
    return-void
.end method
