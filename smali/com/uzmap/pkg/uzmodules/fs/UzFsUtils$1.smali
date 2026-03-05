.class Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;
.super Ljava/lang/Thread;
.source "UzFsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->jsmethod_moveTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "oldPath"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "newPath"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "\u79fb\u52a8\u6587\u4ef6\u6210\u529f"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-virtual {v3, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 228
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "\u79fb\u52a8\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {v0, v1, v6, v5, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void
.end method
