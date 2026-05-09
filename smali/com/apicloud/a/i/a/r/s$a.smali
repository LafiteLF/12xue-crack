.class Lcom/apicloud/a/i/a/r/s$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/r/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/s;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/r/s;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/s$a;->a:Lcom/apicloud/a/i/a/r/s;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/s$a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/apicloud/a/i/a/r/s$a;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/r/s;Landroid/view/View;Landroid/view/View$OnClickListener;Lcom/apicloud/a/i/a/r/s$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/r/s$a;-><init>(Lcom/apicloud/a/i/a/r/s;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "ldx"

    const-string v0, "onContextClick: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "ldx"

    const-string v0, "onDown: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "ldx"

    const-string v0, "onSingleTapConfirmed: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "ldx"

    const-string v0, "onSingleTapUp: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/s$a;->c:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
