.class Lcom/deepe/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yonyou/mipm/sdk/CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/d/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/d/d;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/deepe/d/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/d/d$1;->a:Lcom/deepe/d/d;

    iput-object p2, p0, Lcom/deepe/d/d$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/d/d$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/uzmap/pkg/uzcore/UZAppActivity;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/yonyou/mipm/sdk/MIPM;->setCloseListener(Lcom/yonyou/mipm/sdk/CloseListener;)V

    return-void
.end method
