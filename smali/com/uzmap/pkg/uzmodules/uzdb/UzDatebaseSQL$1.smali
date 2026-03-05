.class Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;
.super Ljava/lang/Thread;
.source "UzDatebaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->jsmethod_openDatabase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

.field private final synthetic val$dbName:Ljava/lang/String;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$dbName:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->access$0(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v2, v3, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->access$1(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "I/O Error!"

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->access$2(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v3, "file://"

    .line 152
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 153
    :goto_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v4

    .line 154
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$dbName:Ljava/lang/String;

    .line 153
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->openDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->access$3(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    goto :goto_3

    .line 158
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Database Path Can Not Access"

    goto :goto_2

    :cond_4
    const-string v0, "Exception"

    .line 160
    :goto_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->access$2(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
