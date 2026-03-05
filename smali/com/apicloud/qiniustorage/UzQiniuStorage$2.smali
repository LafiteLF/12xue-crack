.class Lcom/apicloud/qiniustorage/UzQiniuStorage$2;
.super Ljava/lang/Object;
.source "UzQiniuStorage.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


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

    .line 55
    iput-object p1, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$2;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/apicloud/qiniustorage/UzQiniuStorage$2;->this$0:Lcom/apicloud/qiniustorage/UzQiniuStorage;

    invoke-static {v0}, Lcom/apicloud/qiniustorage/UzQiniuStorage;->access$100(Lcom/apicloud/qiniustorage/UzQiniuStorage;)Z

    move-result v0

    return v0
.end method
