.class public Lcom/artifex/mupdf/MuPDFActivity;
.super Landroid/app/Activity;
.source "MuPDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/MuPDFActivity$LinkState;
    }
.end annotation


# static fields
.field private static final SEARCH_PROGRESS_DELAY:I = 0xc8


# instance fields
.field private final TAP_PAGE_MARGIN:I

.field private core:Lcom/artifex/mupdf/MuPDFCore;

.field private mAlertBuilder:Landroid/app/AlertDialog$Builder;

.field private mBackButton:Landroid/widget/TextView;

.field private mButtonsView:Landroid/view/View;

.field private mButtonsVisible:Z

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mConfig:Lcom/apicloud/pdfReader/BtnConfig;

.field private mDocView:Lcom/artifex/mupdf/ReaderView;

.field private mFileName:Ljava/lang/String;

.field private mFilenameView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkState:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

.field private mOutlineButton:Landroid/widget/ImageButton;

.field private mPageNumberView:Landroid/widget/TextView;

.field private mPageSlider:Landroid/widget/SeekBar;

.field private mPasswordView:Landroid/widget/EditText;

.field private mSearchBack:Landroid/widget/ImageButton;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchFwd:Landroid/widget/ImageButton;

.field private mSearchTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/artifex/mupdf/SearchTaskResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchText:Landroid/widget/EditText;

.field private mTopBarIsSearch:Z

.field private mTopBarSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    .line 87
    iput v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->TAP_PAGE_MARGIN:I

    .line 112
    sget-object v0, Lcom/artifex/mupdf/MuPDFActivity$LinkState;->DEFAULT:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mLinkState:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPasswordView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFActivity$LinkState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mLinkState:Lcom/artifex/mupdf/MuPDFActivity$LinkState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/artifex/mupdf/MuPDFActivity;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    return p0
.end method

.method static synthetic access$500(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/TextView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageNumberView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchBack:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchFwd:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    return-object p0
.end method

.method private openFile(Ljava/lang/String;)Lcom/artifex/mupdf/MuPDFCore;
    .locals 3

    const/16 v0, 0x2f

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 121
    new-instance v1, Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    :try_start_0
    new-instance v1, Lcom/artifex/mupdf/MuPDFCore;

    invoke-direct {v1, p1}, Lcom/artifex/mupdf/MuPDFCore;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    .line 129
    invoke-static {v0}, Lcom/artifex/mupdf/OutlineActivityData;->set(Lcom/artifex/mupdf/OutlineActivityData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    return-object p1

    :catch_0
    move-exception p1

    .line 133
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createUI(Landroid/os/Bundle;)V
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/artifex/mupdf/MuPDFActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/artifex/mupdf/MuPDFActivity$4;-><init>(Lcom/artifex/mupdf/MuPDFActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    .line 316
    new-instance v1, Lcom/artifex/mupdf/MuPDFPageAdapter;

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    invoke-direct {v1, p0, v2}, Lcom/artifex/mupdf/MuPDFPageAdapter;-><init>(Landroid/content/Context;Lcom/artifex/mupdf/MuPDFCore;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/ReaderView;->setAdapter(Landroid/widget/Adapter;)V

    .line 320
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->makeButtonsView()V

    .line 323
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFilenameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$5;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$5;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 340
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$6;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$6;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$7;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$7;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$8;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$8;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchBack:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchFwd:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$9;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$9;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$10;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$10;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 392
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$11;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$11;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 401
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchBack:Landroid/widget/ImageButton;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$12;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$12;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchFwd:Landroid/widget/ImageButton;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$13;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$13;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFCore;->hasOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mOutlineButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$14;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$14;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mOutlineButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    :goto_0
    invoke-virtual {p0, v1}, Lcom/artifex/mupdf/MuPDFActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/artifex/mupdf/ReaderView;->setDisplayedViewIndex(I)V

    if-eqz p1, :cond_2

    const-string v0, "ButtonsHidden"

    .line 456
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->showButtons()V

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "SearchMode"

    .line 459
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->searchModeOn()V

    .line 463
    :cond_4
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 464
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-string v0, "tiled_background"

    .line 467
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method hideButtons()V
    .locals 5

    .line 577
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    .line 579
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->hideKeyboard()V

    .line 581
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xc8

    .line 582
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 583
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$17;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$17;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 590
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 593
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 594
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$18;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$18;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 603
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-boolean v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->bottomProgress:Z

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method hideKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 747
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/MuPDFActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 749
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method killSearch()V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 754
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method makeButtonsView()V
    .locals 5

    const-string v0, "buttons"

    .line 638
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 639
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    const-string v0, "backBtn"

    .line 641
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    .line 643
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->isNull:Z

    if-nez v0, :cond_4

    .line 645
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 646
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 647
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 650
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->bgNormal:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->corner:I

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v3, v3, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/pdfReader/Utils;->getRoundBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->bgNormal:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v0, v1, v2}, Lcom/apicloud/pdfReader/Utils;->createColorBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->corner:I

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v3, v3, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/pdfReader/Utils;->getRoundBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->bgHighlight:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->corner:I

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v3, v3, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v4, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v4, v4, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v1, v2, v3, v4}, Lcom/apicloud/pdfReader/Utils;->getRoundBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->bgHighlight:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v3, v3, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v1, v2, v3}, Lcom/apicloud/pdfReader/Utils;->createColorBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 662
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v2, v2, Lcom/apicloud/pdfReader/BtnConfig;->corner:I

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v3, v3, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iget-object v4, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v4, v4, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    invoke-static {v1, v2, v3, v4}, Lcom/apicloud/pdfReader/Utils;->getRoundBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 665
    :goto_1
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, v0}, Lcom/apicloud/pdfReader/Utils;->addStateDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->titleColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->titleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 670
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->titleAlignment:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-object v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->titleAlignment:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 679
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->isNull:Z

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 682
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->w:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 683
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->h:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v1, "ic_arrow_left"

    .line 685
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    .line 686
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const-string v0, "docNameText"

    .line 691
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFilenameView:Landroid/widget/TextView;

    const-string v0, "pageSlider"

    .line 694
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    const-string v0, "pageNumber"

    .line 697
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageNumberView:Landroid/widget/TextView;

    const-string v0, "searchButton"

    .line 700
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 701
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchButton:Landroid/widget/ImageButton;

    const-string v0, "cancel"

    .line 703
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 704
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mCancelButton:Landroid/widget/ImageButton;

    const-string v0, "outlineButton"

    .line 706
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mOutlineButton:Landroid/widget/ImageButton;

    const-string v0, "switcher"

    .line 709
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    const-string v0, "searchBack"

    .line 712
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchBack:Landroid/widget/ImageButton;

    const-string v0, "searchForward"

    .line 715
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchFwd:Landroid/widget/ImageButton;

    const-string v0, "searchText"

    .line 718
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 719
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    .line 721
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->topBackButton:Z

    if-nez v0, :cond_6

    .line 726
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    :cond_6
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->topListButton:Z

    if-nez v0, :cond_7

    .line 729
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mOutlineButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 731
    :cond_7
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-boolean v0, v0, Lcom/apicloud/pdfReader/BtnConfig;->topSearchButton:Z

    if-nez v0, :cond_8

    .line 732
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-ltz p2, :cond_0

    .line 476
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {v0, p2}, Lcom/artifex/mupdf/ReaderView;->setDisplayedViewIndex(I)V

    .line 477
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "backBtn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/apicloud/pdfReader/BtnConfig;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artifex/mupdf/MuPDFCore;

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-eqz p1, :cond_0

    const-string v0, "FileName"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media/external/file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 166
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artifex/mupdf/MuPDFActivity;->openFile(Ljava/lang/String;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFCore;->needsPassword()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity;->requestPassword(Landroid/os/Bundle;)V

    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_4

    .line 178
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "open_failed"

    .line 180
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResStringID(Ljava/lang/String;)I

    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v0, -0x1

    .line 182
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$1;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$1;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    const-string v2, "Dismiss"

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 192
    :cond_4
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity;->createUI(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/artifex/mupdf/MuPDFCore;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 515
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->killSearch()V

    .line 517
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/MuPDFActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {v2}, Lcom/artifex/mupdf/ReaderView;->getDisplayedViewIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    const/4 v1, 0x0

    .line 483
    iput-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 489
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 491
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    if-eqz v1, :cond_0

    const-string v1, "FileName"

    .line 492
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/MuPDFActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {v2}, Lcom/artifex/mupdf/ReaderView;->getDisplayedViewIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "ButtonsHidden"

    .line 505
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    :cond_1
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarIsSearch:Z

    if-eqz v0, :cond_2

    const-string v0, "SearchMode"

    .line 508
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public requestPassword(Landroid/os/Bundle;)V
    .locals 3

    .line 196
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x80

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 198
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPasswordView:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 200
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "enter_password"

    .line 202
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResStringID(Ljava/lang/String;)I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 204
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 205
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/artifex/mupdf/MuPDFActivity$2;-><init>(Lcom/artifex/mupdf/MuPDFActivity;Landroid/os/Bundle;)V

    const/4 p1, -0x1

    const-string v2, "Ok"

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    new-instance p1, Lcom/artifex/mupdf/MuPDFActivity$3;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/MuPDFActivity$3;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method search(I)V
    .locals 4

    .line 761
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->hideKeyboard()V

    .line 762
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->killSearch()V

    .line 766
    new-instance v0, Lcom/artifex/mupdf/ProgressDialogX;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/ProgressDialogX;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 767
    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/ProgressDialogX;->setProgressStyle(I)V

    const-string v2, "searching_"

    .line 769
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResStringID(Ljava/lang/String;)I

    move-result v2

    .line 770
    invoke-virtual {p0, v2}, Lcom/artifex/mupdf/MuPDFActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/artifex/mupdf/ProgressDialogX;->setTitle(Ljava/lang/CharSequence;)V

    .line 771
    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$19;

    invoke-direct {v2, p0}, Lcom/artifex/mupdf/MuPDFActivity$19;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v2}, Lcom/artifex/mupdf/ProgressDialogX;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 776
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {v2}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/artifex/mupdf/ProgressDialogX;->setMax(I)V

    .line 778
    new-instance v2, Lcom/artifex/mupdf/MuPDFActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/artifex/mupdf/MuPDFActivity$20;-><init>(Lcom/artifex/mupdf/MuPDFActivity;Lcom/artifex/mupdf/ProgressDialogX;)V

    iput-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchTask:Landroid/os/AsyncTask;

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 844
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method searchModeOff()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarIsSearch:Z

    .line 620
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->hideKeyboard()V

    .line 621
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    const/4 v0, 0x0

    .line 622
    invoke-static {v0}, Lcom/artifex/mupdf/SearchTaskResult;->set(Lcom/artifex/mupdf/SearchTaskResult;)V

    .line 625
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {v0}, Lcom/artifex/mupdf/ReaderView;->resetupChildren()V

    return-void
.end method

.method searchModeOn()V
    .locals 1

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarIsSearch:Z

    .line 613
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 614
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->showKeyboard()V

    .line 615
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    return-void
.end method

.method showButtons()V
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mButtonsVisible:Z

    .line 539
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mDocView:Lcom/artifex/mupdf/ReaderView;

    invoke-virtual {v1}, Lcom/artifex/mupdf/ReaderView;->getDisplayedViewIndex()I

    move-result v1

    .line 540
    invoke-virtual {p0, v1}, Lcom/artifex/mupdf/MuPDFActivity;->updatePageNumView(I)V

    .line 541
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {v3}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 542
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 543
    iget-boolean v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarIsSearch:Z

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 545
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity;->showKeyboard()V

    .line 548
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xc8

    .line 549
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 550
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$15;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$15;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 557
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mTopBarSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 560
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 561
    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$16;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$16;-><init>(Lcom/artifex/mupdf/MuPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 570
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mConfig:Lcom/apicloud/pdfReader/BtnConfig;

    iget-boolean v1, v1, Lcom/apicloud/pdfReader/BtnConfig;->bottomProgress:Z

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method showKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 741
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/MuPDFActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method updatePageNumView(I)V
    .locals 4

    .line 629
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity;->mPageNumberView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity;->core:Lcom/artifex/mupdf/MuPDFCore;

    invoke-virtual {p1}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%d/%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
