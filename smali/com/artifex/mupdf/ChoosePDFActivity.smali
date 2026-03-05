.class public Lcom/artifex/mupdf/ChoosePDFActivity;
.super Landroid/app/ListActivity;
.source "ChoosePDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectory:Ljava/io/File;

.field private mFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->fileNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mDirectory:Ljava/io/File;

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mFiles:[Ljava/io/File;

    .line 35
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "./"

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/artifex/mupdf/ChoosePDFActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mFiles:[Ljava/io/File;

    if-eqz p1, :cond_0

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 40
    iget-object v3, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->fileNames:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "picker_entry"

    .line 44
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    .line 46
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->fileNames:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 47
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/ChoosePDFActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    if-nez p3, :cond_0

    .line 57
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mFiles:[Ljava/io/File;

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 65
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 67
    iput-object p2, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mDirectory:Ljava/io/File;

    .line 68
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mFiles:[Ljava/io/File;

    .line 69
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->fileNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 70
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->mFiles:[Ljava/io/File;

    if-eqz p1, :cond_2

    .line 71
    array-length p2, p1

    :goto_0
    if-ge p4, p2, :cond_2

    aget-object p3, p1, p4

    .line 72
    iget-object p5, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->fileNames:Ljava/util/List;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    .line 79
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".pdf"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".xps"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, ".cbz"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "choose pdf/xps/cbz file"

    .line 86
    invoke-static {p0, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 80
    :cond_5
    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 81
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.VIEW"

    .line 82
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, p2}, Lcom/artifex/mupdf/ChoosePDFActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
