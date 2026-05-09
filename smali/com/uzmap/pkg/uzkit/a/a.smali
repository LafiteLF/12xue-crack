.class public Lcom/uzmap/pkg/uzkit/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "plainText"

.field public static final b:Ljava/lang/Character;

.field public static final c:Ljava/lang/Character;

.field public static final d:Ljava/lang/Character;

.field public static final e:Ljava/lang/Character;

.field public static final f:Ljava/lang/Character;

.field public static final g:Ljava/lang/Character;

.field public static final h:Ljava/lang/Character;

.field public static final i:Ljava/lang/Character;

.field public static final j:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->b:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->c:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->d:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->e:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->h:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->i:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->j:Ljava/lang/Character;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    :cond_3
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_4
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_5
    const/16 v1, 0x30

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    if-lt v0, v1, :cond_9

    const/16 v1, 0x39

    if-gt v0, v1, :cond_9

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_8
    return-object v0

    :catch_0
    :cond_9
    return-object p0
.end method

.method public static a()V
    .locals 1

    const-string v0, "plainText"

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/uzmap/pkg/uzkit/a/b;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->d:Ljava/lang/Character;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result p2

    const/16 v0, 0x2d

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p1, "-->"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->skipPast(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->back()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "CDATA"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result p2

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    sget-object p2, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return v3

    :cond_3
    const-string p1, "Expected \'CDATA[\'"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p2, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    if-ne p1, p2, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    if-ne p1, p2, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    :goto_2
    if-gtz v2, :cond_4

    return v3

    :cond_7
    const-string p1, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_8
    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->h:Ljava/lang/Character;

    if-ne v0, v1, :cond_9

    const-string p1, "?>"

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->j:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    if-ne p1, p2, :cond_a

    return v2

    :cond_a
    const-string p1, "Misshaped close tag"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mismatched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Mismatched close tag "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_d
    instance-of p2, v0, Ljava/lang/Character;

    const-string v1, "Misshaped tag"

    if-nez p2, :cond_1c

    check-cast v0, Ljava/lang/String;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    :goto_3
    move-object v5, v4

    :goto_4
    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object v5

    :cond_e
    instance-of v6, v5, Ljava/lang/String;

    const-string v7, ""

    if-eqz v6, :cond_11

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/uzmap/pkg/uzkit/a/a;->e:Ljava/lang/Character;

    if-ne v6, v8, :cond_10

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_f

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/uzmap/pkg/uzkit/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_f
    const-string p1, "Missing value"

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {p2, v5, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v5, v6

    goto :goto_4

    :cond_11
    sget-object v4, Lcom/uzmap/pkg/uzkit/a/a;->j:Ljava/lang/Character;

    if-ne v5, v4, :cond_14

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    if-ne v2, v4, :cond_13

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_12

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_12
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    return v3

    :cond_13
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_14
    sget-object v4, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    if-ne v5, v4, :cond_1b

    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    if-nez v0, :cond_16

    return v3

    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unclosed tag "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_17
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_18

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    sget-object v4, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_18
    sget-object v4, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    if-ne v1, v4, :cond_15

    invoke-static {p0, p2, v0}, Lcom/uzmap/pkg/uzkit/a/a;->a(Lcom/uzmap/pkg/uzkit/a/b;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_19

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_19
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-ne p0, v2, :cond_1a

    sget-object p0, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_1a
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_7
    return v3

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/uzmap/pkg/uzkit/a/b;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzkit/a/b;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzkit/a/b;->more()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "<"

    invoke-virtual {v1, p0}, Lcom/uzmap/pkg/uzkit/a/b;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    invoke-static {v1, v0, p0}, Lcom/uzmap/pkg/uzkit/a/a;->a(Lcom/uzmap/pkg/uzkit/a/b;Lorg/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
