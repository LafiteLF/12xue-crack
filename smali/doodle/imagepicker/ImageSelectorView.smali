.class public Ldoodle/imagepicker/ImageSelectorView;
.super Landroid/widget/FrameLayout;
.source "ImageSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;,
        Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;
    }
.end annotation


# static fields
.field private static final CURSOR_COUNT:I = 0x64

.field public static final KEY_IS_MULTIPLE_CHOICE:Ljava/lang/String; = "key_is_multiple_choice"

.field public static final KEY_MAX_COUNT:Ljava/lang/String; = "key_max_count"

.field public static final KEY_PATH_LIST:Ljava/lang/String; = "key_path"

.field public static final WHAT_REFRESH_PATH_LIST:I = 0x1


# instance fields
.field private mAdapter:Ldoodle/imagepicker/ImageSelectorAdapter;

.field private mBtnEnter:Landroid/widget/TextView;

.field private mCursorPosition:I

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mIsFinishSearchImage:Z

.field private mIsMultipleChoice:Z

.field private mIsScanning:Z

.field private mMaxCount:I

.field private mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorListener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILjava/util/List;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mCursorPosition:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsFinishSearchImage:Z

    .line 47
    iput-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsScanning:Z

    .line 49
    iput-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsMultipleChoice:Z

    const v0, 0x7fffffff

    .line 50
    iput v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mMaxCount:I

    .line 57
    invoke-virtual {p0}, Ldoodle/imagepicker/ImageSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/kukugtu/moduleplotting/R$layout;->doodle_layout_image_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0, p1, p1}, Ldoodle/imagepicker/ImageSelectorView;->addView(Landroid/view/View;II)V

    .line 60
    iput-boolean p2, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsMultipleChoice:Z

    if-eqz p2, :cond_0

    .line 62
    iput p3, p0, Ldoodle/imagepicker/ImageSelectorView;->mMaxCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 64
    iput p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mMaxCount:I

    .line 66
    :goto_0
    iput-object p5, p0, Ldoodle/imagepicker/ImageSelectorView;->mSelectorListener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    .line 67
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->doodle_list_image:I

    invoke-virtual {p0, p1}, Ldoodle/imagepicker/ImageSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    .line 68
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->btn_enter:I

    invoke-virtual {p0, p1}, Ldoodle/imagepicker/ImageSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mBtnEnter:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->btn_back:I

    invoke-virtual {p0, p1}, Ldoodle/imagepicker/ImageSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mPathList:Ljava/util/ArrayList;

    .line 72
    new-instance p1, Ldoodle/imagepicker/ImageSelectorView$1;

    invoke-direct {p1, p0, p4}, Ldoodle/imagepicker/ImageSelectorView$1;-><init>(Ldoodle/imagepicker/ImageSelectorView;Ljava/util/List;)V

    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mHandler:Landroid/os/Handler;

    .line 98
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    new-instance p2, Ldoodle/imagepicker/ImageSelectorView$2;

    invoke-direct {p2, p0}, Ldoodle/imagepicker/ImageSelectorView$2;-><init>(Ldoodle/imagepicker/ImageSelectorView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 113
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    new-instance p2, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;

    invoke-direct {p2, p0, v2}, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;-><init>(Ldoodle/imagepicker/ImageSelectorView;Ldoodle/imagepicker/ImageSelectorView$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    invoke-direct {p0}, Ldoodle/imagepicker/ImageSelectorView;->scanImageData()V

    return-void
.end method

.method static synthetic access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mAdapter:Ldoodle/imagepicker/ImageSelectorAdapter;

    return-object p0
.end method

.method static synthetic access$002(Ldoodle/imagepicker/ImageSelectorView;Ldoodle/imagepicker/ImageSelectorAdapter;)Ldoodle/imagepicker/ImageSelectorAdapter;
    .locals 0

    .line 33
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mAdapter:Ldoodle/imagepicker/ImageSelectorAdapter;

    return-object p1
.end method

.method static synthetic access$100(Ldoodle/imagepicker/ImageSelectorView;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mPathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Ldoodle/imagepicker/ImageSelectorView;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Ldoodle/imagepicker/ImageSelectorView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsMultipleChoice:Z

    return p0
.end method

.method static synthetic access$1200(Ldoodle/imagepicker/ImageSelectorView;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ldoodle/imagepicker/ImageSelectorView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ldoodle/imagepicker/ImageSelectorView;)I
    .locals 0

    .line 33
    iget p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mMaxCount:I

    return p0
.end method

.method static synthetic access$300(Ldoodle/imagepicker/ImageSelectorView;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mBtnEnter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Ldoodle/imagepicker/ImageSelectorView;)Landroid/widget/GridView;
    .locals 0

    .line 33
    iget-object p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$500(Ldoodle/imagepicker/ImageSelectorView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsFinishSearchImage:Z

    return p0
.end method

.method static synthetic access$502(Ldoodle/imagepicker/ImageSelectorView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsFinishSearchImage:Z

    return p1
.end method

.method static synthetic access$600(Ldoodle/imagepicker/ImageSelectorView;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsScanning:Z

    return p0
.end method

.method static synthetic access$602(Ldoodle/imagepicker/ImageSelectorView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$700(Ldoodle/imagepicker/ImageSelectorView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ldoodle/imagepicker/ImageSelectorView;->scanImageData()V

    return-void
.end method

.method static synthetic access$900(Ldoodle/imagepicker/ImageSelectorView;)I
    .locals 0

    .line 33
    iget p0, p0, Ldoodle/imagepicker/ImageSelectorView;->mCursorPosition:I

    return p0
.end method

.method static synthetic access$902(Ldoodle/imagepicker/ImageSelectorView;I)I
    .locals 0

    .line 33
    iput p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mCursorPosition:I

    return p1
.end method

.method private declared-synchronized scanImageData()V
    .locals 2

    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsFinishSearchImage:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsScanning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mIsScanning:Z

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6682\u65e0\u5916\u90e8\u5b58\u50a8"

    .line 140
    invoke-direct {p0, v0}, Ldoodle/imagepicker/ImageSelectorView;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldoodle/imagepicker/ImageSelectorView$3;

    invoke-direct {v1, p0}, Ldoodle/imagepicker/ImageSelectorView$3;-><init>(Ldoodle/imagepicker/ImageSelectorView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 134
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Ldoodle/imagepicker/ImageSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_back:I

    if-ne v0, v1, :cond_0

    .line 183
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mSelectorListener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    invoke-interface {p1}, Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;->onCancel()V

    goto :goto_1

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/kukugtu/moduleplotting/R$id;->btn_enter:I

    if-ne p1, v0, :cond_2

    .line 185
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView;->mAdapter:Ldoodle/imagepicker/ImageSelectorAdapter;

    invoke-virtual {p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 186
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mAdapter:Ldoodle/imagepicker/ImageSelectorAdapter;

    invoke-virtual {v0}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mSelectorListener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    invoke-interface {v0, p1}, Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;->onEnter(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method
