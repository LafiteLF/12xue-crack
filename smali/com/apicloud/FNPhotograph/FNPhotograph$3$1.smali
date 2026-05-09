.class Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph$3;->onImageSaved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

.field final synthetic val$retPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph$3;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->val$retPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "xDebug"

    const-string v1, "save start .... "

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "thumbnailImage"

    .line 278
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v2, v2, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v2, v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->footerView:Landroid/view/View;

    .line 280
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 283
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v2, v2, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->val$retPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v2, v2, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$300(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->val$retPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    sget-object v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->val$retPath:Ljava/lang/String;

    const-string v4, "takePhoto"

    invoke-virtual {v1, v2, v4, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$400(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "save to album"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->val$retPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 302
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;->this$1:Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v1, "save end ... "

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
