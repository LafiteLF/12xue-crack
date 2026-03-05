.class Lcom/deepe/c/c/a/a/j$j;
.super Lcom/deepe/c/c/a/a/j$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/deepe/c/c/a/a/j;


# direct methods
.method private constructor <init>(Lcom/deepe/c/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$j;->b:Lcom/deepe/c/c/a/a/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j$i;-><init>(Lcom/deepe/c/c/a/a/j$i;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepe/c/c/a/a/j$j;->a:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/c/a/a/j;Lcom/deepe/c/c/a/a/j$j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j$j;-><init>(Lcom/deepe/c/c/a/a/j;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/j$j;->a:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$j;->b:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v2

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-static {v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$j;->a:F

    return-void
.end method
