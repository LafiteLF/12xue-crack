.class Lcom/uzmap/pkg/b/a/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;IIILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/app/Activity;IIILjava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/i$3;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/uzmap/pkg/b/a/i$3;->b:I

    iput p3, p0, Lcom/uzmap/pkg/b/a/i$3;->c:I

    iput p4, p0, Lcom/uzmap/pkg/b/a/i$3;->d:I

    iput-object p5, p0, Lcom/uzmap/pkg/b/a/i$3;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/i$3;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/uzmap/pkg/b/a/i$3;->b:I

    iget v2, p0, Lcom/uzmap/pkg/b/a/i$3;->c:I

    iget v3, p0, Lcom/uzmap/pkg/b/a/i$3;->d:I

    iget-object v4, p0, Lcom/uzmap/pkg/b/a/i$3;->e:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/app/Activity;IIILjava/lang/Boolean;)V

    return-void
.end method
