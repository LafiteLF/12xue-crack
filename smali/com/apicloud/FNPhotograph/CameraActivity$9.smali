.class Lcom/apicloud/FNPhotograph/CameraActivity$9;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->initHeaderLayout(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$9;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 385
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$9;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraActivity;->finish()V

    .line 386
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$9;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "close"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/apicloud/FNPhotograph/CameraActivity;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
