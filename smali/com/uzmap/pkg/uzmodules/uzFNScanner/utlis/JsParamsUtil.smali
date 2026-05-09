.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;
.super Ljava/lang/Object;
.source "JsParamsUtil.java"


# static fields
.field private static instance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;


# instance fields
.field private mHintTextColor:Ljava/lang/String;

.field private mHintTextSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 162
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextSize:I

    const-string v0, "#FFFFFF"

    .line 171
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextColor:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;
    .locals 1

    .line 32
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->instance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->instance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 35
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->instance:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    return-object v0
.end method

.method private getScreenHeight(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I
    .locals 1

    .line 130
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 135
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 136
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p1

    return p1
.end method

.method private getScreenWidth(Landroid/app/Activity;)I
    .locals 1

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public decodePath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "path"

    .line 107
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeContent(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "content"

    .line 111
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 150
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p1, :cond_0

    .line 154
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0
.end method

.method public getHintTextColor()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTextSize()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextSize:I

    return v0
.end method

.method public h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I
    .locals 1

    .line 64
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getScreenHeight(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result p2

    const-string p3, "rect"

    .line 65
    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "h"

    .line 67
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public isBar(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2

    const-string v0, "qr_image"

    const-string v1, "type"

    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public saveImgH(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "saveImg"

    .line 99
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xc8

    if-nez p1, :cond_0

    const-string p1, "h"

    .line 101
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public saveImgPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "saveImg"

    .line 81
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "path"

    .line 83
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public saveImgW(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "saveImg"

    .line 90
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xc8

    if-nez p1, :cond_0

    const-string p1, "w"

    .line 92
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public saveToAlbum(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2

    const-string v0, "saveToAlbum"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHintTextColor(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextColor:Ljava/lang/String;

    return-void
.end method

.method public setHintTextSise(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->mHintTextSize:I

    return-void
.end method

.method public sound(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "sound"

    .line 73
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I
    .locals 2

    .line 55
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result p2

    const-string v0, "rect"

    .line 56
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "w"

    .line 58
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public x(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "rect"

    .line 39
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "x"

    .line 41
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public y(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "rect"

    .line 47
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "y"

    .line 49
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
