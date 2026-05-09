.class public Lcom/deepe/c/c/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Float;

.field static final b:Ljava/lang/Float;


# instance fields
.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/b;->a:Ljava/lang/Float;

    const/high16 v0, -0x3ea00000    # -14.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/b;->b:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/c/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/b$a;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->w()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance v1, Lcom/deepe/c/c/a/a/b$a;

    invoke-direct {v1, v0, p0}, Lcom/deepe/c/c/a/a/b$a;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method static a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/b;
    .locals 5

    new-instance v0, Lcom/deepe/c/c/a/a/b;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/b;-><init>()V

    new-instance v1, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v1, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    const-string p0, "normal"

    invoke-virtual {v1, p0}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/c/a/a/b;->a(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/b$a;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    iget-object v3, v0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/deepe/c/c/a/a/b$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/deepe/c/c/a/a/b$a;->b:Ljava/lang/Float;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
