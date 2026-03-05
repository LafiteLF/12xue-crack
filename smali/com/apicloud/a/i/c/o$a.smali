.class Lcom/apicloud/a/i/c/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/apicloud/a/i/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/apicloud/a/c/l;

.field private final c:Lcom/apicloud/a/h/b;

.field private d:[F


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/apicloud/a/i/c/o$a;->d:[F

    iput-object p1, p0, Lcom/apicloud/a/i/c/o$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apicloud/a/i/c/o$a;->b:Lcom/apicloud/a/c/l;

    iput-object p3, p0, Lcom/apicloud/a/i/c/o$a;->c:Lcom/apicloud/a/h/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;Lcom/apicloud/a/i/c/o$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/c/o$a;-><init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/c/o$a;->b:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/c/o$a;->c:Lcom/apicloud/a/h/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->g(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/c/o$a;->d:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {p1}, Lcom/apicloud/a/i/c/q;->a(F)D

    move-result-wide v1

    iget-object p1, p0, Lcom/apicloud/a/i/c/o$a;->d:[F

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-static {p1}, Lcom/apicloud/a/i/c/q;->a(F)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "x"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/c/o$a;->b:Lcom/apicloud/a/c/l;

    iget-object v1, p0, Lcom/apicloud/a/i/c/o$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/c/o$a;->d:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    aput v1, p1, v0

    iget-object p1, p0, Lcom/apicloud/a/i/c/o$a;->d:[F

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aput p2, p1, v1

    :cond_0
    return v0
.end method
