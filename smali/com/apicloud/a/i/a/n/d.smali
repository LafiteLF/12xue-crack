.class public Lcom/apicloud/a/i/a/n/d;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/n/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/n/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/n/a;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(I)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/n/b;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/n/d;->a:[I

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "aspectFit"

    return-object p1

    :cond_1
    const-string p1, "aspectFill"

    return-object p1

    :cond_2
    const-string p1, "scaleToFill"

    return-object p1

    :cond_3
    const-string p1, "none"

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "src"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "placeholder"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/apicloud/a/i/a/n/a;->a:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "bottom right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->n:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_1
    const-string v0, "aspectFill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->c:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_2
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->j:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_3
    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->o:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_4
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->i:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_5
    const-string v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->f:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_6
    const-string v0, "bottom left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->m:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_7
    const-string v0, "scaleToFill"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->a:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_8
    const-string v0, "top left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->k:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_9
    const-string v0, "aspectFit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->b:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_a
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->h:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_b
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->g:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_c
    const-string v0, "widthFix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->d:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_d
    const-string v0, "heightFix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->e:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/a;)V

    return-void

    :sswitch_e
    const-string v0, "top right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_0

    :cond_f
    sget-object p2, Lcom/apicloud/a/i/a/n/a;->l:Lcom/apicloud/a/i/a/n/a;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/a;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x648e7c6f -> :sswitch_e
        -0x603b6292 -> :sswitch_d
        -0x52ae3791 -> :sswitch_c
        -0x527265d5 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x512e7f67 -> :sswitch_9
        -0x3d0fa40e -> :sswitch_8
        -0x2f85e778 -> :sswitch_7
        -0x27c76724 -> :sswitch_6
        0x1c155 -> :sswitch_5
        0x32a007 -> :sswitch_4
        0x33af38 -> :sswitch_3
        0x677c21c -> :sswitch_2
        0x2b5e91fb -> :sswitch_1
        0x2f30e3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method private e(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "tintColor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/b/c;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "thumbnail"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Z)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "policy"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->getWidth()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/d;->b(Lcom/apicloud/a/i/a/n/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->getHeight()I

    move-result p1

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_3
        0x1bde4 -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->f(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "tintColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->e(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "placeholder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->c(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->d(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "src"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->b(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/n/d;->g(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3a925ace -> :sswitch_5
        0x1bde4 -> :sswitch_4
        0x3339a3 -> :sswitch_3
        0x23a88573 -> :sswitch_2
        0x4f219128 -> :sswitch_1
        0x4f4e50ec -> :sswitch_0
    .end sparse-switch
.end method
