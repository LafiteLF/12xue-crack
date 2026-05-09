.class Lcom/apicloud/a/i/c/q$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/c/q;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/c/q$a;->a:Lcom/apicloud/a/i/c/q;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/c/q;Lcom/apicloud/a/i/c/q$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/q$a;-><init>(Lcom/apicloud/a/i/c/q;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/c/q$a;->a:Lcom/apicloud/a/i/c/q;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/c/q;->a(Lcom/apicloud/a/i/c/q;Landroid/view/MotionEvent;)V

    return-void
.end method
