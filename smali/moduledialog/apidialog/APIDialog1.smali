.class public Lmoduledialog/apidialog/APIDialog1;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "APIDialog1.java"


# static fields
.field private static dialog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoduledialog/bean/ViewParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 29
    sput-object p0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public jsmethod_dismissDialog(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 135
    sget-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmoduledialog/bean/ViewParams;

    .line 137
    invoke-virtual {v2}, Lmoduledialog/bean/ViewParams;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmoduledialog/apidialog/APIDialog1;->removeViewFromCurWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    sput-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    .line 140
    invoke-static {p1, v1}, Lmoduledialog/utils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "\u6ca1\u6709\u663e\u793aDialog\uff0c\u663e\u793a\u540e\u624d\u80fd\u5173\u95ed"

    .line 142
    invoke-static {v0, p1, v1}, Lmoduledialog/utils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :goto_1
    return-void
.end method

.method public jsmethod_showDialog(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 13

    .line 46
    sget-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "\u4e0d\u80fd\u91cd\u590d\u6253\u5f00\u5f39\u6846\uff01"

    .line 47
    invoke-static {v0, p1, v1}, Lmoduledialog/utils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void

    :cond_0
    const-string v0, "data"

    .line 52
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 54
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    .line 57
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "viewType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "clickID"

    const-string v9, "textSize"

    const-string v10, "showText"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 77
    :pswitch_0
    new-instance v5, Lmoduledialog/bean/IconViewData;

    invoke-direct {v5}, Lmoduledialog/bean/IconViewData;-><init>()V

    .line 78
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "img"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/IconViewData;->setImg_base64(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "img_down"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/IconViewData;->setImg_base64_down(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/IconViewData;->setClickID(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :pswitch_1
    new-instance v5, Lmoduledialog/bean/BtnViewData;

    invoke-direct {v5}, Lmoduledialog/bean/BtnViewData;-><init>()V

    .line 64
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/BtnViewData;->setClickID(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/BtnViewData;->setShowText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/BtnViewData;->setTextSize(I)V

    goto :goto_1

    .line 70
    :pswitch_2
    new-instance v5, Lmoduledialog/bean/TextMsgViewData;

    invoke-direct {v5}, Lmoduledialog/bean/TextMsgViewData;-><init>()V

    .line 71
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "lineSpacting"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v6, v11

    invoke-virtual {v5, v6}, Lmoduledialog/bean/TextMsgViewData;->setLineSpacting(F)V

    .line 72
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/TextMsgViewData;->setText(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/TextMsgViewData;->setTextSize(I)V

    goto :goto_1

    .line 59
    :pswitch_3
    new-instance v5, Lmoduledialog/bean/BacWhitViewData;

    invoke-direct {v5}, Lmoduledialog/bean/BacWhitViewData;-><init>()V

    .line 84
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/ViewData;->setViewType(I)V

    .line 85
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "h"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/ViewData;->setH(I)V

    .line 86
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "w"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/ViewData;->setW(I)V

    .line 87
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/ViewData;->setX(I)V

    .line 88
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lmoduledialog/bean/ViewData;->setY(I)V

    .line 89
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 93
    :cond_1
    new-instance v0, Lmoduledialog/viewfactory/DialogCreater;

    invoke-direct {v0, p1}, Lmoduledialog/viewfactory/DialogCreater;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, v2}, Lmoduledialog/viewfactory/DialogCreater;->createView(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    if-eqz v0, :cond_3

    new-array v1, v1, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmoduledialog/bean/ViewParams;

    invoke-virtual {v0}, Lmoduledialog/bean/ViewParams;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmoduledialog/apidialog/APIDialog1$1;

    invoke-direct {v2, p0, v1, p1}, Lmoduledialog/apidialog/APIDialog1$1;-><init>(Lmoduledialog/apidialog/APIDialog1;[JLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    sget-object v0, Lmoduledialog/apidialog/APIDialog1;->dialog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmoduledialog/bean/ViewParams;

    .line 121
    invoke-virtual {v1}, Lmoduledialog/bean/ViewParams;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lmoduledialog/bean/ViewParams;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmoduledialog/apidialog/APIDialog1;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_2

    .line 123
    :cond_2
    invoke-static {p1, v3}, Lmoduledialog/utils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_3

    :cond_3
    const-string v0, "Dialog\u751f\u6210\u5931\u8d25"

    .line 125
    invoke-static {v0, p1, v1}, Lmoduledialog/utils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
