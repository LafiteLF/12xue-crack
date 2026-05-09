.class Lcom/deepe/a/g/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a/a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a/a;


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$2;->a:Lcom/deepe/a/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a$2;)Lcom/deepe/a/g/a/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a$2;->a:Lcom/deepe/a/g/a/a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v0, Lcom/deepe/a/g/a/a$2$1;

    invoke-direct {v0, p0}, Lcom/deepe/a/g/a/a$2$1;-><init>(Lcom/deepe/a/g/a/a$2;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$2;->a:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->c(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$2;->a:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->c(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/deepe/a/g/a/a$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
