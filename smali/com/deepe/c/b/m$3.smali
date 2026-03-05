.class Lcom/deepe/c/b/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/b/m;->a(Landroid/view/View;Lcom/deepe/c/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/deepe/c/b/l;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/m$3;->a:Lcom/deepe/c/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/m$3;->a:Lcom/deepe/c/b/l;

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/b/l;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
