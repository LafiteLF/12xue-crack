.class Lcom/deepe/c/c/a/a/d$r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# static fields
.field private static synthetic e:[I


# instance fields
.field a:Lcom/deepe/c/c/a/a/d$c;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/d$c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepe/c/c/a/a/d$c;->a:Lcom/deepe/c/c/a/a/d$c;

    :goto_0
    iput-object p1, p0, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    iput-object p2, p0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/d$r;->e:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/a/a/d$b;->values()[Lcom/deepe/c/c/a/a/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->d:Lcom/deepe/c/c/a/a/d$b;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->b:Lcom/deepe/c/c/a/a/d$b;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->a:Lcom/deepe/c/c/a/a/d$b;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/c/a/a/d$b;->c:Lcom/deepe/c/c/a/a/d$b;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/deepe/c/c/a/a/d$r;->e:[I

    return-object v0
.end method


# virtual methods
.method a(Lcom/deepe/c/c/a/a/d$e;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    new-instance v1, Lcom/deepe/c/c/a/a/d$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/deepe/c/c/a/a/d$a;-><init>(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v2, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    if-ne v1, v2, :cond_0

    const-string v1, "> "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v2, Lcom/deepe/c/c/a/a/d$c;->c:Lcom/deepe/c/c/a/a/d$c;

    if-ne v1, v2, :cond_1

    const-string v1, "+ "

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "*"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_6

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/d$a;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/deepe/c/c/a/a/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/c/c/a/a/d$r;->a()[I

    move-result-object v3

    iget-object v4, v2, Lcom/deepe/c/c/a/a/d$a;->b:Lcom/deepe/c/c/a/a/d$b;

    invoke-virtual {v4}, Lcom/deepe/c/c/a/a/d$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    goto :goto_5

    :cond_4
    const-string v3, "|="

    goto :goto_3

    :cond_5
    const-string v3, "~="

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v2, v2, Lcom/deepe/c/c/a/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/d$e;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
