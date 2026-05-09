.class Lcom/apicloud/FNPhotograph/FNPhotograph$17;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fromGalary:Z

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$container:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$fromGalary:Z

    iput-object p4, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 940
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$500(Lcom/apicloud/FNPhotograph/FNPhotograph;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->switchCamera(I)V

    .line 942
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 943
    iget-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$fromGalary:Z

    if-nez p1, :cond_0

    .line 944
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$imagePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 945
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 946
    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 949
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 950
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->updateThumbnail()V

    :cond_0
    return-void
.end method
