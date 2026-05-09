.class public Lcom/apicloud/a/i/a/e/k;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/i/a/e/c/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/c/d;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 7

    const-string p4, "onSuccess"

    invoke-virtual {p3, p4}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lcom/apicloud/a/c/j;

    const-string p4, "onError"

    invoke-virtual {p3, p4}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lcom/apicloud/a/c/j;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "image"

    const/4 v6, 0x0

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p4, "loadImageData"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eclipsesource/v8/utils/TypedArray;

    if-eqz p2, :cond_1

    const-string p4, "width"

    invoke-virtual {p3, p4}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string p4, "height"

    invoke-virtual {p3, p4}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/eclipsesource/v8/utils/TypedArray;->getV8TypedArray()Lcom/eclipsesource/v8/V8TypedArray;

    move-result-object v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/eclipsesource/v8/V8TypedArray;IILcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    invoke-virtual {p2}, Lcom/eclipsesource/v8/utils/TypedArray;->getV8TypedArray()Lcom/eclipsesource/v8/V8TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8TypedArray;->close()V

    return-object v6

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.eclipsesource.v8.V8TypedArray"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    const-string p4, "loadImageBitmap"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p0, p2, p3}, Lcom/apicloud/a/i/a/e/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/e/c/d;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2, v4, v5}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    return-object v6

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Could not find ImageBitmap to create ImageBitmap from"

    aput-object p2, p1, v0

    invoke-virtual {v5, p1}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :sswitch_2
    const-string p4, "loadCanvas"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p2, p3}, Lcom/apicloud/a/i/a/e/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/e/b;

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2, v4, v5}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    return-object v6

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Could not find Canvas to create ImageBitmap from"

    aput-object p2, p1, v0

    invoke-virtual {v5, p1}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :sswitch_3
    const-string p4, "loadEncodedImage"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p3, v2}, Lcom/apicloud/a/c/y;->a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v5}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    :goto_0
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x2f3ae30d -> :sswitch_3
        -0x29379e22 -> :sswitch_2
        0x3bcda4 -> :sswitch_1
        0xfb8655f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/e/k;->a(Lcom/apicloud/a/i/a/e/c/d;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/k;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/c/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$imagebitmap"

    return-object v0
.end method

.method public a(Lcom/apicloud/a/i/a/e/c/d;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/c/d;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/c/d;
    .locals 9

    const-string p1, "rect"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "sx"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "sy"

    invoke-virtual {p1, v1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    const-string v3, "sw"

    invoke-virtual {p1, v3}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    const-string v4, "sh"

    invoke-virtual {p1, v4}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {v2, v0, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    const-string p1, "resizeWidth"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string p1, "resizeHeight"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string p1, "resizeQuality"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/i/a/e/c/d$a;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/c/d$a;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/apicloud/a/i/a/e/c/d$a;->b:Lcom/apicloud/a/i/a/e/c/d$a;

    :cond_1
    move-object v8, p1

    new-instance p1, Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/k;->b()Lcom/apicloud/a/d;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/apicloud/a/i/a/e/c/d;-><init>(Lcom/apicloud/a/d;Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/apicloud/a/i/a/e/c/d$a;)V

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/k;->a(Lcom/apicloud/a/i/a/e/c/d;)V

    return-void
.end method
