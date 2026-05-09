.class Lcom/uzmap/pkg/uzcore/f/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/f/b;->b(Lcom/uzmap/pkg/uzcore/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f/b;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/f/b;Lcom/uzmap/pkg/uzcore/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b$5;->a:Lcom/uzmap/pkg/uzcore/f/b;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/f/b$5;->b:Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b$5;->a:Lcom/uzmap/pkg/uzcore/f/b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/b$5;->b:Lcom/uzmap/pkg/uzcore/c;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/f/b;->a(Lcom/uzmap/pkg/uzcore/c;)V

    return-void
.end method
