.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "PhotoBrowser.java"


# static fields
.field public static final EVENT_TYPE_CHANGE:Ljava/lang/String; = "change"

.field public static final EVENT_TYPE_CLICK:Ljava/lang/String; = "click"

.field public static final EVENT_TYPE_LOADFAILED:Ljava/lang/String; = "loadImgFail"

.field public static final EVENT_TYPE_LOADSUCCESSED:Ljava/lang/String; = "loadImgSuccess"

.field public static final EVENT_TYPE_LONG_CLICK:Ljava/lang/String; = "longPress"

.field public static final EVENT_TYPE_SHOW:Ljava/lang/String; = "show"


# instance fields
.field private mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

.field private mBrowserMainLayout:Landroid/view/View;

.field private mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

.field private mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

.field private mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

.field private mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 48
    new-instance p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    return-object p0
.end method

.method public static callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V
    .locals 2

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 153
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ltz p2, :cond_0

    const-string p1, "index"

    .line 155
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 2

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "index"

    .line 166
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 168
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 170
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "path"

    .line 176
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 178
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 313
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :cond_0
    move-object p1, v1

    :goto_2
    if-eqz v1, :cond_1

    .line 318
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object p1
.end method

.method public getExistChild(I)Landroid/view/View;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public jsmethod_appendImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "images"

    .line 261
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 270
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getCurrentItem()I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 277
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public jsmethod_clearCache(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    if-eqz p1, :cond_0

    .line 295
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$3;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    return-void
.end method

.method public jsmethod_deleteImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "index"

    .line 284
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getCurrentItem()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 289
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public jsmethod_getImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "index"

    const/4 v1, -0x1

    .line 184
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getDatas()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public jsmethod_getIndex(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    :cond_0
    return-void
.end method

.method public jsmethod_hide(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->mCachePath:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    const-string v0, "photobrowser_main_layout"

    .line 71
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 77
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->openAnimTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 78
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "browserPager"

    .line 80
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    .line 83
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->placeholdImg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setPlaceHolderBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    .line 87
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->placeholdImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->setPlaceholdImg(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->zoomEnabled:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->setZoomEnable(Z)V

    .line 91
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->activeIndex:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setCurrentItem(I)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "show"

    invoke-static {p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    .line 99
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public jsmethod_setImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "index"

    .line 202
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "image"

    .line 203
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-ltz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mAdapter:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mConfig:Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/Config;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->getExistChild(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "photoView"

    .line 214
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    const-string v2, "loadProgress"

    .line 217
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 220
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-virtual {v2, v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->load(Landroid/view/View;Landroid/widget/ProgressBar;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-nez p1, :cond_1

    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setOnLoadCompleteListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;)V

    :cond_2
    return-void
.end method

.method public jsmethod_setIndex(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const-string v0, "index"

    .line 138
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserPager:Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/HackyViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_show(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->mBrowserMainLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
