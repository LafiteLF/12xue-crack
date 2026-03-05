.class public Lcom/artifex/mupdf/mini/DocumentActivity;
.super Landroid/app/Activity;
.source "DocumentActivity.java"


# instance fields
.field private final APP:Ljava/lang/String;

.field public final NAVIGATE_REQUEST:I

.field protected actionBar:Landroid/view/View;

.field protected buffer:[B

.field protected canvasH:I

.field protected canvasW:I

.field protected currentBar:Landroid/view/View;

.field protected currentPage:I

.field protected displayDPI:F

.field protected doc:Lcom/artifex/mupdf/fitz/Document;

.field protected fitPage:Z

.field protected flatOutline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artifex/mupdf/mini/OutlineActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field protected hasLoaded:Z

.field protected history:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isReflowable:Z

.field protected key:Ljava/lang/String;

.field protected layoutButton:Landroid/view/View;

.field protected layoutEm:F

.field protected layoutH:F

.field protected layoutPopupMenu:Landroid/widget/PopupMenu;

.field protected layoutW:F

.field protected mimetype:Ljava/lang/String;

.field protected navigationBar:Landroid/view/View;

.field protected outlineButton:Landroid/view/View;

.field protected pageCount:I

.field protected pageLabel:Landroid/widget/TextView;

.field protected pageSeekbar:Landroid/widget/SeekBar;

.field protected pageView:Lcom/artifex/mupdf/mini/PageView;

.field protected pageZoom:F

.field protected path:Ljava/lang/String;

.field protected prefs:Landroid/content/SharedPreferences;

.field protected searchBackwardButton:Landroid/view/View;

.field protected searchBar:Landroid/view/View;

.field protected searchButton:Landroid/view/View;

.field protected searchCloseButton:Landroid/view/View;

.field protected searchForwardButton:Landroid/view/View;

.field protected searchHitPage:I

.field protected searchNeedle:Ljava/lang/String;

.field protected searchText:Landroid/widget/EditText;

.field protected stopSearch:Z

.field protected title:Ljava/lang/String;

.field protected titleLabel:Landroid/widget/TextView;

.field protected wentBack:Z

.field protected worker:Lcom/artifex/mupdf/mini/Worker;

.field protected zoomButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "MuPDF"

    .line 41
    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->APP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->NAVIGATE_REQUEST:I

    return-void
.end method

.method static synthetic access$000(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadOutline()V

    return-void
.end method

.method private loadOutline()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$20;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$20;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method


# virtual methods
.method protected askPassword(I)V
    .locals 3

    .line 304
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x80

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 306
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 308
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    sget v2, Lcom/artifex/mupdf/mini/R$string;->dlog_password_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 312
    new-instance p1, Lcom/artifex/mupdf/mini/DocumentActivity$13;

    invoke-direct {p1, p0, v0}, Lcom/artifex/mupdf/mini/DocumentActivity$13;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;Landroid/widget/EditText;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    new-instance p1, Lcom/artifex/mupdf/mini/DocumentActivity$14;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$14;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    const/high16 v0, 0x1040000

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    new-instance p1, Lcom/artifex/mupdf/mini/DocumentActivity$15;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$15;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected checkPassword(Ljava/lang/String;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity$16;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method public goBackward()V
    .locals 2

    .line 613
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 614
    iput-boolean v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->wentBack:Z

    sub-int/2addr v0, v1

    .line 615
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 616
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .line 621
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 622
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 623
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :cond_0
    return-void
.end method

.method public gotoPage(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 628
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    if-eq p1, v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->history:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 631
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :cond_0
    return-void
.end method

.method public gotoURI(Ljava/lang/String;)V
    .locals 2

    .line 636
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 637
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MuPDF"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected hideKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 376
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected hideSearch()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->actionBar:Landroid/view/View;

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->hideKeyboard()V

    .line 593
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->resetSearch()V

    return-void
.end method

.method protected loadDocument()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$18;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$18;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected loadPage()V
    .locals 4

    .line 533
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 534
    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageZoom:F

    const/4 v2, 0x1

    .line 535
    iput-boolean v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->stopSearch:Z

    .line 536
    iget-object v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v3, Lcom/artifex/mupdf/mini/DocumentActivity$21;

    invoke-direct {v3, p0, v0, v1}, Lcom/artifex/mupdf/mini/DocumentActivity$21;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;IF)V

    invoke-virtual {v2, v3}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-lt p2, p3, :cond_0

    sub-int/2addr p2, p3

    .line 366
    invoke-virtual {p0, p2}, Lcom/artifex/mupdf/mini/DocumentActivity;->gotoPage(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 360
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 96
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->displayDPI:F

    .line 100
    sget p1, Lcom/artifex/mupdf/mini/R$layout;->document_activity:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->setContentView(I)V

    .line 101
    sget p1, Lcom/artifex/mupdf/mini/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->actionBar:Landroid/view/View;

    .line 102
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_bar:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    .line 103
    sget p1, Lcom/artifex/mupdf/mini/R$id;->navigation_bar:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->navigationBar:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->actionBar:Landroid/view/View;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->mimetype:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->key:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->title:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->path:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->title:Ljava/lang/String;

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 120
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 121
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->buffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MuPDF"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 130
    :goto_1
    sget p1, Lcom/artifex/mupdf/mini/R$id;->title_label:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->titleLabel:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->history:Ljava/util/Stack;

    .line 135
    new-instance p1, Lcom/artifex/mupdf/mini/Worker;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/mini/Worker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    .line 136
    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/Worker;->start()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/artifex/mupdf/mini/DocumentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->prefs:Landroid/content/SharedPreferences;

    const/high16 v0, 0x41000000    # 8.0f

    const-string v3, "layoutEm"

    .line 139
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    .line 140
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "fitPage"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->fitPage:Z

    .line 141
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->prefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->key:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    .line 142
    iput v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    .line 143
    iput-boolean v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->hasLoaded:Z

    .line 145
    sget p1, Lcom/artifex/mupdf/mini/R$id;->page_view:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/artifex/mupdf/mini/PageView;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageView:Lcom/artifex/mupdf/mini/PageView;

    .line 146
    invoke-virtual {p1, p0}, Lcom/artifex/mupdf/mini/PageView;->setActionListener(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    .line 148
    sget p1, Lcom/artifex/mupdf/mini/R$id;->page_label:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageLabel:Landroid/widget/TextView;

    .line 149
    sget p1, Lcom/artifex/mupdf/mini/R$id;->page_seekbar:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageSeekbar:Landroid/widget/SeekBar;

    .line 150
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$1;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$1;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 164
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchButton:Landroid/view/View;

    .line 165
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$2;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$2;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_text:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchText:Landroid/widget/EditText;

    .line 171
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$3;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$3;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchText:Landroid/widget/EditText;

    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$4;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$4;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_close_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchCloseButton:Landroid/view/View;

    .line 192
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$5;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$5;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_backward_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBackwardButton:Landroid/view/View;

    .line 198
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$6;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$6;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget p1, Lcom/artifex/mupdf/mini/R$id;->search_forward_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchForwardButton:Landroid/view/View;

    .line 204
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$7;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$7;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    sget p1, Lcom/artifex/mupdf/mini/R$id;->outline_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->outlineButton:Landroid/view/View;

    .line 211
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$8;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$8;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget p1, Lcom/artifex/mupdf/mini/R$id;->zoom_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->zoomButton:Landroid/view/View;

    .line 223
    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$9;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$9;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget p1, Lcom/artifex/mupdf/mini/R$id;->layout_button:I

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutButton:Landroid/view/View;

    .line 231
    new-instance p1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutButton:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutPopupMenu:Landroid/widget/PopupMenu;

    .line 232
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/artifex/mupdf/mini/R$menu;->layout_menu:I

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutPopupMenu:Landroid/widget/PopupMenu;

    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$10;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$10;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutButton:Landroid/view/View;

    new-instance v0, Lcom/artifex/mupdf/mini/DocumentActivity$11;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$11;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPageViewSizeChanged(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 261
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageZoom:F

    .line 262
    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->canvasW:I

    .line 263
    iput p2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->canvasH:I

    mul-int/lit8 p1, p1, 0x48

    int-to-float p1, p1

    .line 264
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->displayDPI:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutW:F

    mul-int/lit8 p2, p2, 0x48

    int-to-float p1, p2

    div-float/2addr p1, v0

    .line 265
    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutH:F

    .line 266
    iget-boolean p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->hasLoaded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->hasLoaded:Z

    .line 268
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->openDocument()V

    goto :goto_0

    .line 269
    :cond_0
    iget-boolean p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->isReflowable:Z

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->relayoutDocument()V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :goto_0
    return-void
.end method

.method public onPageViewZoomChanged(F)V
    .locals 1

    .line 277
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageZoom:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 278
    iput p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageZoom:F

    .line 279
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->loadPage()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 348
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->layoutEm:F

    const-string v2, "layoutEm"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 350
    iget-boolean v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->fitPage:Z

    const-string v2, "fitPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->key:Ljava/lang/String;

    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected openDocument()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$12;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$12;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected relayoutDocument()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$19;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/mini/DocumentActivity$19;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected resetSearch()V
    .locals 1

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->stopSearch:Z

    const/4 v0, -0x1

    .line 383
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageView:Lcom/artifex/mupdf/mini/PageView;

    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/PageView;->resetHits()V

    return-void
.end method

.method protected runSearch(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->stopSearch:Z

    .line 390
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/artifex/mupdf/mini/DocumentActivity$17;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/artifex/mupdf/mini/DocumentActivity$17;-><init>(Lcom/artifex/mupdf/mini/DocumentActivity;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected search(I)V
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->hideKeyboard()V

    .line 435
    iget v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    iget v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentPage:I

    if-ne v0, v1, :cond_0

    add-int/2addr v1, p1

    :cond_0
    const/4 v0, -0x1

    .line 439
    iput v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchHitPage:I

    .line 440
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchNeedle:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-ltz v1, :cond_2

    .line 444
    iget v2, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->pageCount:I

    if-ge v1, v2, :cond_2

    .line 445
    invoke-virtual {p0, v1, p1, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->runSearch(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected showKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 370
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method protected showSearch()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    iput-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    .line 582
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->actionBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 585
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->showKeyboard()V

    return-void
.end method

.method public toggleUI()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->hideKeyboard()V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->navigationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->currentBar:Landroid/view/View;

    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity;->searchBar:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 606
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 607
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/DocumentActivity;->showKeyboard()V

    :cond_1
    :goto_0
    return-void
.end method
