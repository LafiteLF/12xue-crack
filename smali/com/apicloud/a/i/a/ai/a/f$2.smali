.class Lcom/apicloud/a/i/a/ai/a/f$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/ai/a/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/a/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/f$2;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/f$2;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/f;->b(Lcom/apicloud/a/i/a/ai/a/f;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/f;->a(Lcom/apicloud/a/i/a/ai/a/f;Z)V

    return-void
.end method
