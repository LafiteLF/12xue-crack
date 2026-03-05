.class Lcom/uzmap/pkg/b/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/i$1;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/uzmap/pkg/b/a/i$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/i$1;->a:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/uzmap/pkg/b/a/i$1;->b:Z

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/app/Activity;Z)V

    return-void
.end method
