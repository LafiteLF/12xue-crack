.class Lcom/uzmap/pkg/b/b/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/n;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/n;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/n;I)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/n$1;->a:Lcom/uzmap/pkg/b/b/n;

    iput p2, p0, Lcom/uzmap/pkg/b/b/n$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n$1;->a:Lcom/uzmap/pkg/b/b/n;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/n;->a(Lcom/uzmap/pkg/b/b/n;)Lcom/uzmap/pkg/b/b/n$a;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/b/b/n$1;->b:I

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/b/b/n$a;->a(I)V

    return-void
.end method
