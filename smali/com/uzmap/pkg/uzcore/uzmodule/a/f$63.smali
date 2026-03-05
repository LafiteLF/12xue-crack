.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;
.super Lcom/deepe/c/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->bx(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Ljava/util/List;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0, p2}, Lcom/deepe/c/f/d;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->c(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public needPermissionSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPermission(ILcom/deepe/c/f/q;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/deepe/c/f/q;->a()Z

    move-result p1

    const-string v1, "never"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;->getRequestConstants()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/deepe/c/f/q;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "list"

    invoke-virtual {v0, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$63;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
