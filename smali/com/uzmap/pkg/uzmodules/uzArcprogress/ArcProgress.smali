.class public abstract Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;
.super Landroid/view/View;
.source "ArcProgress.java"


# instance fields
.field protected bgcolorsID:I

.field protected centerX:I

.field protected centerY:I

.field protected mProgressWidth:I

.field protected moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field protected progressColorsID:I

.field protected radius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 32
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->setLayerType(ILandroid/graphics/Paint;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "bgColor"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "#C0C0C0"

    .line 56
    :cond_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "pgColor"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "#2e8b57"

    .line 61
    :cond_2
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    .line 62
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->bgcolorsID:I

    .line 63
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->progressColorsID:I

    .line 64
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "centerX"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "centerY"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-nez v0, :cond_3

    move v0, v2

    :cond_3
    if-nez v1, :cond_4

    move v1, v2

    .line 72
    :cond_4
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->centerX:I

    .line 73
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->centerY:I

    .line 74
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x3c

    .line 78
    :cond_5
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->radius:I

    .line 79
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "loopWidth"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    .line 83
    :cond_6
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->mProgressWidth:I

    return-void
.end method


# virtual methods
.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return v0

    .line 40
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public abstract showValue(FFZ)V
.end method
