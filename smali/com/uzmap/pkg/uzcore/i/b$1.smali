.class Lcom/uzmap/pkg/uzcore/i/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/b;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/b;

.field private final synthetic b:Landroid/webkit/PermissionRequest;

.field private final synthetic c:[Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->a:Lcom/uzmap/pkg/uzcore/i/b;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->b:Landroid/webkit/PermissionRequest;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->b:Landroid/webkit/PermissionRequest;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->c:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->a:Lcom/uzmap/pkg/uzcore/i/b;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/i/b;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->d:Ljava/lang/String;

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->a:Lcom/uzmap/pkg/uzcore/i/b;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/i/b;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b$1;->d:Ljava/lang/String;

    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
