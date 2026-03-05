.class public Lcom/apicloud/a/i/a/y/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/y/a/a$a;,
        Lcom/apicloud/a/i/a/y/a/a$b;,
        Lcom/apicloud/a/i/a/y/a/a$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)F
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p0

    return p0

    :cond_1
    const-string v1, "px"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_2

    invoke-static {p0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    :catch_0
    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;ILcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;)Landroid/text/Spanned;
    .locals 8

    invoke-static {}, Lcom/deepe/c/i/u;->b()Lorg/xml/sax/XMLReader;

    move-result-object v5

    new-instance v7, Lcom/apicloud/a/i/a/y/a/h;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/apicloud/a/i/a/y/a/h;-><init>(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/a$b;Lcom/apicloud/a/i/a/y/a/a$c;Lcom/apicloud/a/i/a/y/a/a$a;Lorg/xml/sax/XMLReader;I)V

    invoke-virtual {v7}, Lcom/apicloud/a/i/a/y/a/h;->a()Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/deepe/c/i/u;->a()Z

    move-result v0

    return v0
.end method
