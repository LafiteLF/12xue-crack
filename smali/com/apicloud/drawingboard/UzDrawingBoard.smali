.class public Lcom/apicloud/drawingboard/UzDrawingBoard;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzDrawingBoard.java"


# instance fields
.field private mCameraPath:Ljava/lang/String;

.field private mDrawView:Lcom/apicloud/drawingboard/DrawView;

.field private mSavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 168
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 175
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 176
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 179
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 182
    :cond_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 183
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getLayoutParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    const-string v0, "rect"

    .line 118
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p0, v0}, Lcom/apicloud/drawingboard/UzDrawingBoard;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p0, v1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    if-eqz p1, :cond_0

    const-string v2, "x"

    .line 123
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    .line 124
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "w"

    .line 125
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "h"

    .line 126
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 127
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 128
    invoke-virtual {v1, v2, v3, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method private saveCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "absolutePath"

    .line 106
    iget-object v2, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mCameraPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "albumPath"

    .line 109
    iget-object v2, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mCameraPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveToToAlbum()V
    .locals 5

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mCameraPath:Ljava/lang/String;

    .line 154
    invoke-static {v0, v3}, Lcom/apicloud/drawingboard/UzDrawingBoard;->copyfile(Ljava/io/File;Ljava/io/File;)V

    .line 155
    invoke-direct {p0, v3}, Lcom/apicloud/drawingboard/UzDrawingBoard;->sendBradcase(Ljava/io/File;)V

    return-void
.end method

.method private sendBradcase(Ljava/io/File;)V
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->sendBroadcastUpKitkat(Ljava/io/File;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/apicloud/drawingboard/UzDrawingBoard;->sendBroadcastDownKitkat()V

    :goto_0
    return-void
.end method

.method private sendBroadcastDownKitkat()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastUpKitkat(Ljava/io/File;)V
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getScreenHeight(Landroid/app/Activity;)I
    .locals 1

    .line 142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 144
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 1

    .line 136
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

.method public jsmethod_clear(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/apicloud/drawingboard/DrawView;->clear()V

    :cond_0
    return-void
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->removeViewFromCurWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public jsmethod_hide(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 74
    invoke-virtual {p1, v0}, Lcom/apicloud/drawingboard/DrawView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/apicloud/drawingboard/UzDrawingBoard;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/apicloud/drawingboard/DrawView;

    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v0, v1}, Lcom/apicloud/drawingboard/DrawView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    .line 37
    invoke-direct {p0, p1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->getLayoutParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/apicloud/drawingboard/DrawView;->initStyles(Lcom/apicloud/drawingboard/UzDrawingBoard;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    const-string v1, "fixedOn"

    .line 40
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/apicloud/drawingboard/UzDrawingBoard;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    return-void
.end method

.method public jsmethod_resetBrush(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/apicloud/drawingboard/DrawView;->resetBrush(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :cond_0
    return-void
.end method

.method public jsmethod_restore(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/apicloud/drawingboard/DrawView;->restore()V

    :cond_0
    return-void
.end method

.method public jsmethod_revoke(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/apicloud/drawingboard/DrawView;->revoke()V

    :cond_0
    return-void
.end method

.method public jsmethod_save(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "overlay"

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    invoke-virtual {v1}, Lcom/apicloud/drawingboard/DrawView;->buildDrawingCache()V

    .line 50
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    invoke-virtual {v1}, Lcom/apicloud/drawingboard/DrawView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    invoke-virtual {v1}, Lcom/apicloud/drawingboard/DrawView;->save()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    const-string v2, "savePath"

    .line 54
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/apicloud/drawingboard/UzDrawingBoard;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    const-string v2, "copyToAlbum"

    .line 56
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {p0, v1, v0, v3}, Lcom/apicloud/drawingboard/UzDrawingBoard;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/apicloud/drawingboard/UzDrawingBoard;->saveToToAlbum()V

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/drawingboard/UzDrawingBoard;->saveCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :cond_2
    return-void
.end method

.method public jsmethod_show(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/apicloud/drawingboard/UzDrawingBoard;->mDrawView:Lcom/apicloud/drawingboard/DrawView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Lcom/apicloud/drawingboard/DrawView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
