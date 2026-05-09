.class public Lcom/deepe/c/c/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a$a;,
        Lcom/deepe/c/c/a/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/deepe/c/c/a/a;

.field public static final b:Lcom/deepe/c/c/a/a;

.field public static final c:Lcom/deepe/c/c/a/a;

.field public static final d:Lcom/deepe/c/c/a/a;

.field public static final e:Lcom/deepe/c/c/a/a;

.field public static final f:Lcom/deepe/c/c/a/a;

.field public static final g:Lcom/deepe/c/c/a/a;

.field public static final h:Lcom/deepe/c/c/a/a;

.field public static final i:Lcom/deepe/c/c/a/a;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final j:Lcom/deepe/c/c/a/a$a;

.field private final k:Lcom/deepe/c/c/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    new-instance v0, Lcom/deepe/c/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->a:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v2, Lcom/deepe/c/c/a/a$a;->a:Lcom/deepe/c/c/a/a$a;

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->b:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->f:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->c:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->b:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->d:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->j:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->e:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->c:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->f:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->i:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->g:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->f:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->h:Lcom/deepe/c/c/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->b:Lcom/deepe/c/c/a/a$a;

    sget-object v2, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    sput-object v0, Lcom/deepe/c/c/a/a;->i:Lcom/deepe/c/c/a/a;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->a:Lcom/deepe/c/c/a/a$a;

    const-string v2, "none"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->b:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMinYMin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->c:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMidYMin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->d:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMaxYMin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->e:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMinYMid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->f:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMidYMid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->g:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMaxYMid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->h:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMinYMax"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->i:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMidYMax"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/deepe/c/c/a/a$a;->j:Lcom/deepe/c/c/a/a$a;

    const-string v2, "xMaxYMax"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a;->j:Lcom/deepe/c/c/a/a$a;

    iput-object p2, p0, Lcom/deepe/c/c/a/a;->k:Lcom/deepe/c/c/a/a$b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/deepe/c/c/a/a;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a;->b(Ljava/lang/String;)Lcom/deepe/c/c/a/a;

    move-result-object p0
    :try_end_0
    .catch Lcom/deepe/c/c/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/deepe/c/c/a/e;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Lcom/deepe/c/c/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lcom/deepe/c/c/a/a;->l:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x331447

    if-eq v2, v3, :cond_1

    const v3, 0x6873d92

    if-ne v2, v3, :cond_2

    const-string v2, "slice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/deepe/c/c/a/a$b;->b:Lcom/deepe/c/c/a/a$b;

    goto :goto_0

    :cond_1
    const-string v2, "meet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/deepe/c/c/a/a$b;->a:Lcom/deepe/c/c/a/a$b;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid preserveAspectRatio definition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    new-instance p0, Lcom/deepe/c/c/a/a;

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/a/a;-><init>(Lcom/deepe/c/c/a/a$a;Lcom/deepe/c/c/a/a$b;)V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/deepe/c/c/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a;->j:Lcom/deepe/c/c/a/a$a;

    return-object v0
.end method

.method public b()Lcom/deepe/c/c/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a;->k:Lcom/deepe/c/c/a/a$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/deepe/c/c/a/a;

    iget-object v2, p0, Lcom/deepe/c/c/a/a;->j:Lcom/deepe/c/c/a/a$a;

    iget-object v3, p1, Lcom/deepe/c/c/a/a;->j:Lcom/deepe/c/c/a/a$a;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/deepe/c/c/a/a;->k:Lcom/deepe/c/c/a/a$b;

    iget-object p1, p1, Lcom/deepe/c/c/a/a;->k:Lcom/deepe/c/c/a/a$b;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a;->j:Lcom/deepe/c/c/a/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/a/a;->k:Lcom/deepe/c/c/a/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
