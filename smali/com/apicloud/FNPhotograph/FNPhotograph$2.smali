.class Lcom/apicloud/FNPhotograph/FNPhotograph$2;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$2;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openFailed()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$2;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$002(Lcom/apicloud/FNPhotograph/FNPhotograph;Z)Z

    .line 229
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$2;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    sget-object v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "cameraError"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 230
    sput-boolean v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    return-void
.end method
