.class Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;
.super Ljava/lang/Thread;
.source "UzXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->jsmethod_saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
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

    .line 79
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "album"

    .line 82
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "base64Str"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "^data:image/.*?;base64,"

    const-string v3, ""

    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "imgName"

    const-string v4, "apicloud.png"

    invoke-virtual {v2, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, "imgPath"

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 91
    :try_start_0
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v6, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    invoke-static {v5, v1, v4, v2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$000(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    invoke-static {v6, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$100(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v1, v2, v4, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$200(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$300(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    invoke-static {v6, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$100(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$200(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 105
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->access$300(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
