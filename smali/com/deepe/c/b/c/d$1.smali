.class Lcom/deepe/c/b/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/c/d;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/c/d$1;->a:Lcom/deepe/c/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/c/d$1;->a:Lcom/deepe/c/b/c/d;

    invoke-virtual {p1}, Lcom/deepe/c/b/c/d;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/c/d$1;->a:Lcom/deepe/c/b/c/d;

    invoke-virtual {p1, p2, p3, p4}, Lcom/deepe/c/b/c/d;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/c/d$1;->a:Lcom/deepe/c/b/c/d;

    invoke-virtual {p1, p2}, Lcom/deepe/c/b/c/d;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
