.class public final enum Lcom/deepe/c/c/a/a/o$k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/c/c/a/a/o$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/c/c/a/a/o$k;

.field public static final enum b:Lcom/deepe/c/c/a/a/o$k;

.field public static final enum c:Lcom/deepe/c/c/a/a/o$k;

.field public static final enum d:Lcom/deepe/c/c/a/a/o$k;

.field public static final enum e:Lcom/deepe/c/c/a/a/o$k;

.field private static final synthetic f:[Lcom/deepe/c/c/a/a/o$k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepe/c/c/a/a/o$k;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/deepe/c/c/a/a/o$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$k;->a:Lcom/deepe/c/c/a/a/o$k;

    new-instance v0, Lcom/deepe/c/c/a/a/o$k;

    const/4 v2, 0x1

    const-string v3, "Underline"

    invoke-direct {v0, v3, v2}, Lcom/deepe/c/c/a/a/o$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$k;->b:Lcom/deepe/c/c/a/a/o$k;

    new-instance v0, Lcom/deepe/c/c/a/a/o$k;

    const/4 v3, 0x2

    const-string v4, "Overline"

    invoke-direct {v0, v4, v3}, Lcom/deepe/c/c/a/a/o$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$k;->c:Lcom/deepe/c/c/a/a/o$k;

    new-instance v0, Lcom/deepe/c/c/a/a/o$k;

    const/4 v4, 0x3

    const-string v5, "LineThrough"

    invoke-direct {v0, v5, v4}, Lcom/deepe/c/c/a/a/o$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$k;->d:Lcom/deepe/c/c/a/a/o$k;

    new-instance v0, Lcom/deepe/c/c/a/a/o$k;

    const/4 v5, 0x4

    const-string v6, "Blink"

    invoke-direct {v0, v6, v5}, Lcom/deepe/c/c/a/a/o$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepe/c/c/a/a/o$k;->e:Lcom/deepe/c/c/a/a/o$k;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/deepe/c/c/a/a/o$k;

    sget-object v7, Lcom/deepe/c/c/a/a/o$k;->a:Lcom/deepe/c/c/a/a/o$k;

    aput-object v7, v6, v1

    sget-object v1, Lcom/deepe/c/c/a/a/o$k;->b:Lcom/deepe/c/c/a/a/o$k;

    aput-object v1, v6, v2

    sget-object v1, Lcom/deepe/c/c/a/a/o$k;->c:Lcom/deepe/c/c/a/a/o$k;

    aput-object v1, v6, v3

    sget-object v1, Lcom/deepe/c/c/a/a/o$k;->d:Lcom/deepe/c/c/a/a/o$k;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/deepe/c/c/a/a/o$k;->f:[Lcom/deepe/c/c/a/a/o$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/o$k;
    .locals 1

    const-class v0, Lcom/deepe/c/c/a/a/o$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/a/a/o$k;

    return-object p0
.end method

.method public static values()[Lcom/deepe/c/c/a/a/o$k;
    .locals 4

    sget-object v0, Lcom/deepe/c/c/a/a/o$k;->f:[Lcom/deepe/c/c/a/a/o$k;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/c/c/a/a/o$k;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
