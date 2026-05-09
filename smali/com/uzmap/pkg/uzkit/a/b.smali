.class public Lcom/uzmap/pkg/uzkit/a/b;
.super Lorg/json/JSONTokener;


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->b:Ljava/lang/Character;

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->c:Ljava/lang/Character;

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/a;->i:Ljava/lang/Character;

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(C)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/uzmap/pkg/uzkit/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Missing \';\' in XML entity: &"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Unclosed CDATA"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_6

    move v4, v2

    :cond_0
    :goto_1
    move v3, v2

    move v5, v4

    :goto_2
    const/4 v6, 0x1

    if-lt v3, v0, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    aget-char v7, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    move v3, v2

    :goto_3
    if-eqz v3, :cond_2

    return v6

    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    aput-char v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_0

    sub-int/2addr v4, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v0, :cond_5

    sub-int/2addr v5, v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v4

    if-nez v4, :cond_7

    return v2

    :cond_7
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x26

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->a(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->back()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_4

    const/16 v3, 0x21

    if-eq v0, v3, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->back()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->h:Ljava/lang/Character;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->e:Ljava/lang/Character;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->g:Ljava/lang/Character;

    return-object v0

    :cond_3
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->d:Ljava/lang/Character;

    return-object v0

    :cond_4
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->j:Ljava/lang/Character;

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v1

    if-eqz v1, :cond_6

    if-ne v1, v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_7
    const-string v0, "Misshaped meta tag"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_b

    const/16 v1, 0x27

    if-eq v0, v1, :cond_7

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_6

    const/16 v3, 0x21

    if-eq v0, v3, :cond_5

    const/16 v4, 0x22

    if-eq v0, v4, :cond_7

    packed-switch v0, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_2

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->back()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :pswitch_1
    const-string v0, "Bad character in a name"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->h:Ljava/lang/Character;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->f:Ljava/lang/Character;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->e:Ljava/lang/Character;

    return-object v0

    :pswitch_5
    const-string v0, "Misplaced \'<\'"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_5
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->d:Ljava/lang/Character;

    return-object v0

    :cond_6
    sget-object v0, Lcom/uzmap/pkg/uzkit/a/a;->j:Ljava/lang/Character;

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/a/b;->next()C

    move-result v2

    if-eqz v2, :cond_a

    if-ne v2, v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v3, 0x26

    if-ne v2, v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzkit/a/b;->a(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_b
    const-string v0, "Misshaped element"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/a/b;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
