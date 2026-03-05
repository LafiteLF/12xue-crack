.class Lcom/apicloud/a/i/d/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:F

.field final synthetic e:Lcom/apicloud/a/i/d/b/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/d/b/b;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/b$a;->e:Lcom/apicloud/a/i/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/apicloud/a/i/d/b/b$a;->a:F

    iput p3, p0, Lcom/apicloud/a/i/d/b/b$a;->b:F

    iput p4, p0, Lcom/apicloud/a/i/d/b/b$a;->c:F

    iput p5, p0, Lcom/apicloud/a/i/d/b/b$a;->d:F

    return-void
.end method
