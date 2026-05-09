.class public Lcom/apicloud/qiniustorage/UzQiniuStorage;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzQiniuStorage.java"


# instance fields
.field private mErr:Lorg/json/JSONObject;

.field private mIsCancel:Z

.field private mListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mResult:Lorg/json/JSONObject;

.field private mUploadManager:Lcom/qiniu/android/storage/UploadManager;

.field private mUploadOptions:Lcom/qiniu/android/storage/UploadOptions;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/qiniustorage/UzQiniuStorage;Ljava/lang/String;Ljava/lang/String;DLcom/qiniu/android/http/ResponseInfo;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/apicloud/qiniustorage/UzQiniuStorage;->callBack(Ljava/lang/String;Ljava/lang/String;DLcom/qiniu/android/http/ResponseInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/apicloud/qiniustorage/UzQiniuStorage;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mIsCancel:Z

    return p0
.end method

.method private callBack(Ljava/lang/String;Ljava/lang/String;DLcom/qiniu/android/http/ResponseInfo;)V
    .locals 3

    const-string v0, "info"

    .line 119
    iget-object v1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-nez v1, :cond_0

    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string v2, "eventType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    iget-object v1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "complete"

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "percent"

    if-eqz p1, :cond_2

    .line 125
    :try_start_1
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "statusCode"

    iget p3, p5, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "reqId"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "xlog"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->xlog:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "xvia"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "host"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->host:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "ip"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "duration"

    iget-wide p3, p5, Lcom/qiniu/android/http/ResponseInfo;->duration:J

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "id"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "timeStamp"

    iget-wide p3, p5, Lcom/qiniu/android/http/ResponseInfo;->timeStamp:J

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "canceled"

    invoke-virtual {p5}, Lcom/qiniu/android/http/ResponseInfo;->isCancelled()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "ok"

    invoke-virtual {p5}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "broken"

    invoke-virtual {p5}, Lcom/qiniu/android/http/ResponseInfo;->isNetworkBroken()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 140
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "notQiniu"

    invoke-virtual {p5}, Lcom/qiniu/android/http/ResponseInfo;->isNotQiniu()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const-string p2, "error"

    iget-object p3, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mErr:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mErr:Lorg/json/JSONObject;

    const-string p2, "code"

    iget p3, p5, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mErr:Lorg/json/JSONObject;

    const-string p2, "domain"

    iget-object p3, p5, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object p2, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mResult:Lorg/json/JSONObject;

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mErr:Lorg/json/JSONObject;

    .line 114
    iput-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public jsmethod_cancel(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mIsCancel:Z

    return-void
.end method

.method public jsmethod_configUploader(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "params"

    .line 38
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "mimeType"

    .line 46
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "checkCrc"

    .line 47
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 48
    new-instance v6, Lcom/qiniu/android/storage/UploadOptions;

    new-instance v4, Lcom/apicloud/qiniustorage/UzQiniuStorage$1;

    invoke-direct {v4, p0}, Lcom/apicloud/qiniustorage/UzQiniuStorage$1;-><init>(Lcom/apicloud/qiniustorage/UzQiniuStorage;)V

    new-instance v5, Lcom/apicloud/qiniustorage/UzQiniuStorage$2;

    invoke-direct {v5, p0}, Lcom/apicloud/qiniustorage/UzQiniuStorage$2;-><init>(Lcom/apicloud/qiniustorage/UzQiniuStorage;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    iput-object v6, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mUploadOptions:Lcom/qiniu/android/storage/UploadOptions;

    const-string v0, "zone"

    const-string v1, "z0"

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "z1"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object p1, Lcom/qiniu/android/common/FixedZone;->zone1:Lcom/qiniu/android/common/Zone;

    goto :goto_1

    :cond_1
    const-string v0, "z2"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object p1, Lcom/qiniu/android/common/FixedZone;->zone2:Lcom/qiniu/android/common/Zone;

    goto :goto_1

    :cond_2
    const-string v0, "na0"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    sget-object p1, Lcom/qiniu/android/common/FixedZone;->zoneNa0:Lcom/qiniu/android/common/Zone;

    goto :goto_1

    :cond_3
    const-string v0, "as0"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    sget-object p1, Lcom/qiniu/android/common/FixedZone;->zoneAs0:Lcom/qiniu/android/common/Zone;

    goto :goto_1

    .line 83
    :cond_4
    sget-object p1, Lcom/qiniu/android/common/FixedZone;->zone0:Lcom/qiniu/android/common/Zone;

    .line 85
    :goto_1
    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/qiniu/android/storage/Configuration$Builder;->zone(Lcom/qiniu/android/common/Zone;)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    .line 86
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    iput-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mUploadManager:Lcom/qiniu/android/storage/UploadManager;

    return-void
.end method

.method public jsmethod_start(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    .line 90
    iget-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mUploadManager:Lcom/qiniu/android/storage/UploadManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mIsCancel:Z

    const-string v0, "path"

    .line 92
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "key"

    .line 93
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v3, v0

    const-string v0, "token"

    .line 97
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    iget-object v1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mUploadManager:Lcom/qiniu/android/storage/UploadManager;

    new-instance v5, Lcom/apicloud/qiniustorage/UzQiniuStorage$3;

    invoke-direct {v5, p0}, Lcom/apicloud/qiniustorage/UzQiniuStorage$3;-><init>(Lcom/apicloud/qiniustorage/UzQiniuStorage;)V

    iget-object v6, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage;->mUploadOptions:Lcom/qiniu/android/storage/UploadOptions;

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    :cond_1
    return-void
.end method
