.class Lcom/apicloud/FNPhotograph/FNPhotograph$21;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/OnCustomClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 3

    .line 1435
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "click"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->eventCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;II)V

    return-void
.end method

.method public onDoubleClick(II)V
    .locals 3

    .line 1440
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$21;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "doubleClick"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->eventCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;II)V

    return-void
.end method
