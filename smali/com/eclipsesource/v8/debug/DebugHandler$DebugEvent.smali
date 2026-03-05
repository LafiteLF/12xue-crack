.class public final enum Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/debug/DebugHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AfterCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum AsyncTaskEvent:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum BeforeCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum Break:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum CompileError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field private static final synthetic ENUM$VALUES:[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum Exception:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum NewFunction:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum PromiseError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

.field public static final enum Undefined:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v1, 0x0

    const-string v2, "Undefined"

    invoke-direct {v0, v2, v1, v1}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Undefined:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v2, 0x1

    const-string v3, "Break"

    invoke-direct {v0, v3, v2, v2}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Break:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v3, 0x2

    const-string v4, "Exception"

    invoke-direct {v0, v4, v3, v3}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Exception:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v4, 0x3

    const-string v5, "NewFunction"

    invoke-direct {v0, v5, v4, v4}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->NewFunction:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v5, 0x4

    const-string v6, "BeforeCompile"

    invoke-direct {v0, v6, v5, v5}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->BeforeCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v6, 0x5

    const-string v7, "AfterCompile"

    invoke-direct {v0, v7, v6, v6}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->AfterCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v7, 0x6

    const-string v8, "CompileError"

    invoke-direct {v0, v8, v7, v7}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->CompileError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v8, 0x7

    const-string v9, "PromiseError"

    invoke-direct {v0, v9, v8, v8}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->PromiseError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    new-instance v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/16 v9, 0x8

    const-string v10, "AsyncTaskEvent"

    invoke-direct {v0, v10, v9, v9}, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->AsyncTaskEvent:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    sget-object v11, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Undefined:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v11, v10, v1

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Break:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v2

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->Exception:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v3

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->NewFunction:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v4

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->BeforeCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v5

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->AfterCompile:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v6

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->CompileError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v7

    sget-object v1, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->PromiseError:Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;
    .locals 1

    const-class v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    return-object p0
.end method

.method public static values()[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;
    .locals 4

    sget-object v0, Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;->ENUM$VALUES:[Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/eclipsesource/v8/debug/DebugHandler$DebugEvent;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
