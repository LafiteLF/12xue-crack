.class public Lcom/apicloud/a/g/a/g;
.super Ljava/lang/Object;


# static fields
.field static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/GradientDrawable$Orientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[I

.field public b:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "tobottom"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "totop"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "toright"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "toleft"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "tobottomright"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "tobottomleft"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "totopright"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "totopleft"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/a/g;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Lcom/apicloud/a/g/a/g;->b:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object p1, p0, Lcom/apicloud/a/g/a/g;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    if-eqz p1, :cond_f

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_e

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_d

    const/16 v2, 0x87

    if-eq p1, v2, :cond_c

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_b

    const/16 v4, 0xe1

    if-eq p1, v4, :cond_a

    const/16 v5, 0x10e

    if-eq p1, v5, :cond_9

    const/16 v6, 0x13b

    if-eq p1, v6, :cond_8

    if-ge p1, v0, :cond_0

    goto :goto_7

    :cond_0
    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    goto :goto_6

    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    goto :goto_5

    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    goto :goto_4

    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    goto :goto_3

    :cond_4
    if-lt p1, v4, :cond_5

    if-ge p1, v5, :cond_5

    goto :goto_2

    :cond_5
    if-lt p1, v5, :cond_6

    if-ge p1, v6, :cond_6

    goto :goto_1

    :cond_6
    if-lt p1, v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    goto :goto_8

    :cond_8
    :goto_0
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_9
    :goto_1
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_a
    :goto_2
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_b
    :goto_3
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_c
    :goto_4
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_d
    :goto_5
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_e
    :goto_6
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_8

    :cond_f
    :goto_7
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_8
    if-eqz p1, :cond_10

    iput-object p1, p0, Lcom/apicloud/a/g/a/g;->b:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/a/g;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/apicloud/a/g/a/g;->b:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/a/g;->a:[I

    return-void
.end method
