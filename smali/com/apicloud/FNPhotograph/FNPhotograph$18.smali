.class Lcom/apicloud/FNPhotograph/FNPhotograph$18;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/content/Intent;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$18;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$18;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$18;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    .line 966
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$18;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 965
    invoke-static {v1, v2}, Lcom/apicloud/FNPhotograph/UriUtils;->getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->openImagePreView(Ljava/lang/String;)V

    return-void
.end method
