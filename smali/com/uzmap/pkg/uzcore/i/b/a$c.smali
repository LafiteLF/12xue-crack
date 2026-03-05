.class Lcom/uzmap/pkg/uzcore/i/b/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/i/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/uzmap/pkg/uzcore/i/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/i/b/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$c;->b:Lcom/uzmap/pkg/uzcore/i/b/a$a;

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/a$c;->b:Lcom/uzmap/pkg/uzcore/i/b/a$a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/uzmap/pkg/uzcore/i/b/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lcom/uzmap/pkg/uzcore/i/b/a$c;->a:Landroid/content/Context;

    invoke-static {p5}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p5

    if-nez p5, :cond_1

    return-void

    :cond_1
    invoke-static {p5, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
