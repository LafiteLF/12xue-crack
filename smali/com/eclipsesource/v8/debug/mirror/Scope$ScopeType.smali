.class public final enum Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/debug/mirror/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScopeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Block:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum Catch:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum Closure:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field private static final synthetic ENUM$VALUES:[Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum Global:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum Local:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum Script:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

.field public static final enum With:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v1, 0x0

    const-string v2, "Global"

    invoke-direct {v0, v2, v1, v1}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Global:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v2, 0x1

    const-string v3, "Local"

    invoke-direct {v0, v3, v2, v2}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Local:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v3, 0x2

    const-string v4, "With"

    invoke-direct {v0, v4, v3, v3}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->With:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v4, 0x3

    const-string v5, "Closure"

    invoke-direct {v0, v5, v4, v4}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Closure:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v5, 0x4

    const-string v6, "Catch"

    invoke-direct {v0, v6, v5, v5}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Catch:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v6, 0x5

    const-string v7, "Block"

    invoke-direct {v0, v7, v6, v6}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Block:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    new-instance v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v7, 0x6

    const-string v8, "Script"

    invoke-direct {v0, v8, v7, v7}, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Script:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    sget-object v9, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Global:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Local:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->With:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Closure:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Catch:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->Block:Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;
    .locals 1

    const-class v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    return-object p0
.end method

.method public static values()[Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;
    .locals 4

    sget-object v0, Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/eclipsesource/v8/debug/mirror/Scope$ScopeType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
