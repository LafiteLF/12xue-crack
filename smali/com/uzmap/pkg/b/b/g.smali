.class public Lcom/uzmap/pkg/b/b/g;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/g$a;,
        Lcom/uzmap/pkg/b/b/g$b;,
        Lcom/uzmap/pkg/b/b/g$c;
    }
.end annotation


# static fields
.field static final b:I

.field private static h:Lcom/uzmap/pkg/b/b/g;


# instance fields
.field a:Landroid/content/Context;

.field private c:Lcom/uzmap/pkg/b/b/g$b;

.field private d:Lcom/uzmap/pkg/b/b/g$c;

.field private e:I

.field private f:I

.field private g:Lcom/uzmap/pkg/b/b/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/b/b/g;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, -0xe0e0f

    iput v0, p0, Lcom/uzmap/pkg/b/b/g;->e:I

    const v0, -0x19191a

    iput v0, p0, Lcom/uzmap/pkg/b/b/g;->f:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/g;->requestWindowFeature(I)Z

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/g;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/g;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/g;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/g;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/b/g;->h:Lcom/uzmap/pkg/b/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/g;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/b/b/g;->h:Lcom/uzmap/pkg/b/b/g;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/b/g;->h:Lcom/uzmap/pkg/b/b/g;

    return-object p0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/g;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/b/b/g$c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/b/b/g$c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uzmap/pkg/b/b/l;->a(Landroid/app/Activity;Lcom/uzmap/pkg/b/b/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/b/b/g$c;-><init>(Lcom/uzmap/pkg/b/b/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/b/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/g;->g:Lcom/uzmap/pkg/b/b/g$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/g$b;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/uzmap/pkg/b/b/g$b;-><init>(Lcom/uzmap/pkg/b/b/g;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/b/g$b;->a(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/g$b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/g$b;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/g$c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/b/b/g$c;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/b/b/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->c:Lcom/uzmap/pkg/b/b/g$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g$b;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684IP\u5730\u5740"

    :goto_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/uzmap/pkg/b/b/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u7aef\u53e3\u53f7"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/b/b/g;->g:Lcom/uzmap/pkg/b/b/g$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/b/b/g$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g$c;->c()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/b/b/g;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/g;->c()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/g;->d()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g;->d:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g$c;->b()V

    return-void
.end method
