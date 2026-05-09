.class Lcom/deepe/c/b/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/b/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/b/a/b;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/b/a/b;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/b/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/deepe/c/b/a/b;->a(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/deepe/c/b/a/b;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    return-void
.end method
