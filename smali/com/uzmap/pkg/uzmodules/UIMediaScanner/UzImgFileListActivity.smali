.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;
.super Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;
.source "UzImgFileListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x200

.field public static final RESULT_CODE:I = 0x201

.field public static final TRANS_TAG:Ljava/lang/String; = "hasData"

.field public static fileTraversal:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;


# instance fields
.field private mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

.field private mListAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLocallist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;",
            ">;"
        }
    .end annotation
.end field

.field private mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Ljava/util/List;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mLocallist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mLocallist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mListAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    return-void
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$6(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mListAdapter:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    return-object p0
.end method


# virtual methods
.method public isPortrait()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->rotation:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p1, 0x101

    .line 115
    invoke-virtual {p0, p1, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "uz_media_scanner_imgfilelist"

    .line 42
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->setContentView(I)V

    const-string v0, "relativeLayout1"

    .line 43
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "listView1"

    .line 44
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mListView:Landroid/widget/ListView;

    .line 45
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mUtil:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 46
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "configData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 136
    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->fileTraversal:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

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

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 126
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mLocallist:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    sput-object p3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->fileTraversal:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    const-string p3, "hasData"

    const/4 p4, 0x1

    .line 127
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->mConfig:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    const-string p3, "configData"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p2, 0x200

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setFullScreen()V
    .locals 2

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public tobreak(Landroid/view/View;)V
    .locals 1

    .line 97
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->finish()V

    return-void
.end method
