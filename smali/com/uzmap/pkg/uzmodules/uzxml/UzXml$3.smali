.class Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;
.super Ljava/lang/Thread;
.source "UzXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->jsmethod_saveFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 522
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "base64Str"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "filePath"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    invoke-static {v4, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$100(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->base64ToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 528
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$300(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 530
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
