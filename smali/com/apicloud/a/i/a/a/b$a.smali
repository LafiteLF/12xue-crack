.class Lcom/apicloud/a/i/a/a/b$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/c/l;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/a/b$a;->a:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/a/b$a;->a:Lcom/apicloud/a/c/l;

    const-string v0, "complete"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
