.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field public activeIndex:I

.field public bgColor:I

.field public imagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public placeholdImg:Ljava/lang/String;

.field public zoomEnabled:Z


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->imagePaths:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->zoomEnabled:Z

    const-string v0, "images"

    .line 33
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const-string v0, "activeIndex"

    .line 45
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->activeIndex:I

    const-string v0, "placeholderImg"

    .line 46
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->placeholdImg:Ljava/lang/String;

    const-string p2, "zoomEnabled"

    .line 49
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->zoomEnabled:Z

    :cond_3
    const-string p2, "bgColor"

    .line 53
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Config;->bgColor:I

    return-void
.end method
