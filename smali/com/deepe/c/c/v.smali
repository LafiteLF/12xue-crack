.class public Lcom/deepe/c/c/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/deepe/c/c/v;

.field public static final b:Lcom/deepe/c/c/v;

.field public static final c:Lcom/deepe/c/c/v;

.field public static final d:Lcom/deepe/c/c/v;

.field public static final e:Lcom/deepe/c/c/v;

.field public static final f:Lcom/deepe/c/c/v;

.field public static final g:Lcom/deepe/c/c/v;


# instance fields
.field private final h:I

.field private final i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->a:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->b:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->c:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->d:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->e:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->f:Lcom/deepe/c/c/v;

    new-instance v0, Lcom/deepe/c/c/v;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    sput-object v0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/v;->h:I

    iput p2, p0, Lcom/deepe/c/c/v;->i:I

    return-void
.end method

.method public static final b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/v;->j:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/c/v;->j:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/v;->h:I

    invoke-static {v0}, Lcom/deepe/c/c/v;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/v;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/v;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/v;->h:I

    invoke-static {v0}, Lcom/deepe/c/c/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
