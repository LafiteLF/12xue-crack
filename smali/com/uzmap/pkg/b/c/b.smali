.class public Lcom/uzmap/pkg/b/c/b;
.super Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method

.method public static a(Z)Lcom/uzmap/pkg/b/c/b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/c/b;

    if-eqz p0, :cond_0

    sget p0, Lcom/deepe/c/b/c;->a:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/deepe/c/b/c;->b:I

    :goto_0
    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/c/b;-><init>(I)V

    return-object v0
.end method
