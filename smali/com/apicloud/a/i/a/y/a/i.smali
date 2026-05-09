.class Lcom/apicloud/a/i/a/y/a/i;
.super Landroid/graphics/drawable/LevelListDrawable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/deepe/c/c/ad;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/apicloud/a/i/a/y/a/i;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/y/a/i;->a(Lcom/deepe/c/c/ad;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/y/a/i;->setLevel(I)Z

    return-void
.end method

.method final a(Lcom/deepe/c/c/ad;)V
    .locals 3

    iget v0, p1, Lcom/deepe/c/c/ad;->a:F

    float-to-int v0, v0

    iget v1, p1, Lcom/deepe/c/c/ad;->b:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/apicloud/a/i/a/y/a/i;->setBounds(IIII)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/i;->b:Lcom/deepe/c/c/ad;

    return-void
.end method
