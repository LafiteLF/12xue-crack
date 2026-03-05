.class Lcom/uzmap/pkg/uzcore/external/g$b;
.super Lcom/uzmap/pkg/uzcore/external/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/external/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static f:Landroid/widget/Toast;


# instance fields
.field e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/g$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/uzmap/pkg/uzcore/external/g;-><init>(Lcom/uzmap/pkg/uzcore/external/g$a;Lcom/uzmap/pkg/uzcore/external/g;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->e:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/widget/Toast;)V
    .locals 0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/g$b;->d()V

    sput-object p0, Lcom/uzmap/pkg/uzcore/external/g$b;->f:Landroid/widget/Toast;

    return-void
.end method

.method static d()V
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/external/g$b;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/uzmap/pkg/uzcore/external/g$b;->f:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->a:Lcom/uzmap/pkg/uzcore/external/g$a;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/external/g$a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->a:Lcom/uzmap/pkg/uzcore/external/g$a;

    iget-object v4, v4, Lcom/uzmap/pkg/uzcore/external/g$a;->a:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->a:Lcom/uzmap/pkg/uzcore/external/g$a;

    iget-object v3, v3, Lcom/uzmap/pkg/uzcore/external/g$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x50

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->a:Lcom/uzmap/pkg/uzcore/external/g$a;

    iget v5, v5, Lcom/uzmap/pkg/uzcore/external/g$a;->b:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/16 v3, 0x30

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/external/g$b;->a:Lcom/uzmap/pkg/uzcore/external/g$a;

    iget v5, v5, Lcom/uzmap/pkg/uzcore/external/g$a;->b:I

    if-ne v5, v1, :cond_2

    const/16 v3, 0x11

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    neg-int v4, v1

    :cond_2
    :goto_1
    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g$b;->a(Landroid/widget/Toast;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
