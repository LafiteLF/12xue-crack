.class final Lcom/apicloud/a/i/a/u/a/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final a:Lcom/apicloud/a/i/a/u/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/e;->a:Lcom/apicloud/a/i/a/u/a/d;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/e;->a:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/u/a/d;->a(F)V

    const/4 p1, 0x1

    return p1
.end method
