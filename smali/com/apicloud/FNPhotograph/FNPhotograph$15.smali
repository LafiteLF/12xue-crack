.class Lcom/apicloud/FNPhotograph/FNPhotograph$15;
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

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Ljava/lang/String;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 901
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$500(Lcom/apicloud/FNPhotograph/FNPhotograph;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->switchCamera(I)V

    .line 904
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->val$imagePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 905
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->val$imagePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 908
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->val$imagePath:Ljava/lang/String;

    const-string v2, "takePhoto"

    invoke-virtual {p1, v0, v2, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$15;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$300(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    return-void
.end method
