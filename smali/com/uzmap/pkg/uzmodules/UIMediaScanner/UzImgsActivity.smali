.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;
.super Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;
.source "UzImgsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$BottomImgIcon;,
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;
    }
.end annotation


# instance fields
.field private dataFormat:Ljava/text/SimpleDateFormat;

.field private imgCallBack:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

.field private mAllImgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

.field private mFilelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHashImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mImgGridView:Landroid/widget/GridView;

.field private mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mReplaceTxt:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectedIconBmp:Landroid/graphics/Bitmap;

.field private mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

.field onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

.field private proxyShowPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->imgCallBack:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

    .line 69
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->proxyShowPreview:Z

    .line 666
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->dataFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$10(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Landroid/widget/GridView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/HashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mHashImages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    return-object p0
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mReplaceTxt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    return-object p0
.end method

.method static synthetic access$7(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->imgPaths()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->proxyShowPreview:Z

    return p0
.end method

.method static synthetic access$9(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 0

    .line 704
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->previewCallBack()V

    return-void
.end method

.method private imgPaths()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 713
    :goto_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private previewCallBack()V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "preview"

    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 706
    sget-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mMContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public closeForResult()V
    .locals 3

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    const-string v2, "files"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x101

    .line 531
    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->setResult(ILandroid/content/Intent;)V

    .line 532
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->finish()V

    return-void
.end method

.method public creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/16 v4, 0x9d

    const/16 v5, 0x9d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;ZII)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 570
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 571
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 574
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 575
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "path"

    .line 576
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ".jpg"

    const-string v5, "/.thumbnails_for_me"

    const-string v6, "thumbPath"

    if-nez v3, :cond_1

    .line 579
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v7, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 583
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v9, v9, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 586
    invoke-static {v9}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 586
    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 590
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 592
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v3, p4, p5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->createThumbPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 594
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 595
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v3, :cond_4

    :try_start_2
    const-string v9, "image"

    .line 603
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v7, "image/"

    .line 604
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-eqz v3, :cond_8

    const-string v9, "video"

    .line 606
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v7, "video/"

    .line 607
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 609
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 610
    new-instance v3, Ljava/io/File;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v8, v8, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 612
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 616
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 618
    :cond_6
    new-instance v3, Ljava/io/File;

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v9, v9, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v9}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 622
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 625
    :cond_7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 624
    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 626
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 627
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    :cond_8
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "jpeg"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v7, "jpg"

    :cond_9
    const-string v3, "suffix"

    .line 636
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "size"

    .line 637
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "groupName"

    .line 638
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->dataFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "time"

    .line 641
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 643
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 647
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    :try_start_3
    const-string p2, "list"

    .line 651
    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 653
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 655
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    :try_start_4
    const-string p2, "eventType"

    .line 657
    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 659
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b
    :goto_5
    return-object p3
.end method

.method public createThumbPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 670
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 677
    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 681
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 685
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.thumbnails_for_me"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 686
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 691
    :cond_1
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 696
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 697
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 699
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 701
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public iconImage(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;ILandroid/widget/CheckBox;)Landroid/widget/ImageView;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 481
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 482
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 483
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 481
    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 484
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "uz_media_scanner_imgbg"

    .line 487
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    .line 486
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 489
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->imgCallBack:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->imgExcute(Landroid/widget/ImageView;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;[Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;)V

    .line 491
    new-instance p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;

    invoke-direct {p2, p0, p1, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isPortrait()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->rotation:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->closeForResult()V

    .line 724
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 508
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "hasData"

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "configData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    .line 130
    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showBrowser:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    const-string v2, "top_right"

    iput-object v2, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_position:Ljava/lang/String;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->proxyShowPreview:Z

    .line 136
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showBrowser:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iput-boolean v2, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    .line 138
    iput-boolean v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->proxyShowPreview:Z

    :cond_2
    if-eqz v0, :cond_3

    .line 141
    sget-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->fileTraversal:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    if-eqz v0, :cond_3

    .line 142
    sget-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->fileTraversal:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->fileInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 146
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldir(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v1, "picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldir(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldir(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    .line 158
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    if-eqz v0, :cond_e

    .line 159
    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->key:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_TIME:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    goto :goto_1

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->key:Ljava/lang/String;

    const-string v1, "size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_SIZE:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    .line 165
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->order:Ljava/lang/String;

    const-string v1, "asc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    goto :goto_2

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->order:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    .line 171
    :cond_a
    :goto_2
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_TIME:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    if-ne v0, v1, :cond_c

    .line 172
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    if-ne v0, v1, :cond_b

    .line 173
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->ascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 176
    :cond_b
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    if-ne v0, v1, :cond_c

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->dascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 181
    :cond_c
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_SIZE:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    if-ne v0, v1, :cond_e

    .line 182
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    if-ne v0, v1, :cond_d

    .line 183
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->ascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 186
    :cond_d
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    if-ne v0, v1, :cond_e

    .line 187
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->dascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 192
    :cond_e
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    const-string v0, "mediascanner_item_select_icon"

    .line 196
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 197
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mScreenWidth:I

    const-string v0, "uz_media_scanner_photogrally"

    .line 203
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->setContentView(I)V

    const-string v0, "gridView1"

    .line 205
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    .line 207
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mBundle:Landroid/os/Bundle;

    .line 209
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    .line 210
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onItemClickClass:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    .line 209
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    .line 211
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mScreenWidth:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setScreenWidth(I)V

    .line 213
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setRow(I)V

    .line 214
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    .line 217
    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "relativeLayout2"

    .line 259
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mHashImages:Ljava/util/HashMap;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 264
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    if-eqz v0, :cond_16

    .line 267
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 268
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 270
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setRow(I)V

    .line 271
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setMarkPosition(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setShowPreview(Z)V

    .line 273
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->notifyDataSetChanged()V

    .line 277
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_size:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->setMarkSize(I)V

    const-string v0, "relativeLayout1"

    .line 279
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v1, "navi_title"

    .line 282
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 281
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_size:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 292
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    sget-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_10

    .line 294
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    const-string v0, "button1"

    .line 301
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    sget-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_11

    .line 303
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 304
    sget-object v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 306
    :cond_11
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_bg:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 309
    :goto_3
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_color:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_size:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "button2"

    .line 315
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 314
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 316
    sget-object v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_12

    .line 317
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 318
    sget-object v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 320
    :cond_12
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 322
    :goto_4
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_color:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_size:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 326
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->exchange:Z

    if-eqz v3, :cond_15

    .line 328
    sget-object v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_13

    .line 329
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 330
    sget-object v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 332
    :cond_13
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 335
    :goto_5
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_color:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_size:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 339
    new-instance v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$4;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$4;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    sget-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14

    .line 347
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 348
    sget-object v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 350
    :cond_14
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_bg:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 352
    :goto_6
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_color:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_size:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 356
    new-instance v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :cond_15
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mReplaceTxt:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->intervalTime:I

    if-lez v0, :cond_16

    .line 371
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    .line 377
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->intervalTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 371
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    :cond_16
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemClickEvent(ILcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;)V
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mAllImgList:Ljava/util/ArrayList;

    .line 389
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 391
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMax:I

    const/4 v2, 0x1

    const-string v3, "*"

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMaxText:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 399
    :cond_0
    iget-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 400
    iput-boolean v1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMax:I

    if-ge v0, v4, :cond_2

    .line 403
    iput-boolean v2, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    .line 407
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "debug"

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 409
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    const-string v0, "mo_media_scanner_select"

    .line 411
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 410
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    :cond_3
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "unselected"

    .line 415
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemSelectedImage:Landroid/widget/ImageView;

    const-string v1, "mediascanner_item_select_icon"

    .line 420
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    .line 419
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMax:I

    if-ge v0, v1, :cond_6

    const-string v0, "selected"

    .line 426
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;->itemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 429
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    :cond_6
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMaxText:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mImgsAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    if-eqz p1, :cond_7

    .line 451
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mSelectedIconBmp:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_7

    .line 452
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_7
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mReplaceTxt:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "navi_title"

    .line 457
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 456
    check-cast p1, Landroid/widget/TextView;

    .line 458
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mReplaceTxt:Ljava/lang/String;

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mFilelist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_8

    .line 462
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->mReplaceTxt:Ljava/lang/String;

    invoke-virtual {p2, v3, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public sendfiles(Landroid/view/View;)V
    .locals 0

    .line 504
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->closeForResult()V

    return-void
.end method

.method public setFullScreen()V
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public tobreak(Landroid/view/View;)V
    .locals 1

    .line 498
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->setResult(ILandroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->finish()V

    return-void
.end method
