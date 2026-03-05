.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UzImgFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;
    }
.end annotation


# instance fields
.field private index:I

.field private mContext:Landroid/content/Context;

.field private mFilecount:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mHolderlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mImgpath:Ljava/lang/String;

.field private mListdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "filecount"

    .line 38
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mFilecount:Ljava/lang/String;

    const-string v0, "filename"

    .line 39
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mFilename:Ljava/lang/String;

    const-string v0, "imgpath"

    .line 40
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mImgpath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->index:I

    .line 48
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mHolderlist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    invoke-static {p1, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 71
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->index:I

    if-eq p1, p2, :cond_0

    if-le p1, p2, :cond_0

    .line 72
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;

    invoke-direct {p2, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;)V

    .line 73
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const-string v0, "uz_media_scanner_imgfileadapter"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const-string v0, "filephoto_imgview"

    .line 74
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->photo_imgview:Landroid/widget/ImageView;

    const-string v0, "filecount_textview"

    .line 75
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->filecount_textview:Landroid/widget/TextView;

    const-string v0, "filename_textview"

    .line 76
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->filename_textView:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mHolderlist:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mHolderlist:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;

    .line 81
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mHolderlist:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 84
    :goto_0
    iget-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->filename_textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->filecount_textview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mFilecount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/apicloud/glide/Glide;->with(Landroid/content/Context;)Lcom/apicloud/glide/RequestManager;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mListdata:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->mImgpath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/RequestManager;->load(Ljava/lang/String;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object p1

    const-string v0, "uz_media_scanner_imgbg"

    .line 89
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/glide/DrawableTypeRequest;->placeholder(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    const/16 v1, 0xc8

    .line 90
    invoke-virtual {p1, v1, v1}, Lcom/apicloud/glide/DrawableRequestBuilder;->override(II)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 91
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->error(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 93
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->photo_imgview:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/apicloud/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;

    return-object p3
.end method

.method public varargs imgExcute(Landroid/widget/ImageView;[Ljava/lang/String;)V
    .locals 2

    .line 105
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;Landroid/widget/ImageView;)V

    .line 106
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le p1, v1, :cond_0

    .line 107
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
