.class Lcom/apicloud/qiniustorage/UzQiniuStorage$1;
.super Ljava/lang/Object;
.source "UzQiniuStorage.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/qiniustorage/UzQiniuStorage;->jsmethod_configUploader(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
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

    .line 49
    iput-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$1;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(Ljava/lang/String;D)V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$1;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    const-string v1, "uploading"

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/apicloud/qiniustorage/UzQiniuStorage;->access$000(Lcom/apicloud/qiniustorage/UzQiniuStorage;Ljava/lang/String;Ljava/lang/String;DLcom/qiniu/android/http/ResponseInfo;)V

    return-void
.end method
