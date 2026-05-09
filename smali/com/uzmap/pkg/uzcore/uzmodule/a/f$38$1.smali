.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;
.super Lcom/deepe/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0, p2}, Lcom/deepe/a/g/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    add-int/2addr p2, p1

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "buttonIndex"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;)Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/deepe/a/g/a/a;)V

    return-void
.end method
