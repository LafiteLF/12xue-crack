.class Lcom/apicloud/FNPhotograph/FNPhotograph$9;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->initHeaderLayout(Landroid/view/ViewGroup;)V
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

    .line 605
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$9;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 609
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$9;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->clean()V

    .line 610
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$9;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "close"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
