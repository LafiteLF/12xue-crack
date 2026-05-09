.class Lcom/deepe/c/f/j$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/f/j;

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/deepe/c/f/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/f/j$b;->a:Lcom/deepe/c/f/j;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/j$b;->setOrientation(I)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/deepe/c/f/j;->a(F)I

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/deepe/c/f/j$b;->setPadding(IIII)V

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/f/j$b;->b:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/f/j;Landroid/content/Context;Lcom/deepe/c/f/j$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/f/j$b;-><init>(Lcom/deepe/c/f/j;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/f/j$b;Lcom/deepe/c/f/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/f/j$b;->a(Lcom/deepe/c/f/l;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/f/j$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/f/j$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/deepe/c/f/l;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/f/j$a;

    iget-object v1, p0, Lcom/deepe/c/f/j$b;->a:Lcom/deepe/c/f/j;

    invoke-virtual {p0}, Lcom/deepe/c/f/j$b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/f/j$a;-><init>(Lcom/deepe/c/f/j;Landroid/content/Context;Lcom/deepe/c/f/j$a;)V

    iget-object v1, p1, Lcom/deepe/c/f/l;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepe/c/f/l;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/deepe/c/f/j$a;->a(Lcom/deepe/c/f/j$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/deepe/c/f/j$b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/deepe/c/f/j;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    invoke-virtual {v0, v1}, Lcom/deepe/c/f/j$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/f/j$b;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/deepe/c/f/j$b;->b:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/deepe/c/f/l;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j$b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/j$b;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j$b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/deepe/c/f/j$b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/f/j$b;->a()Z

    move-result p0

    return p0
.end method
