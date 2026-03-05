.class Lcom/deepe/c/c/n$1;
.super Lcom/deepe/c/i/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/n;->a(Landroid/content/Context;Lcom/deepe/c/c/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/i/l<",
        "Ljava/lang/String;",
        "Lcom/deepe/c/c/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/n;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/n;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/n$1;->a:Lcom/deepe/c/c/n;

    invoke-direct {p0, p2}, Lcom/deepe/c/i/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/deepe/c/c/m;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/c/n$1;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Lcom/deepe/c/c/m;)I
    .locals 0

    invoke-static {p2}, Lcom/deepe/c/c/n;->a(Lcom/deepe/c/c/m;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/deepe/c/c/m;

    check-cast p4, Lcom/deepe/c/c/m;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/n$1;->a(ZLjava/lang/String;Lcom/deepe/c/c/m;Lcom/deepe/c/c/m;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lcom/deepe/c/c/m;Lcom/deepe/c/c/m;)V
    .locals 0

    return-void
.end method
