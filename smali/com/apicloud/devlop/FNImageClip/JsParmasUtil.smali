.class public Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;
.super Ljava/lang/Object;
.source "JsParmasUtil.java"


# static fields
.field private static instance:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;
    .locals 1

    .line 23
    sget-object v0, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->instance:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-direct {v0}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;-><init>()V

    sput-object v0, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->instance:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    .line 26
    :cond_0
    sget-object v0, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->instance:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    return-object v0
.end method

.method private getScreenHeight(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I
    .locals 2

    .line 244
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 248
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 249
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->inImmerseState()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 250
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p1

    return p1

    .line 252
    :cond_0
    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p2

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private getScreenWidth(Landroid/app/Activity;)I
    .locals 1

    .line 238
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 240
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "bg"

    .line 143
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bgColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "bg"

    const-string v1, "#000000"

    .line 138
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public borderColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 3

    const-string v0, "#00000000"

    .line 84
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "style"

    .line 85
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "clip"

    .line 87
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "borderColor"

    .line 89
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public borderWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "style"

    .line 99
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "clip"

    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "borderWidth"

    .line 103
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public clipRect(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/apicloud/devlop/FNImageClip/ClipRect;)Lcom/apicloud/devlop/FNImageClip/ClipRect;
    .locals 6

    .line 179
    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v1

    .line 181
    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result p2

    const-string v3, "style"

    .line 184
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "clip"

    .line 186
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    .line 190
    new-instance p1, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-direct {p1, v0, v2, v1, p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    goto :goto_1

    :cond_0
    const-string p2, "x"

    .line 192
    invoke-virtual {v3, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 193
    invoke-static {p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p2

    const-string v0, "y"

    .line 194
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 195
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    .line 198
    invoke-virtual {p0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->isCircle(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    const-string v2, "w"

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    .line 200
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    add-int/2addr p1, p2

    const-string v4, "h"

    .line 203
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 209
    :goto_0
    new-instance v2, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-direct {v2, p2, v0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    move-object p1, v2

    goto :goto_1

    .line 212
    :cond_3
    new-instance p1, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-direct {p1, v0, v2, v1, p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    :goto_1
    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
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

    .line 225
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p1, :cond_0

    .line 229
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 124
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I
    .locals 1

    const-string v0, "rect"

    .line 55
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 56
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getScreenHeight(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result p2

    if-eqz p1, :cond_0

    const-string p3, "h"

    .line 57
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public imageBg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "style"

    .line 76
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "#000"

    if-eqz p1, :cond_0

    const-string v1, "bg"

    .line 78
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public img(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "srcPath"

    .line 115
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public isCircle(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 3

    const-string v0, "style"

    .line 164
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "clip"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "rectangle"

    const-string v2, "appearance"

    .line 168
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 1

    const-string v0, "bg"

    .line 129
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "://"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSaveToAlbum(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2

    const-string v0, "copyToAlbum"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public layerColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 3

    const-string v0, "#888"

    .line 64
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "style"

    .line 65
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "mask"

    .line 67
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public mode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "mode"

    const-string v1, "all"

    .line 149
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scalable(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2

    const-string v0, "style"

    .line 153
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "clip"

    .line 155
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "scalable"

    .line 157
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I
    .locals 2

    const-string v0, "rect"

    .line 46
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 47
    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result p2

    if-eqz p1, :cond_0

    const-string v0, "w"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public x(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "rect"

    .line 30
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "x"

    .line 32
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public y(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I
    .locals 2

    const-string v0, "rect"

    .line 38
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "y"

    .line 40
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
