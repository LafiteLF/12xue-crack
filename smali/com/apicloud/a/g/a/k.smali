.class Lcom/apicloud/a/g/a/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/a/k;->a:Ljava/util/ArrayList;

    const-string v0, "animation-timing-function,transition-timing-function,animation-iteration-count,animation-play-state,column-rule-color,column-rule-style,column-rule-width,marquee-play-count,box-ordinal-group,animation-name,animation-duration,animation-delay,animation-direction,backface-visibility,border-image,box-align,box-direction,box-flex,box-orient,box-pack,box-shadow,box-sizing,column-gap,column-rule,column-span,column-width,column-count,marquee-direction,marquee-speed,marquee-style,perspective-origin,transform-origin,transform-style,transition-property,transition-duration,transition-delay,@keyframes,animation,appearance,columns,perspective,transform,transition"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/apicloud/a/g/a/k;->a:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
