.class final Lcom/apicloud/a/i/a/r/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/r/s$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/GestureDetector;

.field private final c:Lcom/apicloud/a/i/a/r/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ACTION_DOWN"

    const-string v1, "ACTION_UP"

    const-string v2, "ACTION_MOVE"

    const-string v3, "ACTION_CANCEL"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/r/s;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/a/r/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/apicloud/a/i/a/r/s$a;-><init>(Lcom/apicloud/a/i/a/r/s;Landroid/view/View;Landroid/view/View$OnClickListener;Lcom/apicloud/a/i/a/r/s$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/s;->c:Lcom/apicloud/a/i/a/r/s$a;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/s;->c:Lcom/apicloud/a/i/a/r/s$a;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/s;->b:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/apicloud/a/i/a/r/s;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldx"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/s;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
