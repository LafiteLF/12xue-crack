.class Lcom/uzmap/pkg/uzcore/h/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/t;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/t;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/t;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->a:Lcom/uzmap/pkg/uzcore/h/t;

    iput p2, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->b:I

    iput p3, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->c:I

    iput p4, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->d:I

    iput p5, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->a:Lcom/uzmap/pkg/uzcore/h/t;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/t;->a(Lcom/uzmap/pkg/uzcore/h/t;)Lcom/uzmap/pkg/uzcore/h/t$a;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->b:I

    iget v2, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->c:I

    iget v3, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->d:I

    iget v4, p0, Lcom/uzmap/pkg/uzcore/h/t$1;->e:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzcore/h/t$a;->a(IIII)V

    return-void
.end method
