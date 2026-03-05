.class Lcom/uzmap/pkg/uzcore/i/a$6;
.super Lcom/deepe/c/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/a;->a(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/a;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/i/a$a;

.field private final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/a;Ljava/util/List;Lcom/uzmap/pkg/uzcore/i/a$a;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->a:Lcom/uzmap/pkg/uzcore/i/a;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->b:Lcom/uzmap/pkg/uzcore/i/a$a;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->c:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/deepe/c/f/d;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->a:Lcom/uzmap/pkg/uzcore/i/a;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

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
    .locals 1

    invoke-virtual {p2}, Lcom/deepe/c/f/q;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->b:Lcom/uzmap/pkg/uzcore/i/a$a;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->c:Landroid/net/Uri;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->b:Lcom/uzmap/pkg/uzcore/i/a$a;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/a$6;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0, v0}, Lcom/uzmap/pkg/uzcore/i/a$a;->a(Landroid/net/Uri;ZZ)V

    return-void
.end method
