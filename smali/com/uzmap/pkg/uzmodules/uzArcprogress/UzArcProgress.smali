.class public Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzArcProgress.java"


# instance fields
.field private id:I

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

.field private ret:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    .line 23
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->ret:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "id"

    .line 96
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->removeViewFromCurWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public jsmethod_hide(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const-string v0, "id"

    .line 104
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 107
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 30
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    const-string v0, "annular"

    const-string v2, "type"

    .line 32
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_4

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const-string v0, "sector"

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "crescent"

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    move v0, v4

    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_5

    goto :goto_1

    .line 67
    :cond_5
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    .line 68
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_6
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    .line 59
    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->setAnimDuration(I)V

    .line 60
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    invoke-virtual {v0, v5}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->setDrawInnerCircle(Z)V

    .line 61
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    invoke-virtual {v0, v5}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->setDrawText(Z)V

    .line 62
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    invoke-virtual {v0, v5}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->setTouchEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->showValue(FFZ)V

    .line 64
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_7
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    .line 55
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v2, "fixedOn"

    .line 75
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fixed"

    .line 76
    invoke-virtual {p1, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 77
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->progress:Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->ret:Lorg/json/JSONObject;

    const-string v1, "id"

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public jsmethod_setValue(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "id"

    .line 88
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "value"

    .line 89
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    .line 90
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->showValue(FFZ)V

    return-void
.end method

.method public jsmethod_show(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const-string v0, "id"

    .line 112
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/UzArcProgress;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    return-void
.end method
