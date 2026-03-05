.class Lcom/uzmap/pkg/b/a/e$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/a/e$b;->a(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/e$b;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/a/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/e$b$1;->a:Lcom/uzmap/pkg/b/a/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/deepe/a/c/b;->a(Landroid/location/Location;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uzmap/pkg/b/a/e$b$1;->a:Lcom/uzmap/pkg/b/a/e$b;

    invoke-static {p2}, Lcom/uzmap/pkg/b/a/e$b;->b(Lcom/uzmap/pkg/b/a/e$b;)Lcom/uzmap/pkg/b/a/e;

    move-result-object p2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b$1;->a:Lcom/uzmap/pkg/b/a/e$b;

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/e$b;->a(Lcom/uzmap/pkg/b/a/e$b;)Lcom/uzmap/pkg/b/a/e$a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "success"

    invoke-static {p2, v1, p1, v0, v2}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method
