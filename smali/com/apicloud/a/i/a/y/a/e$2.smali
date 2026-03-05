.class Lcom/apicloud/a/i/a/y/a/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/a/e;

.field private final synthetic b:Lcom/apicloud/a/i/a/y/a/i;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;

.field private final synthetic d:Lcom/deepe/c/c/ad;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/y/a/e;Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/e$2;->a:Lcom/apicloud/a/i/a/y/a/e;

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/a/e$2;->b:Lcom/apicloud/a/i/a/y/a/i;

    iput-object p3, p0, Lcom/apicloud/a/i/a/y/a/e$2;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/apicloud/a/i/a/y/a/e$2;->d:Lcom/deepe/c/c/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/e$2;->a:Lcom/apicloud/a/i/a/y/a/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/e$2;->b:Lcom/apicloud/a/i/a/y/a/i;

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/e$2;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/apicloud/a/i/a/y/a/e$2;->d:Lcom/deepe/c/c/ad;

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/a/i/a/y/a/i;->a(Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/e$2;->b:Lcom/apicloud/a/i/a/y/a/i;

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/e$2;->d:Lcom/deepe/c/c/ad;

    invoke-static {v0, v1, v2}, Lcom/apicloud/a/i/a/y/a/e;->a(Landroid/widget/TextView;Lcom/apicloud/a/i/a/y/a/i;Lcom/deepe/c/c/ad;)V

    return-void
.end method
