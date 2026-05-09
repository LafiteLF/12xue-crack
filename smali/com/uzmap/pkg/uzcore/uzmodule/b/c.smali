.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/c;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# static fields
.field static final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    const/16 v1, 0x3002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->g:I

    iput p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->f:I

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a()V

    return-void
.end method

.method static b(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private b()V
    .locals 4

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Lcom/deepe/b;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    sget-object v3, Lcom/deepe/b;->f:Ljava/lang/String;

    aput-object v3, v0, v1

    sget-object v1, Lcom/deepe/b;->z:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    sget-object v3, Lcom/deepe/b;->f:Ljava/lang/String;

    aput-object v3, v0, v1

    sget-object v1, Lcom/deepe/b;->z:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    move v2, v1

    :cond_1
    if-lt v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method protected a()V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->empty()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepe/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b()V

    return-void

    :cond_0
    sget-object v0, Lcom/deepe/b;->i:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {p0, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    const-string v0, "msg"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->g:I

    const-string v0, "buttons"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->f:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/a/c;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    :goto_0
    if-lt v3, v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/a/c;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b()V

    :goto_2
    return-void
.end method
