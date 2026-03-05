.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;
.super Landroid/widget/FrameLayout;
.source "DownloadListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;
    }
.end annotation


# static fields
.field static final FROM_TYPE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ldx"

.field static final title_back:I

.field static final title_edit:I

.field static final title_text:I


# instance fields
.field private mCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;

.field private mContext:Landroid/app/Activity;

.field private mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;

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

    .line 76
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_back:I

    const-string v0, "title_edit"

    .line 77
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_edit:I

    const-string v0, "title_text"

    .line 78
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_text:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;

    .line 60
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$1;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    .line 70
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDownloadId:Ljava/lang/Long;

    .line 82
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 84
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->close()V

    return-void
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lorg/json/JSONObject;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->callbackToJs(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$302(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p1
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;J)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->deleteDownload()V

    return-void
.end method

.method static synthetic access$700(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$800(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->handleDownloadsChanged()V

    return-void
.end method

.method private activeListView()Landroid/widget/ListView;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateOrderedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private callbackToJs(Lorg/json/JSONObject;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method private changeEditMode()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedAdapter:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditMode:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;->setEditMode(Z)V

    return-void
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 3

    .line 576
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 577
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private chooseListToShow()V
    .locals 3

    .line 272
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->empty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditView:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 279
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :goto_0
    return-void
.end method

.method private close()V
    .locals 1

    .line 190
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private deleteDownload()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 479
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->deleteDownload(J)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private deleteDownload(J)V
    .locals 6

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->moveToDownload(J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mMediaTypeColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mLocalUriColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-direct {p0, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->deleteUnzipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mStatusColumnId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/16 v4, 0x10

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 495
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 497
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mMediaProviderUriId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->markRowDeleted([J)I

    .line 500
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->updateUi()V

    return-void

    .line 503
    :cond_2
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 508
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

    .line 514
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->remove([J)I

    .line 515
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->updateUi()V

    return-void
.end method

.method private deleteUnzipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->guessUnZipTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 527
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const-string p2, "file://"

    .line 530
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 531
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;

    invoke-direct {v0, p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$6;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 537
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private empty()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

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

    .line 289
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 376
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u76ee\u6807\u6587\u4ef6\u5df2\u5b58\u5728\u3002"

    return-object p1

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "\u4e0b\u8f7d\u4e2d\u65ad\uff0c\u65e0\u6cd5\u7ee7\u7eed\u8fdb\u884c\u3002"

    return-object p1

    :pswitch_2
    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u672a\u5b89\u88c5\u5916\u90e8\u5a92\u4f53\u3002"

    return-object p1

    .line 386
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->isOnExternalStorage(Landroid/database/Cursor;)Z

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

    .line 298
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "\u60a8\u60f3\u8981\u7a0d\u540e\u91cd\u65b0\u5c1d\u8bd5\u4e0b\u8f7d\u8be5\u6587\u4ef6\uff0c\u8fd8\u662f\u5c06\u5176\u4ece\u961f\u5217\u4e2d\u5220\u9664\uff1f"

    return-object v0
.end method

.method private handleDownloadsChanged()V
    .locals 2

    .line 556
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->checkSelectionForDeletedEntries()V

    .line 557
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    .line 559
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    return-void
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 6

    .line 346
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 347
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mStatusColumnId:I

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

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDownloadId:Ljava/lang/Long;

    .line 355
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6587\u4ef6\u5c1a\u4e0d\u53ef\u7528"

    .line 356
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v2, "\u8be5\u6587\u4ef6\u5df2\u52a0\u5165\u961f\u5217\uff0c\u4f9b\u4ee5\u540e\u4e0b\u8f7d\u3002"

    .line 357
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "\u4fdd\u7559"

    .line 358
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 359
    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 363
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->resume([J)I

    goto :goto_0

    .line 350
    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    new-array v2, v4, [J

    aput-wide v0, v2, v3

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->pause([J)I

    :goto_0
    return-void
.end method

.method private haveCursors()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initialize()V
    .locals 5

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->setClickable(Z)V

    .line 89
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->setupViews()V

    .line 90
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    .line 92
    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->setAccessAllDownloads(Z)V

    .line 94
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const-string v2, "_id"

    .line 98
    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 99
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    .line 100
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mStatusColumnId:I

    .line 103
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    .line 104
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mTitleColumnId:I

    .line 105
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "local_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mLocalUriColumnId:I

    .line 106
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "media_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mMediaTypeColumnId:I

    .line 107
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "reason"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mReasonColumndId:I

    .line 108
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v1, "mediaprovider_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mMediaProviderUriId:I

    .line 109
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedAdapter:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadAdapter;

    .line 110
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->chooseListToShow()V

    return-void
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 3

    .line 405
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mLocalUriColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 409
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 1

    .line 567
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mReasonColumndId:I

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

    .line 448
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 449
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 450
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 451
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 453
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mTitleColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 456
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

    .line 594
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 5

    .line 307
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mLocalUriColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mMediaTypeColumnId:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zip"

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 321
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->guessUnZipTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 324
    :cond_0
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 326
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 327
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "mimeType"

    .line 328
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "savePath"

    .line 329
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uncompressPath"

    .line 330
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->callbackToJs(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catch_2
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldx"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mIdColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string p1, "\u672a\u627e\u5230\u5df2\u4e0b\u8f7d\u7684\u6587\u4ef6\u3002"

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->showFailedDialog(JLjava/lang/String;)V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method

.method private setupViews()V
    .locals 3

    const-string v0, "mo_download_mgr_list"

    .line 116
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->addView(Landroid/view/View;)V

    const-string v0, "size_ordered_list"

    .line 122
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateOrderedListView:Landroid/widget/ListView;

    .line 124
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "empty"

    .line 125
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEmptyView:Landroid/view/View;

    .line 127
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_back:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_edit:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditView:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_text:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u7ba1\u7406"

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 2

    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 425
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    const-string p2, "\u91cd\u8bd5"

    invoke-virtual {p3, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showOrHideSelectionMenu()V
    .locals 3

    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u63d0\u793a"

    .line 434
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u786e\u5b9a\u8981\u5220\u9664:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->makeFistDownloadTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u7684\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 436
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$5;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$5;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    const-string v2, "\u5220\u9664"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateUi()V
    .locals 4

    .line 541
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$7;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$7;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    .line 547
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEmptyView:Landroid/view/View;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->chooseListToShow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 10

    .line 166
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->onPause()V

    .line 167
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 168
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x12c

    .line 169
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 181
    invoke-virtual {p0, v9}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    return-void
.end method

.method public isDownloadSelected(J)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDownloadId:Ljava/lang/Long;

    .line 257
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mQueuedDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 234
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_back:I

    if-ne p1, v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->finish()V

    goto :goto_1

    .line 236
    :cond_0
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->title_edit:I

    if-ne p1, v0, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->empty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 240
    :cond_1
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditMode:Z

    if-nez p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditView:Landroid/widget/TextView;

    const-string v0, "\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditMode:Z

    goto :goto_0

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditView:Landroid/widget/TextView;

    const-string v0, "\u7f16\u8f91"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditMode:Z

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->changeEditMode()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDownloadSelectionChanged(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 222
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mSelectedIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->showOrHideSelectionMenu()V

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

    .line 212
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mEditMode:Z

    if-eqz p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 216
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 147
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 148
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x12c

    .line 149
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    invoke-virtual {p0, v9}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mContentObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mDataSetObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 154
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->refresh()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0b\u8f7d\u7ba1\u7406"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
