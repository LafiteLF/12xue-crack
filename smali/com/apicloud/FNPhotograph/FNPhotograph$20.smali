.class Lcom/apicloud/FNPhotograph/FNPhotograph$20;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->jsmethod_takePhoto(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$album:Z

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-boolean p3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->val$album:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPicTaken(Ljava/lang/String;)V
    .locals 2

    .line 1153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->picTakenCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    .line 1158
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$20;->val$album:Z

    if-nez v0, :cond_1

    return-void

    .line 1162
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$20$1;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph$20;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
