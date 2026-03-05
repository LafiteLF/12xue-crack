.class public Lcom/deepe/c/c/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/deepe/c/c/a/a/a;

.field public static final b:Lcom/deepe/c/c/a/a/a;

.field static c:Lcom/deepe/c/c/a/a/a;

.field static d:Lcom/deepe/c/c/a/a/a;

.field static e:Lcom/deepe/c/c/a/a/a;

.field static f:Lcom/deepe/c/c/a/a/a;

.field static g:Lcom/deepe/c/c/a/a/a;

.field private static h:Lcom/deepe/c/c/a/a/a;

.field private static i:Lcom/deepe/c/c/a/a/a;


# instance fields
.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/deepe/c/c/a/a/a;->b()Lcom/deepe/c/c/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/c/a/a/a;->a:Lcom/deepe/c/c/a/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Ljava/util/HashMap;)V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    sput-object v1, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "liga"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v2, "clig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dlig"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "hlig"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "calt"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "subs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "sups"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "smcp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "c2sc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "pcap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "c2pc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "unic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "titl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "lnum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "onum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "pnum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "tnum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "frac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "afrc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "ordn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "zero"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "jp78"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "jp83"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "jp90"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "jp04"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "smpl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "trad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "fwid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "pwid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v1, "ruby"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/c/a/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/a$a;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/deepe/c/c/a/a/p;->a(Z)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "off"

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v2, "on"

    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/p;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    :goto_0
    new-instance p0, Lcom/deepe/c/c/a/a/a$a;

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/c/a/a/a$a;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a()Lcom/deepe/c/c/a/a/a;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smcp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "c2sc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pcap"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "c2pc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "unic"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "titl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/deepe/c/c/a/a/a;->i:Lcom/deepe/c/c/a/a/a;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 4

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    new-instance v1, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v1, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->i()V

    :goto_0
    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/p;)Lcom/deepe/c/c/a/a/a$a;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/a$a;->a:Ljava/lang/String;

    iget p0, p0, Lcom/deepe/c/c/a/a/a$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/p;->j()Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/c/a/a/a;"
        }
    .end annotation

    invoke-static {}, Lcom/deepe/c/c/a/a/a;->c()V

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    const-string v1, "common-ligatures"

    const-string v2, "no-common-ligatures"

    invoke-static {p0, v1, v2}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "liga"

    const-string v3, "clig"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    move v1, v6

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_1
    invoke-direct {v0, v3, v2, v6}, Lcom/deepe/c/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {v0, v3, v2, v7}, Lcom/deepe/c/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    move v1, v7

    :goto_1
    const-string v2, "discretionary-ligatures"

    const-string v3, "no-discretionary-ligatures"

    invoke-static {p0, v2, v3}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "dlig"

    if-eq v2, v7, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_4
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v7

    :goto_3
    const-string v2, "historical-ligatures"

    const-string v3, "no-historical-ligatures"

    invoke-static {p0, v2, v3}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "hlig"

    if-eq v2, v7, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    goto :goto_5

    :cond_6
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_7
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v7

    :goto_5
    const-string v2, "contextual"

    const-string v3, "no-contextual"

    invoke-static {p0, v2, v3}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v2, "calt"

    if-eq p0, v7, :cond_b

    if-eq p0, v5, :cond_a

    if-eq p0, v4, :cond_9

    move v7, v1

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_a
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_b
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private static varargs a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v3, p1, v2

    if-nez v1, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "ERR"

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static a(Lcom/deepe/c/c/a/a/o;Ljava/lang/String;)V
    .locals 9

    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, 0x1f0000000000L

    if-eqz v0, :cond_0

    sget-object p1, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    :goto_0
    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    sget-object p1, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    sget-object p1, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    sget-object p1, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    sget-object p1, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    iget-wide v3, p0, Lcom/deepe/c/c/a/a/o;->a:J

    or-long v0, v3, v1

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    return-void

    :cond_0
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepe/c/c/a/a/a;->c()V

    sget-object p1, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->b(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v1

    sget-object v3, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-ne v1, v3, :cond_5

    return-void

    :cond_4
    move-object v1, v2

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->c(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v3

    sget-object v4, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-ne v3, v4, :cond_7

    return-void

    :cond_6
    move-object v3, v2

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->d(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v4

    sget-object v5, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-ne v4, v5, :cond_9

    return-void

    :cond_8
    move-object v4, v2

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-static {p1}, Lcom/deepe/c/c/a/a/a;->e(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v2

    sget-object p1, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-ne v2, p1, :cond_a

    return-void

    :cond_a
    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/deepe/c/c/a/a/o;->R:Lcom/deepe/c/c/a/a/a;

    iget-wide v5, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v7, 0x10000000000L

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/deepe/c/c/a/a/o;->a:J

    :cond_b
    if-eqz v1, :cond_c

    iput-object v1, p0, Lcom/deepe/c/c/a/a/o;->S:Lcom/deepe/c/c/a/a/a;

    iget-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v5, 0x20000000000L

    or-long/2addr v0, v5

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    :cond_c
    if-eqz v3, :cond_d

    iput-object v3, p0, Lcom/deepe/c/c/a/a/o;->T:Lcom/deepe/c/c/a/a/a;

    iget-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v5, 0x40000000000L

    or-long/2addr v0, v5

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    :cond_d
    if-eqz v4, :cond_e

    iput-object v4, p0, Lcom/deepe/c/c/a/a/o;->U:Lcom/deepe/c/c/a/a/a;

    iget-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v3, 0x80000000000L

    or-long/2addr v0, v3

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    :cond_e
    if-eqz v2, :cond_f

    iput-object v2, p0, Lcom/deepe/c/c/a/a/o;->V:Lcom/deepe/c/c/a/a/a;

    iget-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    const-wide v2, 0x100000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepe/c/c/a/a/o;->a:J

    :cond_f
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/deepe/c/c/a/a/a;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pcap"

    const-string v2, "smcp"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "small-caps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_1
    const-string v0, "all-petite-caps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "c2pc"

    invoke-direct {p0, v1, p1, v3}, Lcom/deepe/c/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_2
    const-string v0, "petite-caps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_3
    const-string v0, "unicase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string p1, "unic"

    goto :goto_0

    :sswitch_4
    const-string v0, "all-small-caps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "c2sc"

    invoke-direct {p0, v2, p1, v3}, Lcom/deepe/c/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_5
    const-string v0, "titling-caps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string p1, "titl"

    :goto_0
    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v3

    :goto_2
    const/4 p0, 0x0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x2ad90767 -> :sswitch_5
        -0x1a02986d -> :sswitch_4
        -0x111bb7e0 -> :sswitch_3
        -0x94589ad -> :sswitch_2
        0x45ef9827 -> :sswitch_1
        0x468813e7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final b()Lcom/deepe/c/c/a/a/a;
    .locals 4

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rlig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "liga"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "clig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "calt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "locl"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "ccmp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "mark"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v3, "mkmk"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/c/a/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    const-string v1, "sub"

    const-string v2, "super"

    invoke-static {p0, v1, v2}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_1
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sups"

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "subs"

    :goto_0
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$c;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df94319

    if-eq v0, v1, :cond_4

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_2

    const v1, 0x33af38

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepe/c/c/a/a/o$c;->c:Lcom/deepe/c/c/a/a/o$c;

    return-object p0

    :cond_2
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/o$c;->a:Lcom/deepe/c/c/a/a/o$c;

    return-object p0

    :cond_4
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Lcom/deepe/c/c/a/a/o$c;->b:Lcom/deepe/c/c/a/a/o$c;

    return-object p0
.end method

.method static c(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 3

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->c:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepe/c/c/a/a/a;->c()V

    sget-object p0, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Lcom/deepe/c/c/a/a/a;->c()V

    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-eq v1, v2, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/c/a/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    const-string v2, "small-caps"

    const-string v3, "all-small-caps"

    const-string v4, "petite-caps"

    const-string v5, "all-petite-caps"

    const-string v6, "unicase"

    const-string v7, "titling-caps"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ERR"

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0, p0}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;Ljava/lang/String;)Z

    return-object v0
.end method

.method private static c()V
    .locals 5

    sget-object v0, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "liga"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "clig"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dlig"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hlig"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "calt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/deepe/c/c/a/a/a;->h:Lcom/deepe/c/c/a/a/a;

    return-void
.end method

.method static d(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 4

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->d:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1be40

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x68b6f7b

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "super"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sups"

    goto :goto_1

    :cond_3
    const-string v1, "sub"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subs"

    :goto_1
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static d(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/c/a/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    const-string v1, "lining-nums"

    const-string v2, "oldstyle-nums"

    invoke-static {p0, v1, v2}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_1
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "onum"

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "lnum"

    :goto_0
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_1
    const-string v5, "proportional-nums"

    const-string v6, "tabular-nums"

    invoke-static {p0, v5, v6}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_5

    if-eq v5, v3, :cond_4

    if-eq v5, v2, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_4
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "tnum"

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "pnum"

    :goto_2
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_3
    const-string v5, "diagonal-fractions"

    const-string v6, "stacked-fractions"

    invoke-static {p0, v5, v6}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_7

    if-eq v5, v2, :cond_6

    goto :goto_5

    :cond_6
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_7
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "afrc"

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "frac"

    :goto_4
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_5
    const-string v2, "ordinal"

    invoke-static {p0, v2}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_9

    goto :goto_6

    :cond_9
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_a
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "ordn"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_6
    const-string v2, "slashed-zero"

    invoke-static {p0, v2}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    if-eq p0, v4, :cond_c

    if-eq p0, v3, :cond_b

    move v4, v1

    goto :goto_7

    :cond_b
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_c
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "zero"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method static e(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 2

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->e:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    invoke-static {v0, p0}, Lcom/deepe/c/c/a/a/a;->a(Lcom/deepe/c/c/a/a/a;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static e(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/c/a/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    sget-object v1, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    const-string v2, "jis78"

    const-string v3, "jis83"

    const-string v4, "jis90"

    const-string v5, "jis04"

    const-string v6, "simplified"

    const-string v7, "traditional"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "jis90"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "jp90"

    goto :goto_0

    :sswitch_1
    const-string v4, "jis83"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "jp83"

    goto :goto_0

    :sswitch_2
    const-string v4, "jis78"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "jp78"

    goto :goto_0

    :sswitch_3
    const-string v4, "jis04"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "jp04"

    goto :goto_0

    :sswitch_4
    const-string v4, "ERR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :sswitch_5
    const-string v4, "simplified"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "smpl"

    goto :goto_0

    :sswitch_6
    const-string v4, "traditional"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "trad"

    :goto_0
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    const-string v4, "full-width"

    const-string v5, "proportional-width"

    invoke-static {p0, v4, v5}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v2, :cond_a

    if-eq v4, v5, :cond_9

    const/4 v6, 0x3

    if-eq v4, v6, :cond_8

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_9
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "pwid"

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const-string v4, "fwid"

    :goto_3
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :goto_4
    const-string v4, "ruby"

    invoke-static {p0, v4}, Lcom/deepe/c/c/a/a/a;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    if-eq p0, v2, :cond_c

    if-eq p0, v5, :cond_b

    move v2, v1

    goto :goto_5

    :cond_b
    sget-object p0, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_c
    iget-object p0, v0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f6ad259 -> :sswitch_6
        -0x5513a4a8 -> :sswitch_5
        0x10d45 -> :sswitch_4
        0x6072c18 -> :sswitch_3
        0x6072cf5 -> :sswitch_2
        0x6072d0f -> :sswitch_1
        0x6072d2b -> :sswitch_0
    .end sparse-switch
.end method

.method static f(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 3

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->f:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->d(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-eq v1, v2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method static g(Ljava/lang/String;)Lcom/deepe/c/c/a/a/a;
    .locals 3

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/a/a/a;->g:Lcom/deepe/c/c/a/a/a;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/a/a/a;->e(Ljava/util/List;)Lcom/deepe/c/c/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/deepe/c/c/a/a/a;->b:Lcom/deepe/c/c/a/a/a;

    if-eq v1, v2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/p;->i()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a/o$c;)V
    .locals 2

    sget-object v0, Lcom/deepe/c/c/a/a/o$c;->c:Lcom/deepe/c/c/a/a/o$c;

    const-string v1, "kern"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/a;->j:Ljava/util/HashMap;

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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
