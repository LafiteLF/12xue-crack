.class public Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static flag:I


# instance fields
.field public activeColor:Ljava/lang/String;

.field public activeTextSize:I

.field public animation:Z

.field public bg:Ljava/lang/String;

.field public bgCorner:I

.field public cancelBg:Ljava/lang/String;

.field public cancelBgActive:Ljava/lang/String;

.field public cancelHeight:I

.field public cancelMarginL:I

.field public cancelText:Ljava/lang/String;

.field public cancelTextColor:Ljava/lang/String;

.field public cancelTextColorActive:Ljava/lang/String;

.field public cancelTextSize:I

.field public cancelWidth:I

.field public col:I

.field public colSpacing:I

.field public currentSelectedIndex:[I

.field public dataArray:Lorg/json/JSONArray;

.field public dataPath:Ljava/lang/String;

.field public fixedOn:Ljava/lang/String;

.field public height:I

.field public isWidth:Z

.field public leftMargin:I

.field public leftWidth:D

.field public lineColor:Ljava/lang/String;

.field public lineHeight:I

.field public mAreaDatasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCitisDatasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mProvinceDatas:[Ljava/lang/String;

.field public maskBg:Ljava/lang/String;

.field public middleWidth:D

.field public normalColor:Ljava/lang/String;

.field public normalTextSize:I

.field public okBg:Ljava/lang/String;

.field public okBgActive:Ljava/lang/String;

.field public okHeight:I

.field public okMarginR:I

.field public okText:Ljava/lang/String;

.field public okTextColor:Ljava/lang/String;

.field public okTextColorActive:Ljava/lang/String;

.field public okTextSize:I

.field public okWidth:I

.field public rightMargin:I

.field public rightWidth:D

.field public row:I

.field public rowSpacing:I

.field public selectedBold:Z

.field public selectedColor:Ljava/lang/String;

.field public selectorDividerColor:Ljava/lang/String;

.field public titleAlignment:Ljava/lang/String;

.field public titleColor:Ljava/lang/String;

.field public titleHeaderBg:Ljava/lang/String;

.field public titleHeight:I

.field public titleSize:I

.field public titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->animation:Z

    const/4 v1, 0x5

    .line 13
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->row:I

    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    const/16 v3, 0x23

    .line 15
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v4

    iput v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->height:I

    const/16 v4, 0x12

    .line 17
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalTextSize:I

    const/16 v4, 0x14

    .line 18
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->activeTextSize:I

    .line 19
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v4

    iput v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rowSpacing:I

    const/16 v4, 0xa

    .line 20
    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->colSpacing:I

    const-string v5, "rgba(0,0,0,0.2)"

    .line 22
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->maskBg:Ljava/lang/String;

    const-string v5, "#fff"

    .line 23
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bg:Ljava/lang/String;

    const-string v6, "#888"

    .line 24
    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalColor:Ljava/lang/String;

    const-string v7, "#f00"

    .line 25
    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->activeColor:Ljava/lang/String;

    .line 26
    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedColor:Ljava/lang/String;

    const/4 v7, 0x0

    .line 29
    iput-boolean v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->isWidth:Z

    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 30
    iput-wide v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftWidth:D

    .line 31
    iput-wide v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->middleWidth:D

    const-wide v10, 0x3fd999999999999aL    # 0.4

    .line 32
    iput-wide v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightWidth:D

    const-string v10, "\u53d6\u6d88"

    .line 35
    iput-object v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelText:Ljava/lang/String;

    const/16 v10, 0xc

    .line 36
    iput v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextSize:I

    const/16 v11, 0x5a

    .line 38
    invoke-static {v11}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v12

    iput v12, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelWidth:I

    .line 39
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v12

    iput v12, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelHeight:I

    .line 41
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBg:Ljava/lang/String;

    const-string v12, "#ccc"

    .line 42
    iput-object v12, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBgActive:Ljava/lang/String;

    .line 44
    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColor:Ljava/lang/String;

    .line 45
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColorActive:Ljava/lang/String;

    .line 46
    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v13

    iput v13, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelMarginL:I

    .line 48
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v13

    iput v13, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    const-string v13, "\u786e\u5b9a"

    .line 51
    iput-object v13, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okText:Ljava/lang/String;

    .line 52
    iput v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextSize:I

    .line 54
    invoke-static {v11}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    iput v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okWidth:I

    .line 55
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okHeight:I

    .line 57
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBg:Ljava/lang/String;

    .line 58
    iput-object v12, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBgActive:Ljava/lang/String;

    .line 60
    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColor:Ljava/lang/String;

    .line 61
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColorActive:Ljava/lang/String;

    .line 62
    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okMarginR:I

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mCitisDatasMap:Ljava/util/Map;

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mAreaDatasMap:Ljava/util/Map;

    const-string v3, "\u8bf7\u9009\u62e9"

    .line 86
    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleText:Ljava/lang/String;

    .line 87
    iput v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleSize:I

    const/16 v3, 0x2c

    .line 88
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeight:I

    const-string v3, "#eee"

    .line 89
    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeaderBg:Ljava/lang/String;

    .line 90
    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleColor:Ljava/lang/String;

    const-string v3, "center"

    .line 92
    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleAlignment:Ljava/lang/String;

    const-string v5, "rgba(0,0,0,0)"

    .line 93
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineColor:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineHeight:I

    .line 96
    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftMargin:I

    .line 97
    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightMargin:I

    new-array v5, v2, [I

    .line 100
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->currentSelectedIndex:[I

    .line 103
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedBold:Z

    const-string v5, "#e2e2e2"

    .line 105
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectorDividerColor:Ljava/lang/String;

    const-string v5, "datas"

    .line 110
    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataArray:Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    .line 112
    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->parseData(Lorg/json/JSONArray;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 114
    iget-object v6, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mProvinceDatas:[Ljava/lang/String;

    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mProvinceDatas:[Ljava/lang/String;

    .line 115
    iget-object v6, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mCitisDatasMap:Ljava/util/Map;

    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mCitisDatasMap:Ljava/util/Map;

    .line 116
    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mAreaDatasMap:Ljava/util/Map;

    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mAreaDatasMap:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const-string v5, "datas"

    .line 119
    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataPath:Ljava/lang/String;

    :cond_1
    :goto_0
    const-string v5, "lineColor"

    const-string v6, "rgba(0,0,0,0)"

    .line 122
    invoke-virtual {p1, v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineColor:Ljava/lang/String;

    const-string v5, "lineHeight"

    .line 123
    invoke-virtual {p1, v5, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->lineHeight:I

    const-string v5, "selectorDividerColor"

    const-string v6, "#e2e2e2"

    .line 125
    invoke-virtual {p1, v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectorDividerColor:Ljava/lang/String;

    const-string v5, "selectedBold"

    .line 127
    invoke-virtual {p1, v5, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedBold:Z

    const-string v0, "actives"

    .line 129
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_1
    if-ge v7, v5, :cond_3

    if-lt v7, v2, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->currentSelectedIndex:[I

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    aput v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const-string v0, "bgCorner"

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    const-string v0, "layout"

    .line 144
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "colorActive"

    const-string v2, "color"

    const-string v5, "bg"

    const-string v6, "size"

    if-eqz v0, :cond_10

    const-string v7, "row"

    .line 146
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "row"

    .line 147
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->row:I

    :cond_4
    const-string v7, "col"

    .line 149
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "col"

    .line 150
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    :cond_5
    const-string v7, "height"

    .line 152
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "height"

    .line 153
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->height:I

    .line 155
    :cond_6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 156
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalTextSize:I

    :cond_7
    const-string v7, "sizeActive"

    .line 158
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "sizeActive"

    .line 159
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->activeTextSize:I

    :cond_8
    const-string v7, "rowSpacing"

    .line 161
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "rowSpacing"

    .line 162
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rowSpacing:I

    :cond_9
    const-string v7, "colSpacing"

    .line 164
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "colSpacing"

    .line 165
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->colSpacing:I

    :cond_a
    const-string v7, "maskBg"

    .line 168
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "maskBg"

    .line 169
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->maskBg:Ljava/lang/String;

    .line 171
    :cond_b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 172
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bg:Ljava/lang/String;

    .line 175
    :cond_c
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 176
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalColor:Ljava/lang/String;

    .line 178
    :cond_d
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 179
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->activeColor:Ljava/lang/String;

    :cond_e
    const-string v7, "colorSelected"

    .line 181
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "colorSelected"

    .line 182
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedColor:Ljava/lang/String;

    :cond_f
    const-string v7, "isWidth"

    .line 191
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->isWidth:Z

    const-string v7, "leftWidth"

    .line 192
    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftWidth:D

    const-string v7, "middleWidth"

    .line 193
    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->middleWidth:D

    const-string v7, "rightWidth"

    .line 194
    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightWidth:D

    const-string v7, "leftMargin"

    .line 196
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    iput v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftMargin:I

    const-string v7, "rightMargin"

    .line 197
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightMargin:I

    :cond_10
    const-string v0, "cancel"

    .line 200
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "bgActive"

    const-string v8, "w"

    const-string v9, "h"

    const-string v10, "text"

    if-eqz v0, :cond_19

    .line 202
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 203
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelText:Ljava/lang/String;

    .line 205
    :cond_11
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 206
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextSize:I

    .line 208
    :cond_12
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 209
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    iput v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelWidth:I

    .line 211
    :cond_13
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 212
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    iput v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelHeight:I

    .line 214
    :cond_14
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 215
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBg:Ljava/lang/String;

    .line 217
    :cond_15
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 218
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelBgActive:Ljava/lang/String;

    .line 221
    :cond_16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 222
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColor:Ljava/lang/String;

    .line 224
    :cond_17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 225
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelTextColorActive:Ljava/lang/String;

    :cond_18
    const-string v11, "leftMargin"

    .line 228
    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->cancelMarginL:I

    :cond_19
    const-string v0, "animation"

    .line 231
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->animation:Z

    const-string v0, "ok"

    .line 233
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 235
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 236
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okText:Ljava/lang/String;

    .line 238
    :cond_1a
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 239
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextSize:I

    .line 241
    :cond_1b
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 242
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okWidth:I

    .line 244
    :cond_1c
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 245
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okHeight:I

    .line 247
    :cond_1d
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 248
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBg:Ljava/lang/String;

    .line 250
    :cond_1e
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 251
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okBgActive:Ljava/lang/String;

    .line 254
    :cond_1f
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 255
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColor:Ljava/lang/String;

    .line 257
    :cond_20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 258
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okTextColorActive:Ljava/lang/String;

    :cond_21
    const-string v1, "rightMargin"

    .line 261
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->okMarginR:I

    :cond_22
    const-string v0, "title"

    .line 264
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 266
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 267
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleText:Ljava/lang/String;

    .line 269
    :cond_23
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 270
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleSize:I

    .line 272
    :cond_24
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 273
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeight:I

    .line 275
    :cond_25
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 276
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleHeaderBg:Ljava/lang/String;

    .line 278
    :cond_26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 279
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleColor:Ljava/lang/String;

    :cond_27
    const-string v1, "alignment"

    .line 282
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->titleAlignment:Ljava/lang/String;

    :cond_28
    const-string v0, "fixedOn"

    .line 285
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "fixedOn"

    .line 286
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->fixedOn:Ljava/lang/String;

    :cond_29
    return-void
.end method

.method public static parseData(Lorg/json/JSONArray;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 299
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;-><init>()V

    .line 301
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mProvinceDatas:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 303
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 305
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    .line 306
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mProvinceDatas:[Ljava/lang/String;

    aput-object v5, v6, v2

    const-string v6, "sub"

    .line 309
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 312
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move v8, v1

    .line 313
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const-string v10, "__tag"

    if-ge v8, v9, :cond_4

    .line 315
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 316
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 317
    aput-object v11, v7, v8

    .line 320
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 323
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    move v13, v1

    .line 324
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 326
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 327
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 328
    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 330
    :cond_1
    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mAreaDatasMap:Ljava/util/Map;

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 331
    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mAreaDatasMap:Ljava/util/Map;

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 333
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->flag:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->flag:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 334
    aput-object v9, v7, v8

    .line 335
    iget-object v10, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mAreaDatasMap:Ljava/util/Map;

    invoke-interface {v10, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 339
    :cond_4
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mCitisDatasMap:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 340
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mCitisDatasMap:Ljava/util/Map;

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 342
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->flag:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->flag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mProvinceDatas:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 344
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mCitisDatasMap:Ljava/util/Map;

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method
