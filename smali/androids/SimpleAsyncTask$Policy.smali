.class public final enum Landroids/SimpleAsyncTask$Policy;
.super Ljava/lang/Enum;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroids/SimpleAsyncTask$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroids/SimpleAsyncTask$Policy;

.field public static final enum FIFO:Landroids/SimpleAsyncTask$Policy;

.field public static final enum LIFO:Landroids/SimpleAsyncTask$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Landroids/SimpleAsyncTask$Policy;

    const/4 v1, 0x0

    const-string v2, "FIFO"

    invoke-direct {v0, v2, v1}, Landroids/SimpleAsyncTask$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/SimpleAsyncTask$Policy;->FIFO:Landroids/SimpleAsyncTask$Policy;

    new-instance v0, Landroids/SimpleAsyncTask$Policy;

    const/4 v2, 0x1

    const-string v3, "LIFO"

    invoke-direct {v0, v3, v2}, Landroids/SimpleAsyncTask$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/SimpleAsyncTask$Policy;->LIFO:Landroids/SimpleAsyncTask$Policy;

    const/4 v3, 0x2

    new-array v3, v3, [Landroids/SimpleAsyncTask$Policy;

    .line 49
    sget-object v4, Landroids/SimpleAsyncTask$Policy;->FIFO:Landroids/SimpleAsyncTask$Policy;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Landroids/SimpleAsyncTask$Policy;->$VALUES:[Landroids/SimpleAsyncTask$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroids/SimpleAsyncTask$Policy;
    .locals 1

    .line 49
    const-class v0, Landroids/SimpleAsyncTask$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroids/SimpleAsyncTask$Policy;

    return-object p0
.end method

.method public static values()[Landroids/SimpleAsyncTask$Policy;
    .locals 1

    .line 49
    sget-object v0, Landroids/SimpleAsyncTask$Policy;->$VALUES:[Landroids/SimpleAsyncTask$Policy;

    invoke-virtual {v0}, [Landroids/SimpleAsyncTask$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroids/SimpleAsyncTask$Policy;

    return-object v0
.end method
