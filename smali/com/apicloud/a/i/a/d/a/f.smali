.class abstract Lcom/apicloud/a/i/a/d/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/d/a/f$a;
    }
.end annotation


# instance fields
.field protected final b:Lcom/apicloud/a/i/a/d/a/f$a;

.field protected final c:Lcom/apicloud/a/i/a/d/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/f;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/d/a/f;->c:Lcom/apicloud/a/i/a/d/a/j;

    return-void
.end method


# virtual methods
.method abstract a(I)V
.end method

.method abstract a(Lcom/apicloud/a/i/a/d/a;)V
.end method

.method abstract a(Ljava/io/File;)V
.end method

.method abstract a(Z)V
.end method

.method abstract a()Z
.end method

.method abstract a(Lcom/apicloud/a/i/a/d/a/a;)Z
.end method

.method abstract b()V
.end method

.method abstract b(I)V
.end method

.method abstract c(I)V
.end method

.method abstract d()Z
.end method

.method abstract e()I
.end method

.method abstract f()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation
.end method

.method abstract g()Lcom/apicloud/a/i/a/d/a/a;
.end method

.method abstract h()Z
.end method

.method abstract i()I
.end method

.method abstract j()V
.end method

.method abstract m()V
.end method

.method p()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/f;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
