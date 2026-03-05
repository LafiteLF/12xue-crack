.class final Lcom/uzmap/pkg/b/a/e$d;
.super Lcom/deepe/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/e;

.field private b:Lcom/uzmap/pkg/b/a/e$a;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/e;Landroid/content/Context;Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/e$d;->a:Lcom/uzmap/pkg/b/a/e;

    invoke-direct {p0, p2, p3}, Lcom/deepe/a/c/c;-><init>(Landroid/content/Context;Lcom/deepe/a/c/d;)V

    iput-object p4, p0, Lcom/uzmap/pkg/b/a/e$d;->b:Lcom/uzmap/pkg/b/a/e$a;

    return-void
.end method


# virtual methods
.method public a(ZLandroid/location/Location;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$d;->a:Lcom/uzmap/pkg/b/a/e;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e$d;->b:Lcom/uzmap/pkg/b/a/e$a;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method
