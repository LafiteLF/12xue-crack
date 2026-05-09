.class Lcom/apicloud/qiniustorage/UzQiniuStorage$3;
.super Ljava/lang/Object;
.source "UzQiniuStorage.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/qiniustorage/UzQiniuStorage;->jsmethod_start(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;


# direct methods
.method constructor <init>(Lcom/apicloud/qiniustorage/UzQiniuStorage;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$3;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$3;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    const-string p1, "key"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "complete"

    const-wide/16 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/apicloud/qiniustorage/UzQiniuStorage;->access$000(Lcom/apicloud/qiniustorage/UzQiniuStorage;Ljava/lang/String;Ljava/lang/String;DLcom/qiniu/android/http/ResponseInfo;)V

    return-void
.end method
