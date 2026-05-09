.class public Lcom/apicloud/c/b/c;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:[I


# direct methods
.method public static a(Ljava/lang/String;)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/third/yoga/YogaValue;->parse(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p0

    iget p0, p0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    return p0
.end method

.method public static final a(Lcom/apicloud/third/yoga/YogaPositionType;)I
    .locals 3

    invoke-static {}, Lcom/apicloud/c/b/c;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaPositionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(I)Lcom/apicloud/third/yoga/YogaFlexDirection;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaFlexDirection;->COLUMN_REVERSE:Lcom/apicloud/third/yoga/YogaFlexDirection;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaFlexDirection;->COLUMN:Lcom/apicloud/third/yoga/YogaFlexDirection;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaFlexDirection;->ROW_REVERSE:Lcom/apicloud/third/yoga/YogaFlexDirection;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaFlexDirection;->ROW:Lcom/apicloud/third/yoga/YogaFlexDirection;

    :goto_1
    return-object p0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/apicloud/c/b/c;->a:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apicloud/third/yoga/YogaPositionType;->values()[Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apicloud/third/yoga/YogaPositionType;->ABSOLUTE:Lcom/apicloud/third/yoga/YogaPositionType;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaPositionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/apicloud/third/yoga/YogaPositionType;->RELATIVE:Lcom/apicloud/third/yoga/YogaPositionType;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaPositionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/apicloud/third/yoga/YogaPositionType;->STATIC:Lcom/apicloud/third/yoga/YogaPositionType;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaPositionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/apicloud/c/b/c;->a:[I

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/third/yoga/YogaValue;->parse(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Lcom/apicloud/third/yoga/YogaWrap;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP_REVERSE:Lcom/apicloud/third/yoga/YogaWrap;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaWrap;->NO_WRAP:Lcom/apicloud/third/yoga/YogaWrap;

    :goto_1
    return-object p0
.end method

.method public static c(I)Lcom/apicloud/third/yoga/YogaEdge;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(I)Lcom/apicloud/third/yoga/YogaAlign;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->STRETCH:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->CENTER:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_END:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_START:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->AUTO:Lcom/apicloud/third/yoga/YogaAlign;

    :goto_1
    return-object p0
.end method

.method public static e(I)Lcom/apicloud/third/yoga/YogaAlign;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->AUTO:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->STRETCH:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->BASELINE:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->CENTER:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_END:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_START:Lcom/apicloud/third/yoga/YogaAlign;

    :goto_1
    return-object p0
.end method

.method public static f(I)Lcom/apicloud/third/yoga/YogaJustify;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->SPACE_EVENLY:Lcom/apicloud/third/yoga/YogaJustify;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->SPACE_AROUND:Lcom/apicloud/third/yoga/YogaJustify;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->SPACE_BETWEEN:Lcom/apicloud/third/yoga/YogaJustify;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->CENTER:Lcom/apicloud/third/yoga/YogaJustify;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->FLEX_END:Lcom/apicloud/third/yoga/YogaJustify;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaJustify;->FLEX_START:Lcom/apicloud/third/yoga/YogaJustify;

    :goto_1
    return-object p0
.end method

.method public static g(I)Lcom/apicloud/third/yoga/YogaAlign;
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->AUTO:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :pswitch_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->STRETCH:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->SPACE_AROUND:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :pswitch_3
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->SPACE_BETWEEN:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :pswitch_4
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->CENTER:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :pswitch_5
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_END:Lcom/apicloud/third/yoga/YogaAlign;

    goto :goto_1

    :goto_0
    :pswitch_6
    sget-object p0, Lcom/apicloud/third/yoga/YogaAlign;->FLEX_START:Lcom/apicloud/third/yoga/YogaAlign;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final h(I)Lcom/apicloud/third/yoga/YogaOverflow;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaOverflow;->SCROLL:Lcom/apicloud/third/yoga/YogaOverflow;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/apicloud/third/yoga/YogaOverflow;->HIDDEN:Lcom/apicloud/third/yoga/YogaOverflow;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaOverflow;->VISIBLE:Lcom/apicloud/third/yoga/YogaOverflow;

    :goto_1
    return-object p0
.end method

.method public static final i(I)Lcom/apicloud/third/yoga/YogaDisplay;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaDisplay;->NONE:Lcom/apicloud/third/yoga/YogaDisplay;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaDisplay;->FLEX:Lcom/apicloud/third/yoga/YogaDisplay;

    :goto_1
    return-object p0
.end method

.method public static final j(I)Lcom/apicloud/third/yoga/YogaPositionType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaPositionType;->ABSOLUTE:Lcom/apicloud/third/yoga/YogaPositionType;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/apicloud/third/yoga/YogaPositionType;->RELATIVE:Lcom/apicloud/third/yoga/YogaPositionType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/apicloud/third/yoga/YogaPositionType;->STATIC:Lcom/apicloud/third/yoga/YogaPositionType;

    :goto_1
    return-object p0
.end method
