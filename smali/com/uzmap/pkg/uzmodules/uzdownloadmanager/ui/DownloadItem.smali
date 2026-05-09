.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;
.super Landroid/widget/RelativeLayout;
.source "DownloadItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;
    }
.end annotation


# static fields
.field public static final download_checkbox:I

.field public static final download_icon:I

.field public static final download_info_layout:I

.field public static final download_mime:I

.field public static final download_more:I

.field public static final download_percent:I

.field public static final download_pro_layout:I

.field public static final download_pro_text:I

.field public static final download_status_img:I

.field public static final download_title:I

.field public static final mo_download_mgr_loading:I

.field public static final mo_download_mgr_pause:I

.field public static final status_text:I


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDownloadIcon:Landroid/widget/ImageView;

.field private mDownloadId:J

.field protected mDownloadInfoLayout:Landroid/view/ViewGroup;

.field private mDownloadMime:Landroid/widget/TextView;

.field private mDownloadMore:Landroid/widget/ImageView;

.field private mDownloadPercent:Landroid/widget/ProgressBar;

.field private mDownloadProLayout:Landroid/view/ViewGroup;

.field private mDownloadProText:Landroid/widget/TextView;

.field private mDownloadStatusImg:Landroid/widget/ImageView;

.field private mDownloadStatusText:Landroid/widget/TextView;

.field private mDownloadTitle:Landroid/widget/TextView;

.field private mEditMode:Z

.field private mListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

.field private mMediaType:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "download_info_layout"

    .line 27
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_info_layout:I

    const-string v0, "download_checkbox"

    .line 28
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_checkbox:I

    const-string v0, "download_title"

    .line 29
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_title:I

    const-string v0, "download_mime"

    .line 30
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_mime:I

    const-string v0, "download_icon"

    .line 31
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_icon:I

    const-string v0, "download_pro_layout"

    .line 32
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_pro_layout:I

    const-string v0, "download_status_img"

    .line 33
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_status_img:I

    const-string v0, "status_text"

    .line 34
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->status_text:I

    const-string v0, "download_percent"

    .line 35
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_percent:I

    const-string v0, "download_pro_text"

    .line 36
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_pro_text:I

    const-string v0, "download_more"

    .line 37
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_more:I

    const-string v0, "mo_download_mgr_loading"

    .line 39
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mo_download_mgr_loading:I

    const-string v0, "mo_download_mgr_pause"

    .line 40
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mo_download_mgr_pause:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->toggleCheckMark()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 84
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    .line 85
    fill-array-data v0, :array_1

    .line 86
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 87
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 88
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 89
    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v3, [I

    const v4, 0x101009c

    aput v4, v3, v6

    .line 90
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v6, [I

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x66333334
        -0x66333334
        -0x66333334
        -0x66333334
    .end array-data
.end method

.method private toggleCheckMark()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadId:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;->onDownloadSelectionChanged(JZ)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 98
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_info_layout:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadInfoLayout:Landroid/view/ViewGroup;

    .line 99
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_checkbox:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 100
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_title:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadTitle:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_mime:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMime:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_icon:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    .line 103
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_more:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_pro_layout:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    .line 105
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_status_img:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusImg:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->status_text:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusText:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_percent:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadPercent:Landroid/widget/ProgressBar;

    .line 108
    sget v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->download_pro_text:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProText:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 109
    fill-array-data v1, :array_0

    .line 110
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 111
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 112
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array v3, v0, [I

    .line 113
    fill-array-data v3, :array_1

    .line 114
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 115
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v3, v6, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    aput-object v1, v4, v5

    const/4 v6, 0x2

    aput-object v3, v4, v6

    .line 120
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x1020000

    .line 121
    invoke-virtual {v6, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const v2, 0x102000f

    .line 122
    invoke-virtual {v6, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const v1, 0x102000d

    .line 123
    invoke-virtual {v6, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 124
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadPercent:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$1;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v0, [I

    .line 131
    fill-array-data v0, :array_2

    .line 132
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 133
    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    const v2, -0x79797a

    .line 134
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    int-to-float v0, v0

    .line 135
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x333334
        -0x333334
        -0x333334
        -0x333334
    .end array-data

    :array_1
    .array-data 4
        -0x10a183
        -0x10a183
        -0x10a183
        -0x10a183
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setChecked(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setDownloadId(J)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadId:J

    return-void
.end method

.method public setEditMode(Z)V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mEditMode:Z

    if-eq v0, p1, :cond_2

    .line 160
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mEditMode:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_0
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mStatus:I

    if-ne p1, v1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMimeTypeAndSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 193
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mMediaType:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->getSingleton()Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/FormatMimeType;->getformatNameFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadPercent:Landroid/widget/ProgressBar;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 200
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectListener(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mListener:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem$DownloadSelectListener;

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 4

    .line 224
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mStatus:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 228
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mEditMode:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 229
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadProLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 v2, 0x4

    if-ne p1, v1, :cond_3

    .line 234
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x10

    if-ne p1, p2, :cond_4

    .line 240
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusText:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 242
    :cond_4
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusText:Landroid/widget/TextView;

    const v3, -0x555556

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    :goto_3
    iget-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mEditMode:Z

    if-eqz p2, :cond_5

    .line 245
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    if-ne p1, v1, :cond_6

    .line 247
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadMore:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_4
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 250
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusImg:Landroid/widget/ImageView;

    sget p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mo_download_mgr_loading:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 252
    :cond_7
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadStatusImg:Landroid/widget/ImageView;

    sget p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mo_download_mgr_pause:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_5
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadItem;->mDownloadTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
