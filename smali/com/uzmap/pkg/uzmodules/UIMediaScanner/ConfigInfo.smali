.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILTER_ALL:Ljava/lang/String; = "all"

.field public static final FILTER_PICTURE:Ljava/lang/String; = "picture"

.field public static final FILTER_VIDEO:Ljava/lang/String; = "video"

.field public static cancelBgBitmap:Landroid/graphics/Bitmap; = null

.field public static finishBgBitmap:Landroid/graphics/Bitmap; = null

.field public static navBgBitmap:Landroid/graphics/Bitmap; = null

.field private static final serialVersionUID:J = 0x5b809a7f16f0d7caL


# instance fields
.field public bgColor:I

.field public cancel_bg:I

.field public cancel_title:Ljava/lang/String;

.field public cancel_title_color:I

.field public cancel_title_size:I

.field public clasifyTitle:Ljava/lang/String;

.field public classify:Z

.field public col:I

.field public exchange:Z

.field public filterType:Ljava/lang/String;

.field public finish_bg:I

.field public finish_title:Ljava/lang/String;

.field public finish_title_color:I

.field public finish_title_size:I

.field public intervalTime:I

.field public isBounces:Z

.field public isSort:Z

.field public key:Ljava/lang/String;

.field public mark_icon:Ljava/lang/String;

.field public mark_position:Ljava/lang/String;

.field public mark_size:I

.field public navi_bg:I

.field public navi_title:Ljava/lang/String;

.field public navi_title_color:I

.field public navi_title_size:I

.field public order:Ljava/lang/String;

.field public rotation:Z

.field public selectedMax:I

.field public selectedMaxText:Ljava/lang/String;

.field public showBrowser:Z

.field public showPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->rotation:Z

    const-string v1, "\u6700\u591a\u663e\u793a*\u4e2a\u8d44\u6e90"

    .line 22
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMaxText:Ljava/lang/String;

    const-string v1, "\u76f8\u7c3f"

    .line 24
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->clasifyTitle:Ljava/lang/String;

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->bgColor:I

    const/4 v2, 0x4

    .line 30
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    .line 31
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->isBounces:Z

    const/4 v2, 0x5

    .line 32
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMax:I

    const-string v2, "all"

    .line 34
    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v2, "bottom_left"

    .line 40
    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_position:Ljava/lang/String;

    const/16 v2, 0x12

    .line 41
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_size:I

    const v3, -0x111112

    .line 46
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_bg:I

    const-string v3, "\u5df2\u9009\u62e9*\u9879"

    .line 47
    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title:Ljava/lang/String;

    const/high16 v3, -0x1000000

    .line 48
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_color:I

    .line 49
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_size:I

    .line 54
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_bg:I

    .line 55
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_color:I

    const-string v4, "\u53d6\u6d88"

    .line 56
    iput-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_size:I

    .line 66
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_bg:I

    .line 67
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_color:I

    const-string v3, "\u5b8c\u6210"

    .line 68
    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_size:I

    const-string v2, "time"

    .line 75
    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->key:Ljava/lang/String;

    const-string v2, "desc"

    .line 76
    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->order:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->isSort:Z

    .line 83
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->intervalTime:I

    .line 84
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->exchange:Z

    .line 86
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    .line 87
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showBrowser:Z

    return-void
.end method
