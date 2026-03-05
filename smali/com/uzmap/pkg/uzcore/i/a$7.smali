.class Lcom/uzmap/pkg/uzcore/i/a$7;
.super Lcom/deepe/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/a;->b(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/a;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/i/a$a;

.field private final synthetic d:Landroid/net/Uri;

.field private final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/content/Context;ZLcom/uzmap/pkg/uzcore/i/a$a;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->a:Lcom/uzmap/pkg/uzcore/i/a;

    iput-boolean p3, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->b:Z

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->c:Lcom/uzmap/pkg/uzcore/i/a$a;

    iput-object p5, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->d:Landroid/net/Uri;

    iput-object p6, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->e:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/deepe/a/g/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->a:Lcom/uzmap/pkg/uzcore/i/a;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/a;->a()V

    const/4 p1, 0x1

    if-ne p1, p2, :cond_1

    iget-boolean p2, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->b:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->c:Lcom/uzmap/pkg/uzcore/i/a$a;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->d:Landroid/net/Uri;

    invoke-interface {p2, v0, p1, p1}, Lcom/uzmap/pkg/uzcore/i/a$a;->a(Landroid/net/Uri;ZZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->a:Lcom/uzmap/pkg/uzcore/i/a;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->e:[Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->c:Lcom/uzmap/pkg/uzcore/i/a$a;

    invoke-virtual {p1, p2, v0, v1}, Lcom/uzmap/pkg/uzcore/i/a;->a(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->c:Lcom/uzmap/pkg/uzcore/i/a$a;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/a$7;->d:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/uzmap/pkg/uzcore/i/a$a;->a(Landroid/net/Uri;ZZ)V

    :goto_0
    return-void
.end method
