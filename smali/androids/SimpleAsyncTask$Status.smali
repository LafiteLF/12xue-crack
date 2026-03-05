.class public final enum Landroids/SimpleAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroids/SimpleAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroids/SimpleAsyncTask$Status;

.field public static final enum FINISHED:Landroids/SimpleAsyncTask$Status;

.field public static final enum PENDING:Landroids/SimpleAsyncTask$Status;

.field public static final enum RUNNING:Landroids/SimpleAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 151
    new-instance v0, Landroids/SimpleAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Landroids/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/SimpleAsyncTask$Status;->PENDING:Landroids/SimpleAsyncTask$Status;

    .line 152
    new-instance v0, Landroids/SimpleAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Landroids/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/SimpleAsyncTask$Status;->RUNNING:Landroids/SimpleAsyncTask$Status;

    .line 153
    new-instance v0, Landroids/SimpleAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Landroids/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroids/SimpleAsyncTask$Status;->FINISHED:Landroids/SimpleAsyncTask$Status;

    const/4 v4, 0x3

    new-array v4, v4, [Landroids/SimpleAsyncTask$Status;

    .line 150
    sget-object v5, Landroids/SimpleAsyncTask$Status;->PENDING:Landroids/SimpleAsyncTask$Status;

    aput-object v5, v4, v1

    sget-object v1, Landroids/SimpleAsyncTask$Status;->RUNNING:Landroids/SimpleAsyncTask$Status;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Landroids/SimpleAsyncTask$Status;->$VALUES:[Landroids/SimpleAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroids/SimpleAsyncTask$Status;
    .locals 1

    .line 150
    const-class v0, Landroids/SimpleAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroids/SimpleAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Landroids/SimpleAsyncTask$Status;
    .locals 1

    .line 150
    sget-object v0, Landroids/SimpleAsyncTask$Status;->$VALUES:[Landroids/SimpleAsyncTask$Status;

    invoke-virtual {v0}, [Landroids/SimpleAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroids/SimpleAsyncTask$Status;

    return-object v0
.end method
