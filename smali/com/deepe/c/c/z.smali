.class public Lcom/deepe/c/c/z;
.super Lcom/deepe/c/i/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/i/l<",
        "Ljava/lang/String;",
        "Lcom/deepe/c/c/z$a;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/deepe/c/c/z;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/deepe/c/i/l;-><init>(I)V

    return-void
.end method

.method public static final a()Lcom/deepe/c/c/z;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/z;->a:Lcom/deepe/c/c/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/z;

    invoke-direct {v0}, Lcom/deepe/c/c/z;-><init>()V

    sput-object v0, Lcom/deepe/c/c/z;->a:Lcom/deepe/c/c/z;

    :cond_0
    sget-object v0, Lcom/deepe/c/c/z;->a:Lcom/deepe/c/c/z;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/deepe/c/c/z$a;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/c/z;->a(Ljava/lang/String;Lcom/deepe/c/c/z$a;)I

    move-result p1

    return p1
.end method

.method protected final a(Ljava/lang/String;Lcom/deepe/c/c/z$a;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/deepe/c/c/z$a;

    check-cast p4, Lcom/deepe/c/c/z$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/z;->a(ZLjava/lang/String;Lcom/deepe/c/c/z$a;Lcom/deepe/c/c/z$a;)V

    return-void
.end method

.method protected final a(ZLjava/lang/String;Lcom/deepe/c/c/z$a;Lcom/deepe/c/c/z$a;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/deepe/c/c/z$a;->a()V

    :cond_0
    return-void
.end method
