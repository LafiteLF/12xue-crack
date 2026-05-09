.class Lcom/uzmap/pkg/uzcore/external/g$3;
.super Lcom/uzmap/pkg/uzcore/external/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/external/g;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/external/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$3;->a:Lcom/uzmap/pkg/uzcore/external/g;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/external/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/external/g$3;)Lcom/uzmap/pkg/uzcore/external/g;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/external/g$3;->a:Lcom/uzmap/pkg/uzcore/external/g;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/g$3$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/external/g$3$1;-><init>(Lcom/uzmap/pkg/uzcore/external/g$3;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method
