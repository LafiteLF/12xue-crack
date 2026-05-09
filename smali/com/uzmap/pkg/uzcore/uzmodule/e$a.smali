.class Lcom/uzmap/pkg/uzcore/uzmodule/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/e$a;->c:Z

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/e$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/e$a;->c:Z

    return-void
.end method
