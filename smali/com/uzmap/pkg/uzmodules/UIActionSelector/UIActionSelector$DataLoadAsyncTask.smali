.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "UIActionSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, [Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->doInBackground([Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Void;
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-direct {v1, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedBold:Z

    sput-boolean v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->selectedBold:Z

    .line 146
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectorDividerColor:Ljava/lang/String;

    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->selectorDividerColor:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v3

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    aget-object p1, p1, v2

    const-string v2, "\u6307\u5b9a\u6587\u4ef6\u4e0d\u5b58\u5728 \u6216\u8005 \u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {v0, p1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-object v1

    .line 159
    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->parseData(Lorg/json/JSONArray;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;

    move-result-object v0

    .line 170
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v2, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 173
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mProvinceDatas:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$302(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;[Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mCitisDatasMap:Ljava/util/Map;

    invoke-static {p1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$402(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;

    .line 175
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/DataWrapper;->mAreaDatasMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$502(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mProvinceDatas:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$302(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;[Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mCitisDatasMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$402(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;

    .line 188
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->mAreaDatasMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$502(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/util/Map;)Ljava/util/Map;

    .line 191
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataArray:Lorg/json/JSONArray;

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->dataArray:Lorg/json/JSONArray;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    :cond_3
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10

    .line 202
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 206
    :cond_0
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 207
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$702(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I

    .line 209
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v1

    const/16 v2, 0xf4

    sub-int/2addr v1, v2

    const-string v3, "y"

    invoke-virtual {v0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$802(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I

    .line 210
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I

    .line 212
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 214
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Landroid/view/View;)Landroid/view/View;

    :cond_1
    const-string p1, "mo_ui_action_selector_citys"

    .line 217
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    .line 218
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Landroid/view/View;)Landroid/view/View;

    .line 220
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "selectorContainer"

    .line 228
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    .line 231
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "wheel_layout"

    .line 233
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 235
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    :cond_2
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 238
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bg:Ljava/lang/String;

    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v5, 0x8

    new-array v5, v5, [F

    .line 239
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    .line 240
    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v6

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v6, v6

    aput v6, v5, v4

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    .line 241
    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v6

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v6, v6

    aput v6, v5, v3

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    .line 242
    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v6

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v6, v6

    aput v6, v5, v2

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    .line 243
    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v6

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->bgCorner:I

    int-to-float v6, v6

    aput v6, v5, v1

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v7, v5, v6

    const/4 v6, 0x7

    aput v7, v5, v6

    .line 239
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 245
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$2;

    invoke-direct {v5, p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->maskBg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 260
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->maskBg:Ljava/lang/String;

    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 265
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    .line 266
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const-string v5, "mo_ui_action_selector_main"

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1402(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I

    .line 267
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const-string v5, "textView"

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1502(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;I)I

    .line 269
    new-instance p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v5, v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 270
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemResource(I)V

    .line 271
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/ArrayWheelAdapter;->setItemTextResource(I)V

    .line 273
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setViewAdapter(Lcom/uzmap/pkg/uzmodules/UIActionSelector/adapter/WheelViewAdapter;)V

    .line 274
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1800(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    .line 275
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object p1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->row:I

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibleItems(I)V

    .line 276
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object p1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->row:I

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibleItems(I)V

    .line 277
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object p1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setOnTapUpListener(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$onTapUpListener;)V

    .line 278
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object p1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->row:I

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setVisibleItems(I)V

    .line 279
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->col:I

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->showLevel(I)V

    .line 283
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->colSpacing:I

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 285
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->colSpacing:I

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 286
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalColor:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->color:I

    .line 289
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->selectedColor:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->colorActive:I

    .line 291
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->normalTextSize:I

    sput p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->size:I

    .line 292
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->activeTextSize:I

    sput p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->sizeActive:I

    .line 293
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object p1

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->height:I

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rowSpacing:I

    add-int/2addr p1, v5

    sput p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->itemHeight:I

    .line 295
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    .line 296
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V

    .line 300
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    const-string v5, "anim"

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    const-string v5, "animation"

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 305
    :goto_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v7

    const-string v8, "fixedOn"

    invoke-virtual {v7, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 308
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9, v5, v7}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    .line 310
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    new-array v1, v1, [Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v5, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2302(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    .line 311
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v5

    aput-object v5, v1, v4

    .line 312
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v5

    aput-object v5, v1, v3

    .line 313
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)[Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v5

    aput-object v5, v1, v2

    .line 315
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->currentSelectedIndex:[I

    aget v5, v5, v4

    invoke-virtual {v1, v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 316
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v5

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->currentSelectedIndex:[I

    aget v3, v5, v3

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 317
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v1

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v3

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->currentSelectedIndex:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    .line 319
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->isWidth:Z

    if-eqz v1, :cond_5

    .line 320
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v1

    iget-wide v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->leftWidth:D

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v1

    iget-wide v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->middleWidth:D

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;

    move-result-object v1

    iget-wide v1, v1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Config;->rightWidth:D

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2600(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    :goto_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->marginSetting()V

    if-eqz p1, :cond_6

    .line 330
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1, v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2702(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z

    .line 331
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->showView()V

    :cond_6
    :goto_4
    return-void
.end method
