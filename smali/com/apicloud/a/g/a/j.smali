.class public Lcom/apicloud/a/g/a/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/apicloud/a/g/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/g/a/a;

    invoke-direct {v0}, Lcom/apicloud/a/g/a/a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    new-instance v0, Lcom/apicloud/a/g/a/d;

    invoke-direct {v0}, Lcom/apicloud/a/g/a/d;-><init>()V

    iput-object v0, p1, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    iget-object p1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/apicloud/a/g/a/a;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/apicloud/a/g/a/a;->d:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/apicloud/a/g/a/a;->g:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/apicloud/a/g/a/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private d()Z
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "}"

    invoke-static {v0, v1}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v2, "{"

    invoke-static {v1, v2}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "/*"

    invoke-static {v0, v1}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "*/"

    invoke-static {v1, v3}, Lcom/apicloud/a/g/a/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    const-string v1, "\\/\\*[^*]*\\*+([^/*][^*]*\\*+)*\\/"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/g/a/j;->b()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "keyframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v2, "@keyframes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "@-webkit-keyframes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "@-moz-keyframes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "@-ms-keyframes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "@-o-keyframes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v3, v3, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v8, v5

    move v7, v6

    :goto_2
    array-length v9, v3

    if-lt v7, v9, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    const-string v9, "{"

    if-nez v8, :cond_5

    aget-object v10, v3, v7

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    aget-object v8, v3, v7

    invoke-virtual {v4, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v6

    goto :goto_5

    :cond_5
    if-ne v8, v6, :cond_8

    aget-object v10, v3, v7

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v9, v3, v7

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    aget-object v9, v3, v7

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_4
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v5, v4, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/apicloud/a/g/a/h;

    invoke-direct {v0, v3}, Lcom/apicloud/a/g/a/h;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/apicloud/a/g/a/j;->f()V

    :cond_a
    return-void
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "@font-face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@font-face\\s+\\{[^}]+\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apicloud/a/g/a/f;

    invoke-direct {v3, v2}, Lcom/apicloud/a/g/a/f;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->f:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignored duplicate FontNode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/apicloud/a/g/a/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/apicloud/a/g/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/d/a;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/g/a/a;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/apicloud/a/g/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apicloud/a/g/a/a;->e:Z

    invoke-direct {p0}, Lcom/apicloud/a/g/a/j;->e()V

    invoke-direct {p0}, Lcom/apicloud/a/g/a/j;->f()V

    invoke-direct {p0}, Lcom/apicloud/a/g/a/j;->g()V

    invoke-virtual {p0}, Lcom/apicloud/a/g/a/j;->c()V

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apicloud/a/g/a/a;->e:Z

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->f:Ljava/util/ArrayList;

    const-string v1, "MalFormed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v0, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "\\/\\*[^*]+\\*\\/"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    const-string v3, "\\/\\*[^*]*\\*+([^/*][^*]*\\*+)*\\/"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    const-string v0, "[^{}]+\\{+[^}]+\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/apicloud/a/g/a/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apicloud/a/g/a/c;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v2, v1}, Lcom/apicloud/a/g/a/d;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v1}, Lcom/apicloud/a/g/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apicloud/a/g/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v1}, Lcom/apicloud/a/g/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apicloud/a/g/a/d;->b(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v3, v3, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v3, v2}, Lcom/apicloud/a/g/a/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/g/a/c;

    invoke-virtual {v3, v1}, Lcom/apicloud/a/g/a/c;->a(Lcom/apicloud/a/g/a/c;)V

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/a/g/a/d;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v1, v1, Lcom/apicloud/a/g/a/a;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Warning: duplicate CSS with diff attributes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->c:Lcom/apicloud/a/g/a/d;

    invoke-virtual {v2, v1}, Lcom/apicloud/a/g/a/d;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/g/a/j;->a:Lcom/apicloud/a/g/a/a;

    iget-object v2, v2, Lcom/apicloud/a/g/a/a;->f:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Warning : duplicate CSS: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apicloud/a/g/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apicloud/a/g/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/d/a;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
