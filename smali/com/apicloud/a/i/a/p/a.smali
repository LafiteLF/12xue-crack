.class public Lcom/apicloud/a/i/a/p/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/p/a;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/p/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/p/a;->c(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/p/a;->c(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/p/a;->b:Landroid/view/View;

    new-instance v0, Lcom/apicloud/a/i/a/p/a$1;

    const-class v1, Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/p/a$1;-><init>(Lcom/apicloud/a/i/a/p/a;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/p/a;->a:Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/p/a;->a:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/p/a;->b(Landroid/view/View;)V

    return-void
.end method
