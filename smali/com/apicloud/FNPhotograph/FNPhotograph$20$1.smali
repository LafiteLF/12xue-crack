.class Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph$20;->onPicTaken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$20;

.field final synthetic val$savedPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph$20;Ljava/lang/String;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$20;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->val$savedPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->val$savedPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1174
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->val$savedPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1175
    new-instance v2, Ljava/io/File;

    .line 1176
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$20;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->val$savedPath:Ljava/lang/String;

    .line 1179
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1178
    invoke-virtual {v0, v1, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->copyImageToFs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1184
    new-instance v0, Ljava/io/File;

    .line 1185
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== notifyPath exists === : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debug"

    .line 1187
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1196
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$20;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
