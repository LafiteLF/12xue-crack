.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;
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

.field public openAnimTime:I

.field public placeholdImg:Ljava/lang/String;

.field public zoomEnabled:Z


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->zoomEnabled:Z

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->openAnimTime:I

    const-string v1, "images"

    .line 35
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 38
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v3, "/storage"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "fs"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "widget"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/data"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "content"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "activeIndex"

    .line 54
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->activeIndex:I

    const-string v0, "placeholderImg"

    .line 55
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->placeholdImg:Ljava/lang/String;

    const-string p2, "zoomEnabled"

    .line 58
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->zoomEnabled:Z

    :cond_4
    const-string p2, "bgColor"

    .line 62
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->bgColor:I

    const-wide/16 v0, 0x0

    const-string p2, "atime"

    .line 64
    invoke-virtual {p1, p2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->openAnimTime:I

    return-void
.end method
