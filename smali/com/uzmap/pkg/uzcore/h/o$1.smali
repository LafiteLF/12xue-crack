.class Lcom/uzmap/pkg/uzcore/h/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/h/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/o;->b(Lcom/uzmap/pkg/uzcore/h/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/o;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/h/k;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/o;Lcom/uzmap/pkg/uzcore/h/k;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o$1;->a:Lcom/uzmap/pkg/uzcore/h/o;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h/o$1;->b:Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o$1;->a:Lcom/uzmap/pkg/uzcore/h/o;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o$1;->b:Lcom/uzmap/pkg/uzcore/h/k;

    invoke-static {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Lcom/uzmap/pkg/uzcore/h/o;Landroid/graphics/drawable/Drawable;Lcom/uzmap/pkg/uzcore/h/k;)V

    return-void
.end method
